//
//  TodoDraftStore.swift
//  TodoAppFlux
//
//  Created by marty-suzuki on 2018/07/01.
//  Copyright © 2018年 marty-suzuki. All rights reserved.
//

import Flux

final class TodoDraftStore: Store<TodoAction> {
    static let shared = TodoDraftStore()

    private(set) var text: String?

    override init(dispatcher: Dispatcher = .shared) {
        super.init(dispatcher: dispatcher)
    }

    override func onDispatch(_ action: TodoAction) {
        switch action {
        case .addTodo,
             .stopEditingTodo:
            self.text = nil

        case let .updateDraft(text):
            self.text = text

        default:
            return
        }

        emitChange()
    }
}