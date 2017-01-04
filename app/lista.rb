require 'aws-sdk'

class Lista

  def initialize(access_key_id, secret_access_key)
    Aws.config.update({
       credentials: Aws::Credentials.new('AKIAIRY5RJXP5HUNQOPQ', 'dCnoLBNz4Zw/lzd/FAq5u8IzIszgQIP8Zx5XPeM8')
    })
    Aws.config.update({region: 'sa-east-1'})
  end

  def listar
    # pegando info sobre as instancias
    ec2 = Aws::EC2::Resource.new(region: 'sa-east-1')
    ec2.instances.each do |i|
      puts 'ID:     ' +i.id #id da instancia
      puts 'Estado: ' +i.state.name
    end
  end

end