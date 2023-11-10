
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loginv2 Database Import Instructions</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        section {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #007bff;
        }

        ol {
            margin-bottom: 20px;
        }

        li {
            margin-bottom: 10px;
        }

        code {
            background-color: #f8f8f8;
            padding: 2px 4px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-family: 'Courier New', Courier, monospace;
        }
    </style>
</head>
<body>
    <header>
        <h1>Loginv2 Database Import Instructions</h1>
    </header>

    <section>
        <h2>Step-by-Step Guide</h2>

        <ol>
            <li>Open PHPMyAdmin in your web browser.</li>
            <li>Log in with your username and password.</li>
            <li>Create a new database named <code>loginv2</code>:
                <ol>
                    <li>Click on the "Database" tab in the top menu.</li>
                    <li>Enter <code>loginv2</code> in the "Database name" field.</li>
                    <li>Choose the appropriate collation (e.g., <code>utf8_general_ci</code>).</li>
                    <li>Click the "Create" button.</li>
                </ol>
            </li>
            <li>Import the SQL file into the <code>loginv2</code> database:
                <ol>
                    <li>Click on the "Import" tab in the top menu.</li>
                    <li>Choose the file by clicking on "Choose File" or "Browse".</li>
                    <li>Find and select the SQL file for the <code>loginv2</code> database.</li>
                    <li>Click the "Go" or "Import" button to start the import process.</li>
                </ol>
            </li>
        </ol>

        <p>Now, your <code>loginv2</code> database is ready for use with your PHP application.</p>
    </section>
</body>
</html>
