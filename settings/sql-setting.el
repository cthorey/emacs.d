(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

(setq sql-connection-alist
      '((server1 (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "localhost")
                  (sql-user "user")
                  (sql-password "password")
                  (sql-database "db1"))
        (server2 (sql-product 'postgres)
                  (sql-port 32770)
                  (sql-server "192.168.99.101")
                  (sql-user "docker")
                  (sql-password "docker")
                  (sql-database "db2"))))

(defun my-sql-server1 ()
  (interactive)
  (my-sql-connect 'postgres 'server1))

(defun my-sql-server2 ()
  (interactive)
  (my-sql-connect 'postgres 'server2))

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))


(provide 'sql-setting)
