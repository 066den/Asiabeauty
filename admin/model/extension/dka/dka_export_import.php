<?php
class ModelExtensionDkaDkaExportImport extends Model {

public function getProductsExcel($data = array()) {
		$products_excel = null;
		$sql = "";

		if($data['filter'] == 'filter'){
				switch ($data['filter_type']):
				case 'filter_category':
						$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',pc.product_id)) AS keyword FROM " . DB_PREFIX . "product_to_category pc LEFT JOIN " . DB_PREFIX . "product p ON (pc.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (pc.product_id = pd.product_id) WHERE ";
						$sql .= "pd.language_id = '" . $this->db->escape($data['language_id']) . "' AND pc.category_id = '" . $this->db->escape($data['filter_value']) . "'";
				break;
				case 'filter_price':
						$priceAr = explode(",", $data['filter_value']);
						$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id)) AS keyword FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' AND ";
						$sql .= "(p.price BETWEEN '" . $this->db->escape($priceAr[0]) . "' AND '" . $this->db->escape($priceAr[1]) . "')";
				break;
				case 'filter_status':
						$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id)) AS keyword FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' AND ";
						$sql .= "p.status = '" . $this->db->escape($data['filter_value']) . "'";
				break;
				case 'filter_count':
						$countAr = explode(",", $data['filter_value']);
						$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id)) AS keyword FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' AND ";
						$sql .= "(p.quantity BETWEEN '" . $this->db->escape($countAr[0]) . "' AND '" . $this->db->escape($countAr[1]) . "')";
				break;
				case 'filter_seo':
						$data['filter_value'] == 0 ? $seo = "" : $seo = "!";
						$sql = "SELECT DISTINCT *, pd.name AS pd_name FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "url_alias u ON (u.query = CONCAT('product_id=',p.product_id)) LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' AND  u.keyword " . $seo . "= ''";
				break;
				endswitch;
		}else{
				$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id)) AS keyword FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "'";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			$data['start'] < 0 ? $data['start'] = 0  : null;
			$data['limit'] < 1 ? $data['limit'] = 20 : null;

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);
    foreach ($query->rows as $result) {
		  	$product_id = (int)$result['product_id'];
        $queryCategory = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . $product_id . "'");
				$categoryString = "";
				if(count($queryCategory->rows)){
	        foreach ($queryCategory->rows as $resultCategory) {
	            $productsCategory[] = $resultCategory['category_id'];
	        }
	        if($productsCategory){
	          $f = 1;
	          foreach ($productsCategory as $category) {
	            $f < count($productsCategory) ? $categoryString .= $category."," : $categoryString .= $category;
	            $f++;
	          }
	        }
				}
				$queryImages = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image WHERE product_id = '" . (int)$product_id . "' ORDER BY sort_order ASC");
				$productsImages = null;
				if(count($queryImages->rows)){
					foreach ($queryImages->rows as $queryImage) {
							$productsImages[] = array(
									'product_image_id' => $queryImage['product_image_id'],
									'image' 		   		 => $queryImage['image'],
									'sort_order' 	   	 => $queryImage['sort_order'],
								);
					}
				}
        $products_excel[] = array(
        		'product_id' => $result['product_id'],
            'model' => htmlspecialchars_decode($result['model']),
            //'name' => $result['name'],
            'language_id' => (int)$data['language_id'],
            // PRODUCT DESCRIPTION
            'name'          	 => htmlspecialchars_decode($result['pd_name']),
    				'description'      => $result['description'],
    				'meta_title'       => htmlspecialchars_decode($result['meta_title']),
    				'meta_description' => htmlspecialchars_decode($result['meta_description']),
    				'meta_keyword'     => htmlspecialchars_decode($result['meta_keyword']),
    				'tag'              => $result['tag'],
            // ------------------------------------------------------
            'sku' => $result['sku'],
            'upc' => $result['upc'],
            'ean' => $result['ean'],
            'jan' => $result['jan'],
            'isbn' => $result['isbn'],
            'mpn' => $result['mpn'],
            'location' => $result['location'],
            'quantity' => $result['quantity'],
            'stock_status_id' => $result['stock_status_id'],
            'image' => $result['image'],
            'manufacturer_id' => $result['manufacturer_id'],
            'shipping' => $result['shipping'],
            'price' => $result['price'],
            'points' => $result['points'],
            'tax_class_id' => $result['tax_class_id'],
            'date_available' => $result['date_available'],
            'weight' => $result['weight'],
            'weight_class_id' => $result['weight_class_id'],
            'length' => $result['length'],
            'width' => $result['width'],
            'height' => $result['height'],
            'length_class_id' => $result['length_class_id'],
            'subtract' => $result['subtract'],
            'minimum' => $result['minimum'],
            'sort_order' => $result['sort_order'],
            'status' => $result['status'],
            'viewed' => $result['viewed'],
            'date_added' => $result['date_added'],
            'date_modified' => $result['date_modified'],
            'keyword' => $result['keyword'],
            'category' => $categoryString,
						'product_image' => $productsImages
        );
        $productsCategory = null;
		}
		return $products_excel;

}

