	foreach (get_ids ('clone') as $id_clone) {
		sql_do_relink ('__TYPE__', $id_clone => $_REQUEST [id]);
		sql_do ('UPDATE __TYPE__ SET fake = -1, is_merged_to = ? WHERE id = ?', $_REQUEST [id], $id_clone);
	}