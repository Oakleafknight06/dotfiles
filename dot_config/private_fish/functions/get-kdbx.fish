function get-kdbx
	set CURR_DATE = date -I
	echo "Moving old file to backups folder.."
	mv ~/Admin/Vault.kdbx ~/Admin/Backups/Keepass-Backups/$CURR_DATE-Vault.kdbx
	echo "Downloading and opening the new file"
	tailscale file get ~/Admin
	xdg-open ~/Admin/Vault.kdbx
end
