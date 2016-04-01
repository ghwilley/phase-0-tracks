#build out of data structure
storage_facility = {
#first floor
  first_floor: {
    #floor status
    floor_info: {
      status: 'avail',
      total_units: 2,
      units_avail: 1
    },
    #units listed below
    unit_101:[
      'boxes',
      'sacks of flour',
      'painting supplies'
    ]
  },
#second floor
  second_floor: {
    #floor status
    floor_info: {
      status: 'avail',
      total_units: 7,
      units_avail: 5
    },
    #Units listed below
    unit_201: [
      'bottles of wine',
      'lamps',
      'couch',
      book_collection = [
        'War and Peace',
        '1Q84',
        'Ready Player One'
      ]
    ],
    unit_204: [
      'counterfeit shoes',
      'knock-off swingline staplers'    
    ]
  },
#third floor
  third_floor: {
    #floor status
    floor_info: {
      status: 'under construction',
      total_units: 0,
      units_avail: 0
    }
    #units listed below here
  }
}

#TESTING ACCESS
p storage_facility[:third_floor][:floor_info][:status]

p storage_facility[:second_floor][:unit_201][3].push('Harry Potter')

p storage_facility[:second_floor][:unit_204].length