public function getTestProductsExcel($data = array()) {

	$products_excel = null;
	$sql = "";
	$sql = "SELECT DISTINCT *, pd.name AS pd_name,(SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id)) AS keyword FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "'";
	$sql .= " LIMIT 1,1";

	$query = $this->db->query($sql);
	//echo '<br /><pre>',print_r($query->rows,1),'</pre><br />';
	foreach ($query->rows as $result) {

		for($i = 0; $i < $data['limit_test']; $i++){
			$product_id = (int)$result['product_id'];
			$queryCategory = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . $product_id . "'");
			$categoryString = "";
			if(count($queryCategory->rows)){
				foreach ($queryCategory->rows as $resultCategory) {
						$productsCategory[] = $resultCategory['category_id'];
				}
				if($productsCategory){
					$f = 1;
					foreach ($productsCategory as $category) {
						$f < count($productsCategory) ? $categoryString .= $category."," : $categoryString .= $category;
						$f++;
					}
				}
			}
			$queryImages = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image WHERE product_id = '" . (int)$product_id . "' ORDER BY sort_order ASC");
			$productsImages = null;
			if(count($queryImages->rows)){
				foreach ($queryImages->rows as $queryImage) {
						$productsImages[] = array(
								'product_image_id' => $queryImage['product_image_id'],
								'image' 		   		 => $queryImage['image'],
								'sort_order' 	   	 => $queryImage['sort_order'],
							);
				}
			}
			$products_excel[] = array(
					'product_id' => $result['product_id'],
					'model' => $result['model'],
					'language_id' => (int)$data['language_id'],
					// PRODUCT DESCRIPTION
					'name'          	 => $result['pd_name'],
					'description'      => $result['description'],
					'meta_title'       => $result['meta_title'],
					'meta_description' => $result['meta_description'],
					'meta_keyword'     => $result['meta_keyword'],
					'tag'              => $result['tag'],
					// ------------------------------------------------------
					'sku' => $result['sku'],
					'upc' => $result['upc'],
					'ean' => $result['ean'],
					'jan' => $result['jan'],
					'isbn' => $result['isbn'],
					'mpn' => $result['mpn'],
					'location' => $result['location'],
					'quantity' => $result['quantity'],
					'stock_status_id' => $result['stock_status_id'],
					'image' => $result['image'],
					'manufacturer_id' => $result['manufacturer_id'],
					'shipping' => $result['shipping'],
					'price' => $result['price'],
					'points' => $result['points'],
					'tax_class_id' => $result['tax_class_id'],
					'date_available' => $result['date_available'],
					'weight' => $result['weight'],
					'weight_class_id' => $result['weight_class_id'],
					'length' => $result['length'],
					'width' => $result['width'],
					'height' => $result['height'],
					'length_class_id' => $result['length_class_id'],
					'subtract' => $result['subtract'],
					'minimum' => $result['minimum'],
					'sort_order' => $result['sort_order'],
					'status' => $result['status'],
					'viewed' => $result['viewed'],
					'date_added' => $result['date_added'],
					'date_modified' => $result['date_modified'],
					'keyword' => $result['keyword'],
					'category' => $categoryString,
					'product_image' => $productsImages
			);
			$productsCategory = null;
		}
	}
	return $products_excel;
}

