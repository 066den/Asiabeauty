// Подключаем Gulp и все необходимые библиотеки
var gulp           = require('gulp'),
		gutil          = require('gulp-util' ),
		sass           = require('gulp-sass'),
		browserSync    = require('browser-sync'),
		cleanCSS       = require('gulp-clean-css'),
		autoprefixer   = require('gulp-autoprefixer'),
		bourbon        = require('node-bourbon'),
		ftp            = require('vinyl-ftp');

// Обновление страниц сайта на локальном сервере
gulp.task('browser-sync', function() {
	browserSync({
		proxy: "asiabeauty.loc",
		notify: false
	});
});

// Компиляция stylesheet.css
gulp.task('sass', function() {
	return gulp.src('catalog/view/theme/asiabeauty/stylesheet/stylesheet.sass')
		.pipe(sass({
			includePaths: bourbon.includePaths
		}).on('error', sass.logError))
		.pipe(autoprefixer(['last 15 versions']))
		.pipe(cleanCSS())
		.pipe(gulp.dest('catalog/view/theme/asiabeauty/stylesheet/'))
		.pipe(browserSync.reload({stream: true}))
});

// Наблюдение за файлами
gulp.task('watch', ['sass', 'browser-sync'], function() {
	gulp.watch('catalog/view/theme/asiabeauty/stylesheet/stylesheet.sass', ['sass']);
	gulp.watch('catalog/view/theme/asiabeauty/template/**/*.tpl', browserSync.reload);
	gulp.watch('catalog/view/theme/asiabeauty/js/**/*.js', browserSync.reload);
	gulp.watch('catalog/view/theme/asiabeauty/libs/**/*', browserSync.reload);
});

// Выгрузка изменений на хостинг
gulp.task('deploy', function() {
	var conn = ftp.create({
		host:      '78.46.104.109',
		user:      'wm62010',
		password:  '1N47QA3Z9',
		parallel:  10,
		log: gutil.log
	});
	var globs = [
	'catalog/view/theme/asiabeauty/**'
	];
	return gulp.src(globs, {buffer: false})
	.pipe(conn.dest('/domains/profden.ru/public_html/asiabeauty/catalog/view/theme/asiabeauty/'));
});

gulp.task('default', ['watch']);
