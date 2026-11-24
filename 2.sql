
DELETE FROM user_logs
WHERE id > 51;


INSERT INTO user_logs (type, old_username, new_username, old_password, new_password)
SELECT 'update',
       'admin',
       'admin',
       (SELECT password FROM users WHERE username = 'admin'),
       (SELECT password FROM users WHERE username = 'emily33');
