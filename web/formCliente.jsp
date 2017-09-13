<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <c:import url="msg.jsp"/>
    <form action="sys" method="POST" class="form">
        <input type="hidden" name="action" value="cad">
        <div class="container col-md-6">
            <legend>Cadastro de Cliente</legend>
            <legend>Dados Pessoais</legend>
            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" name="nome" class="form-control" value="${cliente.nome}">
            </div>

            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="email" name="email" class="form-control"  value="${cliente.email}">
            </div>

            <div class="form-group">
                <label for="cpf">CPF</label>
                <input type="number" name="cpf" min="00000000000" max="99999999999"class="form-control"  value="${cliente.cpfcnpj}">
            </div>

            <div class="form-group">
                <label for="tel">Tel</label>
                <input type="number" name="tel" class="form-control"  value="${cliente.tel}">
            </div>

            <div class="form-group">
                <label for="pws">Senha</label>
                <input type="password" name="pws" class="form-control">
            </div>

            <div class="form-group">
                <label for="pws2">Confirma��o Senha</label>
                <input type="password" name="pws2" class="form-control">
            </div>
        </div>
        <div class="container col-md-6">
            <legend>Dados Endere�o</legend>
            <div class="form-group">
                <label for="cep">CEP</label>
                <input type="text" name="cep" class="form-control" id="cep" onblur="pesquisacep(this.value)"  value="${cliente.endereco.cep}">
            </div>

            <div class="form-group">
                <label for="logradouro">Endere�o</label>
                <input type="text" name="logradouro" class="form-control" id="rua" value="${cliente.endereco.logradouro}">
            </div>

            <div class="form-group">
                <label for="bairro">Bairro</label>
                <input type="text" name="bairro" class="form-control" id="bairro" value="${cliente.endereco.bairro}">
            </div>

            <div class="form-group">
                <label for="cidade">Cidade</label>
                <input type="text" name="cidade" class="form-control" id="cidade" value="${cliente.endereco.cidade}">
            </div>

            <div class="form-group">
                <label for="uf">UF</label>
                <input type="text" name="uf" class="form-control" id="uf" value="${cliente.endereco.uf}">
            </div>

            <div class="form-group">
                <label for="numero">Numero</label>
                <input type="text" name="numero" class="form-control">
            </div>

            <div class="form-group">
                <label for="complemento">Complemento</label>
                <input type="text" name="complemento" class="form-control">
            </div>

            <div class="form-group">
                <button class="btn btn-default"> Salvar </button>
                <button type="reset" class="btn btn-danger" onclick="history.back()"> Cancelar </button>
            </div>
        </div>
    </form>
        <script src="js/ceps.js"></script>
</div>