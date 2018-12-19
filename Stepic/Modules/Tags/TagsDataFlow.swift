//
//  TagsTagsDataFlow.swift
//  stepik-ios
//
//  Created by Stepik on 11/09/2018.
//  Copyright 2018 Stepik. All rights reserved.
//

import Foundation

enum Tags {
    // MARK: Common structs
    struct Tag {
        // cause CourseTag sucks (we should have language in each layer)
        let id: Int
        let title: String
        let summary: String
        let analyticsTitle: String
    }

    // MARK: Use cases

    /// Show tag list
    enum ShowTags {
        struct Request { }

        struct Response {
            let result: Result<[(UniqueIdentifierType, Tag)]>
        }

        struct ViewModel {
            let state: ViewControllerState
        }
    }
    /// Present collection of tag
    enum PresentCollection {
        struct Request {
            let viewModelUniqueIdentifier: UniqueIdentifierType
        }
    }

    // MARK: States

    enum ViewControllerState {
        case loading
        case result(data: [TagViewModel])
        case emptyResult
        case error(message: String)
    }
}