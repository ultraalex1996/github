class UserCard
  attr_accessor :first_name,
                :last_name,
                :id

  attr_reader :records

  @@users_count = 0

  def initialize(first_name,
                 last_name)
    @@users_count += 1
    @id = @@users_count
    @first_name = first_name
    @last_name  = last_name
    @records = []
  end

  def write_record(record)
    @records << record
  end
end
