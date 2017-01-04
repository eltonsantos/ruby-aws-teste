require 'aws-sdk'

class Lista

  def initialize(access_key_id, secret_access_key)
    Aws.config.update({
       credentials: Aws::Credentials.new('AKIAJ7AMFSAZM3GE37YQ', '2P2U2qQqRM5GdfoOR8rYFvYBNGm45pQghaukLpGV')
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