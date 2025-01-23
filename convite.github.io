
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aceita Jantar Comigo?</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6e6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
        }
        form {
            margin-top: 20px;
        }
        label {
            margin-right: 10px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        input[type="date"] {
            margin-top: 10px;
        }
        input[type="submit"] {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .response {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
    <script>
        function handleSubmit(event) {
            event.preventDefault();
            const resposta = document.querySelector('input[name="resposta"]:checked').value;
            const data = new Date(document.querySelector('input[name="data"]').value);
            data.setDate(data.getDate() + 1); // Ajuste para corrigir o problema do fuso horário
            const formattedDate = `${data.getDate().toString().padStart(2, '0')}/${(data.getMonth() + 1).toString().padStart(2, '0')}/${data.getFullYear()}`;
            const responseDiv = document.getElementById('response');
            if (resposta === "sim") {
                responseDiv.innerHTML = `<p>Você tem um date comigo dia <strong>${formattedDate}</strong> no Oguro!</p>`;
            } else {
                responseDiv.innerHTML = `<p>Poxa, tudo bem, faz parte.</p>`;
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Convite para um Date</h1>
        <p>Oi Lele,</p>
        <p>Gostaria de te convidar para um jantar no restaurante Oguro.</p>
        <p>Bora?</p>
        <form onsubmit="handleSubmit(event)">
            <label for="sim">Sim</label>
            <input type="radio" id="sim" name="resposta" value="sim">
            <label for="nao">Não</label>
            <input type="radio" id="nao" name="resposta" value="nao"><br><br>
            <label for="data">Escolha uma data:</label>
            <input type="date" id="data" name="data"><br><br>
            <input type="submit" value="Enviar">
        </form>
        <div id="response" class="response"></div>
    </div>
</body>
</html>