public function getCategoriesExcel($data = array()) {
		$category_excel = null;
		$sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, c1.parent_id, c1.sort_order FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category c1 ON (cp.category_id = c1.category_id) LEFT JOIN " . DB_PREFIX . "category c2 ON (cp.path_id = c2.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = '" . (int)$data['language_id'] . "' AND cd2.language_id = '" . $data['language_id'] . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND cd2.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY cp.category_id";

		$sort_data = array( 'name', 'sort_order' );

		isset($data['sort']) && in_array($data['sort'], $sort_data) ? $sql .= " ORDER BY " . $data['sort'] : $sql .= " ORDER BY sort_order" ;
		isset($data['order']) && ($data['order'] == 'DESC') ? $sql .= " DESC" : $sql .= " ASC" ;

		if (isset($data['start']) || isset($data['limit'])) {
				$data['start'] < 0 ? $data['start'] = 0  : null ;
				$data['limit'] < 1 ? $data['limit'] = 20 : null ;

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		foreach ($query->rows as $result) {

				$category_id = (int)$result['category_id'];
				$infoCategory = $this->getCategory($category_id, $data['language_id']);
				if(!count($infoCategory)){
					$infoCategory['name'] = '';
					$infoCategory['description'] = '';
					$infoCategory['status'] = '';
					$infoCategory['meta_title'] = '';
					$infoCategory['meta_description'] = '';
					$infoCategory['meta_keyword'] = '';
					$infoCategory['path'] = '';
					$infoCategory['keyword'] = '';
					$infoCategory['image'] = '';
					$infoCategory['top'] = '';
					$infoCategory['column'] = '';
					$infoCategory['language_id'] = '';
				}
				$storesCategory = $this->getCategoryStores($category_id);

	      $f = 1;
				$storieString = '';
	      foreach ($storesCategory as $storie) {
			      $f < count($storesCategory) ? $storieString .= $storie."," : $storieString .= $storie ;
			      $f++;
	      }

				$category_excel[] = array(
						'category_id' 		 => $result['category_id'],
						'parent_id'   		 => $result['parent_id'],
						'sort_order'  		 => $result['sort_order'],
						'name'  					 => $infoCategory['name'],
						'description' 		 => $infoCategory['description'],
						'status'  				 => $infoCategory['status'],
						'meta_title'  		 => $infoCategory['meta_title'],
						'meta_description' => $infoCategory['meta_description'],
						'meta_keyword'  	 => $infoCategory['meta_keyword'],
						'path'  					 => $infoCategory['path'],
						'keyword'  				 => $infoCategory['keyword'],
						'image' 				   => $infoCategory['image'],
						'top'  						 => $infoCategory['top'],
						'column' 					 => $infoCategory['column'],
						'language_id'  		 => $infoCategory['language_id'],
						'stores'	 				 => $storieString,
				);
		}
		return $category_excel;

}

public function getTotalProducts($data = array()) {
		$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)";

		$sql .= " WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND pd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (!empty($data['filter_model'])) {
			$sql .= " AND p.model LIKE '" . $this->db->escape($data['filter_model']) . "%'";
		}

		if (isset($data['filter_price']) && !is_null($data['filter_price'])) {
			$sql .= " AND p.price LIKE '" . $this->db->escape($data['filter_price']) . "%'";
		}

		if (isset($data['filter_quantity']) && !is_null($data['filter_quantity'])) {
			$sql .= " AND p.quantity = '" . (int)$data['filter_quantity'] . "'";
		}

		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND p.status = '" . (int)$data['filter_status'] . "'";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}

    public function getProductDescriptions($product_id) {
		$product_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_description WHERE product_id = '" . (int)$product_id . "'");

		foreach ($query->rows as $result) {
			$product_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'description'      => $result['description'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'tag'              => $result['tag']
			);
		}

		return $product_description_data;
	}

	public function getProductImages($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image WHERE product_id = '" . (int)$product_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}

	public function getProductRelated($product_id) {
		$product_related_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_related WHERE product_id = '" . (int)$product_id . "'");

		foreach ($query->rows as $result) {
			$product_related_data[] = $result['related_id'];
		}

		return $product_related_data;
	}

	public function getProductDownloads($product_id) {
		$product_download_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_download WHERE product_id = '" . (int)$product_id . "'");

		foreach ($query->rows as $result) {
			$product_download_data[] = $result['download_id'];
		}

		return $product_download_data;
	}

	public function getProductStores($product_id) {
		$product_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_store WHERE product_id = '" . (int)$product_id . "'");

		foreach ($query->rows as $result) {
			$product_store_data[] = $result['store_id'];
		}

		return $product_store_data;
	}

	public function getProductLayouts($product_id) {
		$product_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_layout WHERE product_id = '" . (int)$product_id . "'");

		foreach ($query->rows as $result) {
			$product_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $product_layout_data;
	}

	public function editProduct($product_id, $data, $language_id) {

		$product_is = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product WHERE product_id = '" . (int)$product_id . "'");
		if(!count($product_is->rows)){
			$product_is = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product_description WHERE product_id = '" . (int)$product_id . "'");
			if(!count($product_is->rows)){
				$this->cache->delete('product');
				return false;
				die();
			}
		}

		$sql_data = "";
		$comma = "";
		if(isset($data['model'])){ $sql_data .= "model = '" . $this->db->escape(htmlspecialchars($data['model'])) . "'"; $comma = ","; }
		if(isset($data['sku'])){ $sql_data .= $comma . " sku = '" . $this->db->escape($data['sku']) . "'"; $comma = ","; }
		if(isset($data['upc'])){ $sql_data .= $comma . " upc = '" . $this->db->escape($data['upc']) . "'"; $comma = ","; }
		if(isset($data['ean'])){ $sql_data .= $comma . " ean = '" . $this->db->escape($data['ean']) . "'"; $comma = ","; }
		if(isset($data['jan'])){ $sql_data .= $comma . " jan = '" . $this->db->escape($data['jan']) . "'"; $comma = ","; }
		if(isset($data['isbn'])){ $sql_data .= $comma . " isbn = '" . $this->db->escape($data['isbn']) . "'"; $comma = ","; }
		if(isset($data['mpn'])){ $sql_data .= $comma . " mpn = '" . $this->db->escape($data['mpn']) . "'"; $comma = ","; }
		if(isset($data['location'])){ $sql_data .= $comma . " location = '" . $this->db->escape($data['location']) . "'"; $comma = ","; }
		if(isset($data['quantity'])){ $sql_data .= $comma . " quantity = '" . (int)$this->db->escape($data['quantity']) . "'"; $comma = ","; }
		if(isset($data['minimum'])){ $sql_data .= $comma . " minimum = '" . (int)$this->db->escape($data['minimum']) . "'"; $comma = ","; }
		if(isset($data['subtract'])){ $sql_data .= $comma . " subtract = '" . (int)$this->db->escape($data['subtract']) . "'"; $comma = ","; }
		if(isset($data['stock_status_id'])){ $sql_data .= $comma . " stock_status_id = '" . (int)$this->db->escape($data['stock_status_id']) . "'"; $comma = ","; }
		if(isset($data['date_available'])){ $sql_data .= $comma . " date_available = '" . $this->db->escape($data['date_available']) . "'"; $comma = ","; }
		if(isset($data['manufacturer_id'])){ $sql_data .= $comma . " manufacturer_id = '" . (int)$this->db->escape($data['manufacturer_id']) . "'"; $comma = ","; }
		if(isset($data['shipping'])){ $sql_data .= $comma . " shipping = '" . (int)$this->db->escape($data['shipping']) . "'"; $comma = ","; }
		if(isset($data['price'])){ $sql_data .= $comma . " price = '" . (float)$this->db->escape($data['price']) . "'"; $comma = ","; }
		if(isset($data['points'])){ $sql_data .= $comma . " points = '" . (int)$this->db->escape($data['points']) . "'"; $comma = ","; }
		if(isset($data['weight'])){ $sql_data .= $comma . " weight = '" . (float)$this->db->escape($data['weight']) . "'"; $comma = ","; }
		if(isset($data['weight_class_id'])){ $sql_data .= $comma . " weight_class_id = '" . (int)$this->db->escape($data['weight_class_id']) . "'"; $comma = ","; }
		if(isset($data['length'])){ $sql_data .= $comma . " length = '" . (float)$this->db->escape($data['length']) . "'"; $comma = ","; }
		if(isset($data['width'])){ $sql_data .= $comma . " width = '" . (float)$this->db->escape($data['width']) . "'"; $comma = ","; }
		if(isset($data['height'])){ $sql_data .= $comma . " height = '" . (float)$this->db->escape($data['height']) . "'"; $comma = ","; }
		if(isset($data['length_class_id'])){ $sql_data .= $comma . " length_class_id = '" . (int)$this->db->escape($data['length_class_id']) . "'"; $comma = ","; }
		if(isset($data['status'])){ $sql_data .= $comma . " status = '" . (int)$this->db->escape($data['status']) . "'"; $comma = ","; }
		if(isset($data['tax_class_id'])){ $sql_data .= $comma . " tax_class_id = '" . (int)$this->db->escape($data['tax_class_id']) . "'"; $comma = ","; }
		if(isset($data['sort_order'])){ $sql_data .= $comma . " sort_order = '" . (int)$this->db->escape($data['sort_order']) . "'"; $comma = ","; }

		$sql_product = "UPDATE " . DB_PREFIX . "product SET " . $sql_data . ", date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'";
		$this->db->query($sql_product);


		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "product SET image = '" . $this->db->escape($data['image']) . "' WHERE product_id = '" . (int)$product_id . "'");
		}


		foreach ($data['product_description'] as $language_id => $value) {

			$sql_description = "";

			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_description WHERE product_id = '" . (int)$product_id . "' AND language_id = '" . (int)$language_id . "'");

			if(count($query->rows)){
				$sql_description .= "UPDATE " . DB_PREFIX . "product_description SET ";
			}else{
				$this->db->query("DELETE FROM " . DB_PREFIX . "product_description WHERE product_id = '" . (int)$product_id . "' AND language_id = '" . (int)$language_id . "'");
				$sql_description .= "INSERT INTO " . DB_PREFIX . "product_description SET product_id = '" . (int)$product_id . "', language_id = '" . (int)$language_id . "', ";
			}

			$comma = "";
			if(isset($value['name'])){
				$sql_description .= "name = '" . $this->db->escape(htmlspecialchars($value['name'])) . "'";
				$comma = ",";
			}
			if(isset($value['description'])){
				$sql_description .= $comma . " description = '" . $this->db->escape($value['description']) . "'";
				$comma = ",";
			}
			if(isset($value['meta_title'])){
				$sql_description .= $comma . " meta_title = '" . $this->db->escape(htmlspecialchars($value['meta_title'])) . "'";
				$comma = ",";
			}
			if(isset($value['meta_description'])){
				$sql_description .= $comma . " meta_description = '" . $this->db->escape(htmlspecialchars($value['meta_description'])) . "'";
				$comma = ",";
			}
			if(isset($value['meta_keyword'])){
				$sql_description .= $comma . " meta_keyword = '" . $this->db->escape(htmlspecialchars($value['meta_keyword'])) . "'";
			}
			if(isset($value['tag'])){
				$sql_description .= $comma . " tag = '" . $this->db->escape($value['tag']) . "'";
			}

			if(count($query->rows)){
				$sql_description .= " WHERE product_id = '" . (int)$product_id . "' AND language_id = '" . (int)$language_id . "'";
			}

			$this->db->query($sql_description);
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_store WHERE product_id = '" . (int)$product_id . "'");

		if (isset($data['product_store'])) {
			foreach ($data['product_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		if (isset($data['product_category'])) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "'");

			foreach ($data['product_category'] as $category_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = '" . (int)$product_id . "', category_id = '" . (int)$category_id . "'");
			}
		}

		if (isset($data['keyword'])) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'product_id=" . (int)$product_id . "'");
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}

		$this->cache->delete('product');

		return true;
	}
	/* ------------------------  ADD PRODUCT   ------------------------------- */
	public function addProduct($data) {

		$sql_data = "";
		$comma = "";
		if(isset($data['model'])){ $sql_data .= "model = '" . $this->db->escape(htmlspecialchars($data['model'])) . "'"; $comma = ","; }
		if(isset($data['sku'])){ $sql_data .= $comma . " sku = '" . $this->db->escape($data['sku']) . "'"; $comma = ","; }
		if(isset($data['upc'])){ $sql_data .= $comma . " upc = '" . $this->db->escape($data['upc']) . "'"; $comma = ","; }
		if(isset($data['ean'])){ $sql_data .= $comma . " ean = '" . $this->db->escape($data['ean']) . "'"; $comma = ","; }
		if(isset($data['jan'])){ $sql_data .= $comma . " jan = '" . $this->db->escape($data['jan']) . "'"; $comma = ","; }
		if(isset($data['isbn'])){ $sql_data .= $comma . " isbn = '" . $this->db->escape($data['isbn']) . "'"; $comma = ","; }
		if(isset($data['mpn'])){ $sql_data .= $comma . " mpn = '" . $this->db->escape($data['mpn']) . "'"; $comma = ","; }
		if(isset($data['location'])){ $sql_data .= $comma . " location = '" . $this->db->escape($data['location']) . "'"; $comma = ","; }
		if(isset($data['quantity'])){ $sql_data .= $comma . " quantity = '" . (int)$this->db->escape($data['quantity']) . "'"; $comma = ","; }
		if(isset($data['minimum'])){ $sql_data .= $comma . " minimum = '" . (int)$this->db->escape($data['minimum']) . "'"; $comma = ","; }
		if(isset($data['subtract'])){ $sql_data .= $comma . " subtract = '" . (int)$this->db->escape($data['subtract']) . "'"; $comma = ","; }
		if(isset($data['stock_status_id'])){ $sql_data .= $comma . " stock_status_id = '" . (int)$this->db->escape($data['stock_status_id']) . "'"; $comma = ","; }
		if(isset($data['date_available'])){ $sql_data .= $comma . " date_available = '" . $this->db->escape($data['date_available']) . "'"; $comma = ","; }
		if(isset($data['manufacturer_id'])){ $sql_data .= $comma . " manufacturer_id = '" . (int)$this->db->escape($data['manufacturer_id']) . "'"; $comma = ","; }
		if(isset($data['shipping'])){ $sql_data .= $comma . " shipping = '" . (int)$this->db->escape($data['shipping']) . "'"; $comma = ","; }
		if(isset($data['price'])){ $sql_data .= $comma . " price = '" . (float)$this->db->escape($data['price']) . "'"; $comma = ","; }
		if(isset($data['points'])){ $sql_data .= $comma . " points = '" . (int)$this->db->escape($data['points']) . "'"; $comma = ","; }
		if(isset($data['weight'])){ $sql_data .= $comma . " weight = '" . (float)$this->db->escape($data['weight']) . "'"; $comma = ","; }
		if(isset($data['weight_class_id'])){ $sql_data .= $comma . " weight_class_id = '" . (int)$this->db->escape($data['weight_class_id']) . "'"; $comma = ","; }
		if(isset($data['length'])){ $sql_data .= $comma . " length = '" . (float)$this->db->escape($data['length']) . "'"; $comma = ","; }
		if(isset($data['width'])){ $sql_data .= $comma . " width = '" . (float)$this->db->escape($data['width']) . "'"; $comma = ","; }
		if(isset($data['height'])){ $sql_data .= $comma . " height = '" . (float)$this->db->escape($data['height']) . "'"; $comma = ","; }
		if(isset($data['length_class_id'])){ $sql_data .= $comma . " length_class_id = '" . (int)$this->db->escape($data['length_class_id']) . "'"; $comma = ","; }
		if(isset($data['status'])){ $sql_data .= $comma . " status = '" . (int)$this->db->escape($data['status']) . "'"; $comma = ","; }
		if(isset($data['tax_class_id'])){ $sql_data .= $comma . " tax_class_id = '" . (int)$this->db->escape($data['tax_class_id']) . "'"; $comma = ","; }
		if(isset($data['sort_order'])){ $sql_data .= $comma . " sort_order = '" . (int)$this->db->escape($data['sort_order']) . "'"; $comma = ","; }

		$sql_product = "INSERT INTO " . DB_PREFIX . "product SET " . $sql_data . ", date_added = NOW()";

		$this->db->query($sql_product);

		$product_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "product SET image = '" . $this->db->escape($data['image']) . "' WHERE product_id = '" . (int)$product_id . "'");
		}

		if (isset($data['product_description'])) {
			foreach ($data['product_description'] as $language_id => $value) {
				$sql_desc = '';
				if(isset($product_id)){ $sql_desc .= "product_id = '" . (int)$product_id . "'"; $comma = ","; }
				if(isset($language_id)){ $sql_desc .= $comma . " language_id = '" . (int)$language_id . "'"; $comma = ","; }
				if(isset($value['name'])){ $sql_desc .= $comma . " name = '" . $this->db->escape(htmlspecialchars($value['name'])) . "'"; $comma = ","; }
				if(isset($value['description'])){ $sql_desc .= $comma . " description = '" . $this->db->escape($value['description']) . "'"; $comma = ","; }
				if(isset($value['tag'])){ $sql_desc .= $comma . " tag = '" . $this->db->escape($value['tag']) . "'"; $comma = ","; }
				if(isset($value['meta_title'])){ $sql_desc .= $comma . " meta_title = '" . $this->db->escape(htmlspecialchars($value['meta_title'])) . "'"; $comma = ","; }
				if(isset($value['meta_description'])){ $sql_desc .= $comma . " meta_description = '" . $this->db->escape(htmlspecialchars($value['meta_description'])) . "'"; $comma = ","; }
				if(isset($value['meta_keyword'])){ $sql_desc .= $comma . " meta_keyword = '" . $this->db->escape(htmlspecialchars($value['meta_keyword'])) . "'"; $comma = ","; }

				$this->db->query("INSERT INTO " . DB_PREFIX . "product_description SET " . $sql_desc);
			}
		}

		if (isset($data['product_store'])) {
			foreach ($data['product_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		if (isset($data['product_attribute'])) {
			foreach ($data['product_attribute'] as $product_attribute) {
				if ($product_attribute['attribute_id']) {
					foreach ($product_attribute['product_attribute_description'] as $language_id => $product_attribute_description) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "product_attribute SET product_id = '" . (int)$product_id . "', attribute_id = '" . (int)$product_attribute['attribute_id'] . "', language_id = '" . (int)$language_id . "', text = '" .  $this->db->escape($product_attribute_description['text']) . "'");
					}
				}
			}
		}

		if (isset($data['product_option'])) {
			foreach ($data['product_option'] as $product_option) {
				if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') {
					if (isset($product_option['product_option_value'])) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', required = '" . (int)$product_option['required'] . "'");

						$product_option_id = $this->db->getLastId();

						foreach ($product_option['product_option_value'] as $product_option_value) {
							$this->db->query("INSERT INTO " . DB_PREFIX . "product_option_value SET product_option_id = '" . (int)$product_option_id . "', product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', option_value_id = '" . (int)$product_option_value['option_value_id'] . "', quantity = '" . (int)$product_option_value['quantity'] . "', subtract = '" . (int)$product_option_value['subtract'] . "', price = '" . (float)$product_option_value['price'] . "', price_prefix = '" . $this->db->escape($product_option_value['price_prefix']) . "', points = '" . (int)$product_option_value['points'] . "', points_prefix = '" . $this->db->escape($product_option_value['points_prefix']) . "', weight = '" . (float)$product_option_value['weight'] . "', weight_prefix = '" . $this->db->escape($product_option_value['weight_prefix']) . "'");
						}
					}
				} else {
					$this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', value = '" . $this->db->escape($product_option['value']) . "', required = '" . (int)$product_option['required'] . "'");
				}
			}
		}

		if (isset($data['product_discount'])) {
			foreach ($data['product_discount'] as $product_discount) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_discount SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$product_discount['customer_group_id'] . "', quantity = '" . (int)$product_discount['quantity'] . "', priority = '" . (int)$product_discount['priority'] . "', price = '" . (float)$product_discount['price'] . "', date_start = '" . $this->db->escape($product_discount['date_start']) . "', date_end = '" . $this->db->escape($product_discount['date_end']) . "'");
			}
		}

		if (isset($data['product_special'])) {
			foreach ($data['product_special'] as $product_special) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_special SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$product_special['customer_group_id'] . "', priority = '" . (int)$product_special['priority'] . "', price = '" . (float)$product_special['price'] . "', date_start = '" . $this->db->escape($product_special['date_start']) . "', date_end = '" . $this->db->escape($product_special['date_end']) . "'");
			}
		}

		if (isset($data['product_image'])) {
			foreach ($data['product_image'] as $product_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET product_id = '" . (int)$product_id . "', image = '" . $this->db->escape($product_image['image']) . "', sort_order = '" . (int)$product_image['sort_order'] . "'");
			}
		}

		if (isset($data['product_download'])) {
			foreach ($data['product_download'] as $download_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_download SET product_id = '" . (int)$product_id . "', download_id = '" . (int)$download_id . "'");
			}
		}

		if (isset($data['product_category'])) {
			foreach ($data['product_category'] as $category_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = '" . (int)$product_id . "', category_id = '" . (int)$category_id . "'");
			}
		}

		if (isset($data['product_filter'])) {
			foreach ($data['product_filter'] as $filter_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_filter SET product_id = '" . (int)$product_id . "', filter_id = '" . (int)$filter_id . "'");
			}
		}

		if (isset($data['product_related'])) {
			foreach ($data['product_related'] as $related_id) {
				$this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id = '" . (int)$product_id . "' AND related_id = '" . (int)$related_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id = '" . (int)$product_id . "', related_id = '" . (int)$related_id . "'");
				$this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id = '" . (int)$related_id . "' AND related_id = '" . (int)$product_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id = '" . (int)$related_id . "', related_id = '" . (int)$product_id . "'");
			}
		}

		if (isset($data['product_reward'])) {
			foreach ($data['product_reward'] as $customer_group_id => $product_reward) {
				if ((int)$product_reward['points'] > 0) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "product_reward SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$customer_group_id . "', points = '" . (int)$product_reward['points'] . "'");
				}
			}
		}

		if (isset($data['product_layout'])) {
			foreach ($data['product_layout'] as $store_id => $layout_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_layout SET product_id = '" . (int)$product_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
			}
		}

		if (isset($data['keyword'])) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}

		if (isset($data['product_recurrings'])) {
			foreach ($data['product_recurrings'] as $recurring) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "product_recurring` SET `product_id` = " . (int)$product_id . ", customer_group_id = " . (int)$recurring['customer_group_id'] . ", `recurring_id` = " . (int)$recurring['recurring_id']);
			}
		}

		$this->cache->delete('product');

		return $product_id;
	}

	/*-----------------------------------------------------*/
	/*                 Категория					*/
	/*---------------------------------------------------*/

    public function getTotalCategories($data = array()) {
		$sql = "SELECT COUNT(DISTINCT c.category_id) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}

public function getCategory($category_id, $language_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT GROUP_CONCAT(cd1.name ORDER BY level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id AND cd1.language_id = '" . (int)$language_id . "' GROUP BY cp.category_id) AS path, (SELECT DISTINCT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "') AS keyword FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.category_id = cd2.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd2.language_id = '" . (int)$language_id . "'");

		return $query->row;
}

public function getCategories($data = array()) {
		$categories = null;
		$sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, c1.parent_id, c1.sort_order FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category c1 ON (cp.category_id = c1.category_id) LEFT JOIN " . DB_PREFIX . "category c2 ON (cp.path_id = c2.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = '" . (int)$data['language_id'] . "' AND cd2.language_id = '" . $data['language_id'] . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND cd2.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY cp.category_id";

		$sort_data = array( 'name', 'sort_order' );

		isset($data['sort']) && in_array($data['sort'], $sort_data) ? $sql .= " ORDER BY " . $data['sort'] : $sql .= " ORDER BY sort_order" ;
		isset($data['order']) && ($data['order'] == 'DESC') ? $sql .= " DESC" : $sql .= " ASC" ;

    if (isset($data['start']) || isset($data['limit'])) {
				$data['start'] < 0 ? $data['start'] = 0  : null ;
				$data['limit'] < 1 ? $data['limit'] = 20 : null ;

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		foreach ($query->rows as $result) {
				$category_id = (int)$result['category_id'];

        $categories[] = array(
            'category_id' => $result['category_id'],
            'name' 		  	=> $result['name'],
            'parent_id'   => $result['parent_id'],
            'sort_order'  => $result['sort_order']
        );
		}
		return $categories;
}

	public function getCategoryDescriptions($category_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'description'      => $result['description']
			);
		}

		return $category_description_data;
	}

	public function getCategoryStores($category_id) {
		$category_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_store_data[] = $result['store_id'];
		}

		return $category_store_data;
	}

