QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
    ['catcafe'] = {
		label = 'Cat Cafe',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 150 },
			['1'] = { name = 'Novice', payment = 200 },
			['2'] = { name = 'Experienced', payment = 250 },
			['3'] = { name = 'Advanced', payment = 400 },
			['4'] = { name = 'Manager', isboss = true, payment = 500 },
        },
	},
    ['oilwell'] = {
        label = 'Oil Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oilwell Operator',
                payment = 150
            },
            ['1'] = {
                name = 'Oilwell Operator tier 2',
                payment = 200
            },
            ['2'] = {
                name = 'Event Driver tier 2',
                payment = 250
            },
            ['3'] = {
                name = 'Sales',
                payment = 400
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 500
            },
        },
    },
    ['burgershot'] = {
        label = 'Burgershot Employee',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 150
            },
            ['1'] = {
                name = 'Employee',
                payment = 200
            },
            ['2'] = {
                name = 'Burger Flipper',
                payment = 250
            },
            ['3'] = {
                name = 'Manager',
                payment = 400
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 500
            },
        },
    },
    ['vunicorn'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 150
            },
			['1'] = {
                name = 'Employee',
                payment = 250
            },
			['2'] = {
                name = 'Bar Staff',
                payment = 300
            },
			['3'] = {
                name = 'Dancer',
                payment = 450
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 500
            },
            ['5'] = {
                name = 'Owner',
				isboss = true,
                payment = 600
            },
        },
	},
    ['lumberjack'] = {
		label = 'LumberJack',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Logger',
                payment = 150
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 250
            },
            ['1'] = {
                name = 'Cadet',
                payment = 300
            },
            ['2'] = {
                name = 'Officer I',
                payment = 400
            },
            ['3'] = {
                name = 'Officer II',
                payment = 500
            },
            ['4'] = {
                name = 'Officer III',
                payment = 550
            },
            ['5'] = {
                name = 'Corporal',
                payment = 600
            },
            ['6'] = {
                name = 'Sergeant',
                payment = 750
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 800
            },
            ['8'] = {
                name = 'Captain',
                payment = 850
            },
            ['9'] = {
                name = 'Commander',
                payment = 950
            },
            ['10'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 1000
            },
            ['11'] = {
                name = 'Assistant Chief',
                isboss = true,
                payment = 1250
            },
            ['12'] = {
                name = 'Chief of Police',
                isboss = true,
                payment = 1300
            },
            ['13'] = {
                name = 'Commissioner ',
                isboss = true,
                payment = 1500
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee ',
                payment = 250
            },
            ['1'] = {
                name = 'Nurse ',
                payment = 500
            },
            ['2'] = {
                name = 'Junior Paramedic',
                payment = 600
            },
            ['3'] = {
                name = 'Senior Paramedic',
                payment = 800
            },
            ['4'] = {
                name = 'Junior Doctor',
                payment = 1000
            },
            ['5'] = {
                name = 'Senior Doctor',
                payment = 1250
            },
            ['6'] = {
                name = 'Medic Supervisor',
                isboss = true,
                payment = 1300
            },
            ['7'] = {
                name = 'Chief of MD',
                isboss = true,
                payment = 1500
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'House Sales',
                payment = 200
            },
			['2'] = {
                name = 'Business Sales',
                payment = 250
            },
			['3'] = {
                name = 'Broker',
                payment = 300
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 500
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Driver',
                payment = 250
            },
			['2'] = {
                name = 'Event Driver',
                payment = 300
            },
			['3'] = {
                name = 'Sales',
                payment = 400
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 500
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 250
            },
			['2'] = {
                name = 'Business Sales',
                payment = 300
            },
			['3'] = {
                name = 'Finance',
                payment = 400
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 500
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 200
            },
			['1'] = {
                name = 'Novice',
                payment = 300
            },
			['2'] = {
                name = 'Experienced',
                payment = 400
            },
			['3'] = {
                name = 'Advanced',
                payment = 550
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 700
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 500
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 250
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 150
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 100
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 150
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 100
            },
        },
	},
}