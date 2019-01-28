//
// DeploymentResp.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct DeploymentResp: Codable {

    public var createdAt: String?
    public var creator: Any?
    public var _description: String?
    public var _id: Int?
    public var payload: String?
    public var sha: String?
    public var statusesUrl: String?
    public var updatedAt: String?
    public var url: String?

    public init(createdAt: String?, creator: Any?, _description: String?, _id: Int?, payload: String?, sha: String?, statusesUrl: String?, updatedAt: String?, url: String?) {
        self.createdAt = createdAt
        self.creator = creator
        self._description = _description
        self._id = _id
        self.payload = payload
        self.sha = sha
        self.statusesUrl = statusesUrl
        self.updatedAt = updatedAt
        self.url = url
    }

    public enum CodingKeys: String, CodingKey { 
        case createdAt = "created_at"
        case creator
        case _description = "description"
        case _id = "id"
        case payload
        case sha
        case statusesUrl = "statuses_url"
        case updatedAt = "updated_at"
        case url
    }


}
