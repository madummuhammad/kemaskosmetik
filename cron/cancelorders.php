<?php
    date_default_timezone_set('Asia/Jakarta');
	$connection = mysqli_connect('localhost', 'gethasse_mpmwahl', 'mpmwahl', 'gethasse_mpmwahl');
	//get date now
	$datenow = date('Y-m-d H:i:s');
	$sql = mysqli_query($connection, "SELECT order_id, date_added FROM `order` WHERE order_status_id = 4");
	while($row = mysqli_fetch_array($sql)) {
		if(strtotime($row[1])+86400 < strtotime($datenow)) {
			mysqli_query($connection, "update `order` set order_status_id = 11, date_modified = '".date('Y-m-d H:i:s')."' where order_id = '".$row[0]."'");
			mysqli_query($connection, "insert into `order_history` (`order_history_id`, `order_status_id`, `order_id`, `admin_id`, `notify`, `comment`, `waybill`, `image`, `date_added`, `date_modified`) values (NULL, '11', '".$row[0]."', '0', '0', 'Pesanan dibatalkan karena belum ada pembayaran dari customer sampai tanggal ".date('d/m/Y H:i',strtotime($row[1])+86400)."', '', NULL, '".date('Y-m-d H:i:s')."', '".date('Y-m-d H:i:s')."')");
		}
	}
?>