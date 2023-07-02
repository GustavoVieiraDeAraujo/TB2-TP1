#include "./controladoras/apresentacao/teste.h"
#include "./controladoras/apresentacao/controle.h"
#include "./controladoras/apresentacao/caso_teste.h"
#include "./controladoras/apresentacao/autenticacao.h"
#include "./controladoras/apresentacao/desenvolvedor.h"

#include "./controladoras/servico/teste.h"
#include "./controladoras/servico/caso_teste.h"
#include "./controladoras/servico/autenticacao.h"
#include "./controladoras/servico/desenvolvedor.h"

#include "./acesso_db.h"
#include <iostream>

using namespace std;

int main() {

    Matricula matricula;
    matricula.set_valor_dominio("1234566");
    
    ServicoDesenvolvedor servico_desenvolvedor;
    servico_desenvolvedor.deletar_desenvolvedor(matricula);

    return 0;
}
