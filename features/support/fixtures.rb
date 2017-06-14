module Fixtures

  def self.digital_specialists_service
    return {
      # `nil` values should be updated within the step when this fixture is used
      id: nil,
      supplierId: nil,
      frameworkSlug: nil,
      lot: 'digital-specialists',
      developerLocations: [
          "London",
          "Scotland"
        ],
      developerPriceMax: "200",
      developerPriceMin: "100",
      bespokeSystemInformation: true,
      dataProtocols: true,
      helpGovernmentImproveServices: true,
      openStandardsPrinciples: true
    }
  end

  def self.digital_outcomes_service
    return {
      # `nil` values should be updated within the step when this fixture is used
      id: nil,
      supplierId: nil,
      frameworkSlug: nil,
      lot: 'digital-outcomes',
      bespokeSystemInformation: true,
      dataProtocols: true,
      deliveryTypes: [
        "Agile coaching"
      ],
      helpGovernmentImproveServices: true,
      locations: [
        "London",
        "Scotland"
      ],
      openStandardsPrinciples: true,
    }
  end

  def self.user_research_participants_service
    return {
      # `nil` values should be updated within the step when this fixture is used
      id: nil,
      supplierId: nil,
      frameworkSlug: nil,
      lot: 'user-research-participants',
      anonymousRecruitment: true,
      locations: [
        "London",
        "Scotland"
      ],
      manageIncentives: true,
      recruitFromList: true,
      recruitMethods: [
        "Entirely offline"
      ]
    }
  end

  def self.user_research_studios_service
    return {
      # `nil` values should be updated within the step when this fixture is used
      id: nil,
      supplierId: nil,
      frameworkSlug: nil,
      lot: 'user-research-studios',
      labEyeTracking: "Yes \u2013 for an additional cost",
      labDesktopStreaming: "Yes \u2013 for an additional cost",
      labCarPark: "Local public parking provided",
      labTechAssistance: "Yes \u2013 for an additional cost",
      labAccessibility: "Access is via steps and no hearing loops are present",
      labWiFi: true,
      labViewingArea: "No",
      labTimeMin: "8 hours",
      labSize: "25",
      labPublicTransport: "Regular bus services provided to local populations such as Gloucester and Cheltenham in addition to train stations",
      labAddressPostcode: "GDS20 5DM",
      labPriceMin: "949",
      labDeviceStreaming: "Yes \u2013 for an additional cost",
      labAddressBuilding: "The Great Briefs by Whitechapel, Marketplace Street",
      labBabyChanging: false,
      labStreaming: "Yes \u2013 for an additional cost",
      labAddressTown: "GDSbury",
      labHosting: "Yes \u2013 included as standard",
      labToilets: true,
      serviceName: "GDSvieux Innovation Lab",
      labWaitingArea: "Yes \u2013 included as standard"
    }
  end

  def self.digital_specialists_brief
    return {
      # `nil` values should be updated within the step when this fixture is used
      frameworkSlug: nil,
      userId: nil,
      lot: 'digital-specialists',
      culturalFitCriteria: [
        "Just a great guy gal",
        "blah blah"
      ],
      culturalWeighting: 5,
      essentialRequirements: [
        "Boil kettle",
        "Taste tea",
        "Wash mug",
        "Dry mug"
      ],
      existingTeam: "Lots of us",
      location: "London",
      niceToHaveRequirements: [
        "Talk snobbishly about water quality",
        "Sip quietly",
        "Provide biscuits"
      ],
      numberOfSuppliers: 3,
      organisation: "NAO",
      priceWeighting: 20,
      requirementsLength: "2 weeks",
      specialistRole: "developer",
      specialistWork: "Drink tea",
      startDate: "2016-12-31",
      summary: "Drink lots of tea. Brew kettle.",
      technicalWeighting: 75,
      title: "Tea drinker",
      workingArrangements: "Hard work",
      workplaceAddress: "London",
      questionAndAnswerSessionDetails: "Here be Q&A details"
    }
  end

  def self.digital_outcomes_brief
    return {
      # `nil` values should be updated within the step when this fixture is used
      frameworkSlug: nil,
      userId: nil,
      lot: "digital-outcomes",
      backgroundInformation: "Some background information.",
      budgetRange: "The range of the budget",
      culturalFitCriteria: [
        "Must be up in work at the crack of dawn every day.",
        "Must love a good game of hide and seek."
      ],
      culturalWeighting: 5,
      endUsers: "Tout le monde",
      essentialRequirements: [
        "Understand the rules.",
        "Hide dead good.",
      ],
      existingTeam: "Lots of us",
      location: "London",
      niceToHaveRequirements: [
        "Be invisible.",
        "Be able to count to 100 really really quickly.",
        "Have a nice smile"
      ],
      numberOfSuppliers: 3,
      organisation: "The Big Hide And Seek Company",
      outcome: "A thingy to do a thingy",
      phase: "beta",
      priceCriteria: "Fixed price",
      priceWeighting: 20,
      startDate: "2017-09-28",
      successCriteria: [
        "The thingy works"
      ],
      summary: "A team of exceptional hide and seek players.",
      technicalWeighting: 75,
      title: "Hide and seek ninjas",
      workingArrangements: "You work.",
      workplaceAddress: "Wherever we send you",
      questionAndAnswerSessionDetails: "Here be Q&A details"
    }
  end

  def self.user_research_participants_brief
    return {
      # `nil` values should be updated within the step when this fixture is used
      frameworkSlug: nil,
      userId: nil,
      lot: "user-research-participants",
      culturalWeighting: 20,
      essentialRequirements: [
        "The horses must have four hooves",
        "The horses must have lovely coats",
        "The horses must be many hands tall"
      ],
      location: "London",
      niceToHaveRequirements: [
        "Liking sugar lumps",
        "Being good at jumping over fences",
        "Saying \"Neigh\""
      ],
      numberOfSuppliers: 3,
      organisation: "The Horse Force",
      participantSpecification: "Loads of horses",
      participantsPerRound: "At least 100",
      priceWeighting: 20,
      researchAddress: "64 Horse Road, Horseville.",
      researchDates: "January to April",
      researchFrequency: "At least 60 Hz",
      researchRounds: "Seven",
      successCriteria: [
        "One criterion",
        "Another criterion"
      ],
      summary: "Horses are really good.",
      technicalWeighting: 60,
      title: "I need horses.",
      questionAndAnswerSessionDetails: "Here be Q&A details"
    }
  end

  def self.digital_specialists_brief_response
    return {
      # `nil` values should be updated within the step when this fixture is used
      frameworkSlug: nil,
      userId: nil,
      briefId: nil,
      supplierId: nil,
      availability: "27/12/17",
      dayRate: "200",
      essentialRequirements: [
        { "evidence": "first evidence" },
        { "evidence": "second evidence" },
        { "evidence": "third evidence" },
        { "evidence": "fourth evidence" },
      ],
      essentialRequirementsMet: true,
      niceToHaveRequirements: [
        { "yesNo": true, "evidence": "First nice to have evidence" },
        { "yesNo": true, "evidence": "Second nice to have evidence" },
        { "yesNo": false },
      ],
      respondToEmailAddress: "example-email@gov.uk",
    }
  end
end
