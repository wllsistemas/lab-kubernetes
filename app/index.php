<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DEVOPS</title>
</head>

<body>
    <h1>CI/CD COM GIT ACTIONS + KUBERNETES + TERRAFORM <?= date('Y-m-d H:i:s') ?></h1>
    <?php
    echo "<p>APP_ENV: " . getenv('KUBERNETES_APP_ENV') . "</p>";
    echo "<p>DB_HOST: " . getenv('KUBERNETES_DB_HOST') . "</p>";
    echo "<p>DB_PASSWORD_SECRET: " . getenv('DATABASE_PASSWORD') . "</p>";
    echo "<p>API_KEY_SECRET: " . getenv('EXTERNAL_API_KEY') . "</p>";
    ?>
</body>

</html>