public function editCategory($category_id, $data) {

		$category_is = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category WHERE category_id = '" . (int)$category_id . "'");
		if(!count($category_is->rows)){
			$category_is = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");
			if(!count($category_is->rows)){
				$this->cache->delete('category');
				return false;
				die();
			}
		}

		$this->db->query("UPDATE " . DB_PREFIX . "category SET parent_id = '" . (int)$data['parent_id'] . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW() WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "category SET image = '" . $this->db->escape($data['image']) . "' WHERE category_id = '" . (int)$category_id . "'");
		}

		foreach ($data['category_description'] as $language_id => $value) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "' AND language_id = '" . (int)$language_id . "'");

			$this->db->query("INSERT INTO " . DB_PREFIX . "category_description SET category_id = '" . (int)$category_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		// MySQL Hierarchical Data Closure Table Pattern
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE path_id = '" . (int)$category_id . "' ORDER BY level ASC");

		if ($query->rows) {
			foreach ($query->rows as $category_path) {
				// Delete the path below the current one
				$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' AND level < '" . (int)$category_path['level'] . "'");

				$path = array();

				// Get the nodes new parents
				$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");

				foreach ($query->rows as $result) {
					$path[] = $result['path_id'];
				}

				// Get whats left of the nodes current path
				$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' ORDER BY level ASC");

				foreach ($query->rows as $result) {
					$path[] = $result['path_id'];
				}

				// Combine the paths with a new level
				$level = 0;

				foreach ($path as $path_id) {
					$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_path['category_id'] . "', `path_id` = '" . (int)$path_id . "', level = '" . (int)$level . "'");

					$level++;
				}
			}
		} else {
			// Delete the path below the current one
			$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_id . "'");

			// Fix for records with no paths
			$level = 0;

			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");

			foreach ($query->rows as $result) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");

				$level++;
			}

			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$category_id . "', level = '" . (int)$level . "'");
		}

		//$this->db->query("DELETE FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_filter'])) {
			foreach ($data['category_filter'] as $filter_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_filter SET category_id = '" . (int)$category_id . "', filter_id = '" . (int)$filter_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_store'])) {
			foreach ($data['category_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		//$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_layout'])) {
			foreach ($data['category_layout'] as $store_id => $layout_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "'");

		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}

		$this->cache->delete('category');

		return true;
	}

    /* ------------------------  GET PRICE MIN & MAX   ------------------------------- */
    public function getPriceMinMax() {
        $sql = "SELECT MIN(price) as product_price_min, MAX(price) as product_price_max FROM " . DB_PREFIX . "product";

		$query = $this->db->query($sql);

        foreach ($query->rows as $result) {
			$product_mm['product_price_min'] = (int)$result['product_price_min'];
            $product_mm['product_price_max'] = (int)$result['product_price_max'];
		}

		return $product_mm;
    }

    /* ------------------------  GET COUNT MIN & MAX   ------------------------------- */
    public function getCountMinMax() {
        $sql = "SELECT MIN(quantity) as product_count_min, MAX(quantity) as product_count_max FROM " . DB_PREFIX . "product";

		$query = $this->db->query($sql);

        foreach ($query->rows as $result) {
            $product_count_min = $result['product_count_min'];
            if(strlen(trim($product_count_min)) < 1) { $product_count_min = 0;}
			$product_mm['product_count_min'] = (int)$product_count_min;
            $product_mm['product_count_max'] = (int)$result['product_count_max'];
		}

		return $product_mm;
    }

