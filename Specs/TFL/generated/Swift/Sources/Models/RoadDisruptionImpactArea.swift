//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RoadDisruptionImpactArea: Codable, Equatable {

    public var endDate: Date?

    public var endTime: String?

    public var id: Int?

    public var polygon: DbGeography?

    public var roadDisruptionId: String?

    public var startDate: Date?

    public var startTime: String?

    public init(endDate: Date? = nil, endTime: String? = nil, id: Int? = nil, polygon: DbGeography? = nil, roadDisruptionId: String? = nil, startDate: Date? = nil, startTime: String? = nil) {
        self.endDate = endDate
        self.endTime = endTime
        self.id = id
        self.polygon = polygon
        self.roadDisruptionId = roadDisruptionId
        self.startDate = startDate
        self.startTime = startTime
    }

    private enum CodingKeys: String, CodingKey {
        case endDate
        case endTime
        case id
        case polygon
        case roadDisruptionId
        case startDate
        case startTime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        endDate = try container.decodeIfPresent(.endDate)
        endTime = try container.decodeIfPresent(.endTime)
        id = try container.decodeIfPresent(.id)
        polygon = try container.decodeIfPresent(.polygon)
        roadDisruptionId = try container.decodeIfPresent(.roadDisruptionId)
        startDate = try container.decodeIfPresent(.startDate)
        startTime = try container.decodeIfPresent(.startTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(endDate, forKey: .endDate)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(id, forKey: .id)
        try container.encode(polygon, forKey: .polygon)
        try container.encode(roadDisruptionId, forKey: .roadDisruptionId)
        try container.encode(startDate, forKey: .startDate)
        try container.encode(startTime, forKey: .startTime)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RoadDisruptionImpactArea else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.endTime == object.endTime else { return false }
      guard self.id == object.id else { return false }
      guard self.polygon == object.polygon else { return false }
      guard self.roadDisruptionId == object.roadDisruptionId else { return false }
      guard self.startDate == object.startDate else { return false }
      guard self.startTime == object.startTime else { return false }
      return true
    }

    public static func == (lhs: RoadDisruptionImpactArea, rhs: RoadDisruptionImpactArea) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}