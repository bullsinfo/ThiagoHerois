<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%
 //verifico se foi enviado o campo txtNome
 if(request.getParameter("txtNome") == null)
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
     return;
 }
 //verifica se o campo est� vazio
  if(request.getParameter("txtNome").isEmpty())
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
 }
 
 //Gravar a categoria no banco
 EquipeDAO dao = new EquipeDAO(); 
 //Monto o objeto com os dados para sem inserir
 Equipe obj = new Equipe();
 
 obj.setNome(request.getParameter("txtNome"));
 
 //executo o insert na DAO    
 dao.incluir(obj);
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Cadastro de Equipe</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