/* ------------------------  EXPORT COUNT ANALIZE   ------------------------------- */
public function getExportTotal($data = array()) {
    if($data['type'] == 'product'){
        if($data['filter'] == 'filter'){
						switch ($data['filter_type']):
						case 'filter_category':
								$sql = "SELECT COUNT(DISTINCT pc.product_id) AS total FROM " . DB_PREFIX . "product_to_category pc ";
								$sql .= "LEFT JOIN " . DB_PREFIX . "product_description pd ON (pc.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' ";
		            $sql .= "AND pc.category_id = '" . $this->db->escape($data['filter_value']) . "'";
						break;
						case 'filter_price':
								$priceAr = explode(",", $data['filter_value']);
								$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p ";
								$sql .= "LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' ";
		            $sql .= "AND (p.price BETWEEN '" . $this->db->escape($priceAr[0]) . "' AND '" . $this->db->escape($priceAr[1]) . "');";
						break;
					  case 'filter_status':
								$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p ";
								$sql .= "LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' ";
		            $sql .= "AND p.status = '" . $this->db->escape($data['filter_value']) . "'";
						break;
						case 'filter_count':
								$countAr = explode(",", $data['filter_value']);
								$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p ";
								$sql .= "LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "' ";
		            $sql .= "AND (p.quantity BETWEEN '" . $this->db->escape($countAr[0]) . "' AND '" . $this->db->escape($countAr[1]) . "');";
						break;
						case 'filter_seo':
								$data['filter_value'] == 0 ? $seo = "" : $seo = "!";
								$sql = "SELECT p.product_id, COUNT((SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id) AND u.keyword " . $seo . "= '')) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "'";
						break;
						endswitch;
        }else{
						$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$data['language_id'] . "'";
        }
				$query = $this->db->query($sql);
    }else if($data['type'] == 'category'){
				$sql = "SELECT COUNT(DISTINCT c.category_id) AS total FROM " . DB_PREFIX . "category c ";
				$sql .= "LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE cd.language_id = '" . (int)$data['language_id'] . "'";
				$query = $this->db->query($sql);
    }else if($data['type'] == 'order'){
				$sql = "SELECT COUNT(DISTINCT o.order_id) AS total FROM " . DB_PREFIX . "order o ";
				$query = $this->db->query($sql);
    }
		return $query->row['total'];
}

