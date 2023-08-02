import Foundation
import UIKit

final class OnboardingView:UIView {
    
    private let onboardingImageView: UIImageView = {
        let imageViewOnboar = UIImageView()
        imageViewOnboar.contentMode = .scaleAspectFit
        imageViewOnboar.image = UIImage(named: "onboarding")
        imageViewOnboar.translatesAutoresizingMaskIntoConstraints = false
        return imageViewOnboar
    }()
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bienvenidos a nuestra aplicacion mobil"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var onboardingButtton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        return button
    }()
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup() {
        addSubviews()
        configureConstraint()
    }
    private func addSubviews() {
        [onboardingImageView, textLabel, onboardingButtton].forEach(addSubview)
    }
    private func configureConstraint() {
        NSLayoutConstraint.activate([
            
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onboardingButtton.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingButtton.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: onboardingButtton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            onboardingButtton.centerXAnchor.constraint(equalTo: centerXAnchor),
            onboardingButtton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    @objc func showMessage() {
        print("Skip Onboarding")
    }
}
