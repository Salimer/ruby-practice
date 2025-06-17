class SalaryBonusCalculator
  def initialize(base_salary)
    @base_salary = base_salary
  end

  def find_net_salary
    puts "" "
        Base Salary: #{@base_salary}
        Bonus Percentage: #{calculate_bonus * 100}%
        Bonus Amount: #{calculate_bonus_amount}
        Net Salary: #{calculate_net_salary}
        " ""
  end

  private

  def calculate_bonus
    case @base_salary
    when 0..10000 then 0.25
    when 10001..100000 then 0.15
    when 100001..Float::INFINITY then 0.10
    else 0.0
    end
  end

  def calculate_net_salary
    @base_salary + (@base_salary * calculate_bonus)
  end

  def calculate_bonus_amount
    @base_salary * calculate_bonus
  end
end

# Example usage:
calculator = SalaryBonusCalculator.new(1147)
calculator.find_net_salary