/* ------------------------  MAIN LOAD DATA   ------------------------------- */
public function dkaGetTotalProducts() {
	$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['total'] = $query->row['total'];

	$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)";
	$sql .= " WHERE  nullif( trim(pd.meta_title) , '') is NULL";
	$query = $this->db->query($sql);
	$data['meta_title'] = $query->row['total'];

	$sql = "SELECT COUNT(DISTINCT p.product_id) AS total FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)";
	$sql .= " WHERE  nullif( trim(pd.meta_description) , '') is NULL";
	$query = $this->db->query($sql);
	$data['meta_description'] = $query->row['total'];

	$sql = "SELECT MIN(DISTINCT p.price) AS price FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['price_min'] = round($query->row['price']);

	$sql = "SELECT MAX(DISTINCT p.price) AS price FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['price_max'] = round($query->row['price']);

	$sql = "SELECT COUNT(DISTINCT p.product_id) AS quantity FROM " . DB_PREFIX . "product p";
	$sql .= " WHERE  nullif( trim(p.quantity) , '') is NULL";
	$query = $this->db->query($sql);
	$data['quantity'] = $query->row['quantity'];

	$sql = "SELECT COUNT(DISTINCT p.product_id) AS quantity FROM " . DB_PREFIX . "product p";
	$sql .= " WHERE  nullif( trim(p.quantity) , '') is NULL";
	$query = $this->db->query($sql);
	$data['quantity'] = $query->row['quantity'];

	$sql = "SELECT COUNT((SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('product_id=',p.product_id) AND u.keyword = '')) AS keyword FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['keyword'] = $query->row['keyword'];

	$sql = "SELECT COUNT(DISTINCT p.product_id) AS status FROM " . DB_PREFIX . "product p WHERE ";
	$sql .= "p.status = '0'";
	$query = $this->db->query($sql);
	$data['status'] = $query->row['status'];

	$sql = "SELECT COUNT((SELECT DISTINCT pc.product_id FROM " . DB_PREFIX . "product_to_category pc WHERE pc.product_id = p.product_id)) AS category FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['category'] = $data['total'] - $query->row['category'];

	$sql = "SELECT COUNT((SELECT DISTINCT ps.product_id FROM " . DB_PREFIX . "product_to_store ps WHERE ps.product_id = p.product_id)) AS store FROM " . DB_PREFIX . "product p";
	$query = $this->db->query($sql);
	$data['store'] = $data['total'] - $query->row['store'];

	return $data;
}

