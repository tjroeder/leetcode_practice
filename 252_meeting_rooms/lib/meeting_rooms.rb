require 'pry'

# @param {Integer[][]} intervals
# @return {Boolean}
def can_attend_meetings(intervals)
  first_sort = intervals.sort
  intervals.flatten.sort == first_sort.flatten
end
