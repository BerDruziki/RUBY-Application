# Classe de conexão com o banco, utilei o PgSQL
require 'pg'

class DbConnection
  def initialize(host, dbname, user, password, port)
    @host = host
    @dbname = dbname
    @user = user
    @password = password
    @port = port
  end

  def conectar
    begin
      @conexao = PG.connect(host: @host, dbname: @dbname, user: @user, password: @password, port: @port)

      puts "Conexão estabelecida com sucesso."

    rescue PG::Error => e
      puts "Erro ao conectar ao banco de dados: #{e.message}"

    ensure
      return @conexao
    end
  end

  def desconectar
    @conexao.close if @conexao
    puts "Conexão fechada."
  end
end