public function dkaGetTotalCategories() {
	$sql = "SELECT COUNT(DISTINCT c.category_id) AS total FROM " . DB_PREFIX . "category c";
	$query = $this->db->query($sql);
	$data['total'] = $query->row['total'];

	$sql = "SELECT COUNT(DISTINCT c.category_id) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)";
	$sql .= " WHERE  nullif( trim(cd.meta_title) , '') is NULL";
	$query = $this->db->query($sql);
	$data['meta_title'] = $query->row['total'];

	$sql = "SELECT COUNT(DISTINCT c.category_id) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)";
	$sql .= " WHERE  nullif( trim(cd.meta_description) , '') is NULL";
	$query = $this->db->query($sql);
	$data['meta_description'] = $query->row['total'];

	$sql = "SELECT COUNT((SELECT keyword FROM " . DB_PREFIX . "url_alias u WHERE u.query = CONCAT('category_id=',c.category_id) AND u.keyword = '')) AS keyword FROM " . DB_PREFIX . "category c";
	$query = $this->db->query($sql);
	$data['keyword'] = $query->row['keyword'];

	$sql = "SELECT COUNT(DISTINCT c.category_id) AS status FROM " . DB_PREFIX . "category c WHERE ";
	$sql .= "c.status = '0'";
	$query = $this->db->query($sql);
	$data['status'] = $query->row['status'];

	return $data;
}

