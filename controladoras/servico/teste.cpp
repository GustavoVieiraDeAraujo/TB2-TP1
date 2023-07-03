#include "./teste.h"
#include "../../acesso_db.h"

bool ServicoTeste::criar_teste(Teste teste) {
    ComandoCadastrarTeste cadastrar_teste(teste);
    return cadastrar_teste.executar();
}

Teste ServicoTeste::retornar_teste(Codigo codigo) {
    ComandoPesquisarTeste pesquisar_teste(codigo);
    pesquisar_teste.executar();
    Teste teste;
    teste = pesquisar_teste.get_resultado();
    return teste;
}

bool ServicoTeste::atualizar_teste(Teste teste) {
    ComandoAtualizarTeste atualizar_teste(teste);
    return atualizar_teste.executar();
}

bool ServicoTeste::deletar_teste(Codigo codigo) {
    ComandoPesquisarCasosTesteDoTeste pesquisar_casos_teste_do_teste(codigo);
    pesquisar_casos_teste_do_teste.executar();
    list<CasoTeste> casos_teste_para_deletar;
    casos_teste_para_deletar = pesquisar_casos_teste_do_teste.get_resultado();

    for (CasoTeste caso_teste : casos_teste_para_deletar){
        ComandoDeletarCasoTeste deletar_caso_teste(caso_teste.get_codigo());
        deletar_caso_teste.executar();
    }

    ComandoDeletarTeste deletar_teste(codigo);
    deletar_teste.executar();
};