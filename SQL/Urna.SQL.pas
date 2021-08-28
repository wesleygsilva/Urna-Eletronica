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
                               '    DATAELEICAO < NOW() ';

implementation

end.
