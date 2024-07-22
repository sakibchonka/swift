class Observable<T> {
    
    typealias listenerBlock = ((T?) -> Void)
    
    private var listener: listenerBlock?
    
    var value: T? {
        didSet {
            DispatchQueue.main.async { [weak self] in
                self?.listener?(self?.value)
            }
        }
    }
    
    init(_ value: T?) {
        self.value = value
    }
    
    func bind(_ listener: @escaping listenerBlock) {
        listener(value)
        self.listener = listener
    }

}