/* NEW 2.0.1------------------------  EXPORT FROM BASE CART   ------------------------------- */
public function getCartsExcel($data = array()) {
	$data_cart = null;

	$start = $data['start'];
	$limit = $data['limit'];
	$language_id = $data['language_id'];

	$sql = "SELECT IF(ISNULL(cart_id), 0, 1) AS cart FROM " . DB_PREFIX . "cart";
	$query = $this->db->countAffected($sql);
	if($query){
		$sql = "SELECT * FROM " . DB_PREFIX . "cart ORDER BY customer_id ASC, date_added DESC";
		if (isset($start) || isset($limit)) { $sql .= " LIMIT " . (int)$start . "," . (int)$limit; }
		$query = $this->db->query($sql);

	  foreach ($query->rows as $result) {
	    $cart_id     = (int)$result['cart_id'];
	    $customer_id = (int)$result['customer_id'];
			$session_id  = (string)$result['session_id'];
			$product_id  = (int)$result['product_id'];
			$quantity 	 = (int)$result['quantity'];
			$date_added  = $result['date_added'];
			// Customer info
	    $queryCustomer = $this->db->query("SELECT firstname, lastname, email, telephone FROM " . DB_PREFIX . "customer WHERE customer_id = '" . $customer_id . "'");
	    $customer = null;
	    if(!count($queryCustomer->rows)){
	      $customer['firstname'] = '';
	      $customer['lastname']  = '';
	      $customer['email']     = '';
	      $customer['telephone'] = '';
	    }else{
	      $customer['firstname'] = $queryCustomer->rows[0]['firstname'];
	      $customer['lastname']  = $queryCustomer->rows[0]['lastname'];
	      $customer['email']     = $queryCustomer->rows[0]['email'];
	      $customer['telephone'] = $queryCustomer->rows[0]['telephone'];
	    }
			// Product image
	    $q_productImage = $this->db->query("SELECT image FROM " . DB_PREFIX . "product WHERE product_id = '" . $product_id . "'");
	    $d_productImage = null;
	    if(!count($q_productImage->rows)){
	      $d_productImage['image'] = '';
	    }else{
	      $d_productImage['image'] = $q_productImage->rows[0]['image'];
	    }
			// Product description
	    $s_productDesc = "SELECT name FROM " . DB_PREFIX . "product_description";
			$s_productDesc .= " WHERE product_id = '" . $product_id . "' AND language_id = '" . (int)$language_id . "'";
			$q_productDesc = $this->db->query($s_productDesc);
	    $d_productDesc = null;
	    if(!count($q_productDesc->rows)){
	      $d_productDesc['name'] = '';
	    }else{
	      $d_productDesc['name'] = $q_productDesc->rows[0]['name'];
	    }
			// Carts data
	    $data_cart[] = array(
	      'cart_id' 		=> $cart_id,
	      'customer_id' => $customer_id,
				'session_id'  => $session_id,
				'product_id'  => $product_id,
				'quantity_id' => $quantity,
				'date_added' 	=> $date_added,
	      'firstname'   => $customer['firstname'],
	      'lastname'    => $customer['lastname'],
	      'email'       => $customer['email'],
	      'telephone'   => $customer['telephone'],
				'image'   		=> $d_productImage['image'],
				'name'   			=> $d_productDesc['name'],
	    );
	  }
	}
	return $data_cart;
}

/* NEW 2.0.3------------------------  EXPORT FROM BASE ORDER   ------------------------------- */
public function getOrdersExcel($data = array()) {
	$data_order = null;

	$start = $data['start'];
	$limit = $data['limit'];
	$language_id = $data['language_id'];

	$sql = "SELECT IF(ISNULL(cart_id), 0, 1) AS cart FROM " . DB_PREFIX . "cart";
	$query = $this->db->countAffected($sql);
	if($query){
		$sql = "SELECT order_id, store_name, firstname, lastname, email, telephone, payment_address_1, payment_address_2, payment_city, payment_country,
			shipping_firstname, shipping_lastname, shipping_company, shipping_address_1, shipping_address_2, shipping_city, shipping_postcode, shipping_country,
			comment, total, ip, date_added, date_modified FROM " . DB_PREFIX . "order ORDER BY date_added DESC";
		if (isset($start) || isset($limit)) { $sql .= " LIMIT " . (int)$start . "," . (int)$limit; }
		$query = $this->db->query($sql);

	  foreach ($query->rows as $result) {
	    $order_id    				= (int)$result['order_id'];
	    $store_name  				= (string)$result['store_name'];
			$firstname   				= (string)$result['firstname'];
			$lastname  	 				= (string)$result['lastname'];
			$email  	 					= (string)$result['email'];
			$telephone  	 			= (string)$result['telephone'];
			$payment_address_1  = (string)$result['payment_address_1'];
			$payment_address_2  = (string)$result['payment_address_2'];
			$payment_city  	 	  = (string)$result['payment_city'];
			$payment_country  	= (string)$result['payment_country'];
			$shipping_firstname = (string)$result['shipping_firstname'];
			$shipping_lastname  = (string)$result['shipping_lastname'];
			$shipping_company 	= (string)$result['shipping_company'];
			$shipping_address_1 = (string)$result['shipping_address_1'];
			$shipping_city  	 	= (string)$result['shipping_city'];
			$shipping_postcode  = (string)$result['shipping_postcode'];
			$shipping_country  	= (string)$result['shipping_country'];
			$comment  	 				= (string)$result['comment'];
			$total  	 					= (string)$result['total'];
			$ip  	 							= (string)$result['ip'];
			$date_added  				= $result['date_added'];
			$date_modified  		= $result['date_modified'];

			// Products info
	    $queryProducts = $this->db->query("SELECT name, quantity, price FROM " . DB_PREFIX . "order_product WHERE order_id = '" . $order_id . "'");
	    $order_product = null;
			$string_product = '';
	    if(count($queryProducts->rows)){
	      foreach ($queryProducts->rows as $product) {
					$string_product .= $product['name'] . ": " . $product['price'] . " (" . $product['quantity'] . ")\n";
				}
	    }
			$order_product = $string_product;

			// Order data
	    $data_order[] = array(
	      'order_id' 					 => $order_id,
	      'store_name' 				 => $store_name,
				'firstname' 				 => $firstname,
				'lastname' 					 => $lastname,
				'email' 						 => $email,
				'telephone' 				 => $telephone,
				'order_product'			 => html_entity_decode($order_product, ENT_QUOTES, 'UTF-8'),
				'payment_address_1'  => $payment_address_1,
				'payment_address_2'  => $payment_address_2,
				'payment_city' 			 => $payment_city,
				'payment_country' 	 => $payment_country,
				'shipping_firstname' => $shipping_firstname,
				'shipping_lastname'  => $shipping_lastname,
				'shipping_company' 	 => $shipping_company,
				'shipping_address_1' => $shipping_address_1,
				'shipping_city' 		 => $shipping_city,
				'shipping_postcode'  => $shipping_postcode,
				'shipping_country' 	 => $shipping_country,
				'comment' 			     => $comment,
				'total' 						 => $total,
				'ip' 								 => $ip,
				'date_added' 				 => $date_added,
				'date_modified' 		 => $date_modified,
	    );
	  }
	}
	return $data_order;

}

}

?>
