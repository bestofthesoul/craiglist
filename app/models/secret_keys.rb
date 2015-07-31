
#didnt assign secret key

class SecretKey

  def self.generate
    pool = ('a'..'z').to_a + ('0'..'9').to_a
    secret_key = ""
      
      3.times do
        secret_key << pool.sample
      end
     
     secret_key
  end

end