unit Urna.SQL;

interface

const

   SQL_RETORNARCANDIDATONULO = ' SELECT ' +
                               '    C.* ' +
                               ' FROM ' +
                               '    CANDIDATOS C ' +
                               ' WHERE ' +
                               '    C.IDPARTIDO = 1 ' +
                               ' AND ' +
                               '    C.CARGOCANDIDATO = :CARGOCANDIDATO;';

   SQL_INSERECANDIDATONULO =   ' INSERT INTO ' +
                               '    CANDIDATOS ' +
                               ' ( ' +
                               '    NOMECANDIDATO, ' +
                               '    NUMCANDIDATO, ' +
                               '    CARGOCANDIDATO, ' +
                               '    ATIVO, ' +
                               '    IDELEICAO, ' +
                               '    IDPARTIDO, ' +
                               '    UF ' +
                               ' ) ' +
                               '    VALUES ' +
                               ' ( ' +
                               '    :CARGOCANDIDATONULO, ' +
                               '    0, ' +
                               '    :CARGOCANDIDATO, ' +
                               '    ''S'', ' +
                               '    :IDELEICAO, ' +
                               '     1, ' +
                               '    '''' ' +
                               ' )';

   SQL_DESATIVARELEICOES =     ' UPDATE ELEICOES SET ' +
                               '    ATIVO = ''N'' ' +
                               ' WHERE ' +
                               '    DATAELEICAO < DATE(NOW()) ';

   SQL_PESQUISARCANDIDATOS =   ' SELECT ' +
                               '    C.IDCANDIDATO as Código, ' +
                               '    C.NOMECANDIDAtO as Nome, ' +
                               '    C.NUMCANDIDATO as Número, ' +
                               '    C.CARGOCANDIDATO as Cargo, ' +
                               '    P.NOMEPARTIDO as Partido, ' +
                               '    C.UF as UF, ' +
                               '    C.IDELEICAO ' +
                               ' FROM ' +
                               '    CANDIDATOS C ' +
                               ' INNER JOIN PARTIDOS P ' +
                               '    ON P.IDPARTIDO = C.IDPARTIDO ' +
                               ' WHERE ' +
                               '    C.NOMECANDIDATO LIKE :NOME ' ;

   SQL_PESQUISARPARTIDOS =     ' SELECT ' +
                               '    P.IDPARTIDO AS Código, ' +
                               '    P.NOMEPARTIDO AS Partido, ' +
                               '    P.SIGLA AS Sigla,  ' +
                               '    P.NUMPARTIDO AS Número ' +
                               ' FROM ' +
                               '    PARTIDOS P ' +
                               ' WHERE ' +
                               '    P.NOMEPARTIDO LIKE :NOME ' ;

   SQL_ATUALIZARDATAELEICAO =  ' UPDATE ' +
                               '    ELEICOES ' +
                               ' SET ' +
                               '    DATAELEICAO = NOW() ' +
                               ' WHERE ' +
                               '    IDELEICAO = 1 ';

implementation

end.
