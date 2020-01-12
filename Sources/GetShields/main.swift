import Foundation
import Publish
import Plot
import StevenPaulJobsTheme

struct BulletPoint: BulletPointable {
    var symbol: String?
    var tags: [String]?
    var images: [String]?
    var title: String
    var description: String
    var href: String?
}

struct CommunityResource: CommunityResourcable {
    var title: String
    var description: String
    var href: String
}

struct Header: HeaderSectionable {
    var title: String = "Get Shields"
    var subtitle: String = "Regain control of your experience"
}

struct Product: ProductSectionable {
    var title: String = "Apps"
    var subtitle: String = "iPhone, iPad, and Mac Apps."
    var features: [BulletPointable] = [
        BulletPoint(symbol: nil,
                    tags: ["macOS 10.15+"],
                    images: ["news-shield-macos"],
                    title: "News Shield",
                    description: "redacts or truncates non-news from news publications. Our goal is to improve journalism by removing sentences that are non-news so that readers receive actual news.",
                    href: "https://newsshield.app")
    ]
}

struct Community: CommunitySectionable {
    var title: String = "Open Source"
    var subtitle: String = "GitHub hosted community driven filter lists"
    var resources: [CommunityResourcable] = [
        CommunityResource(title: "News Shield classifictions",
                          description: "Open source list of classifictions used to train the News Sheild machine learning algorithm",
                          href: "https://github.com/getshields/newslist")
    ]
}

// MARK: - Create Theme

struct GetShields: StevenPaulJobsThemable {
    
    enum SectionID: String, WebsiteSectionID {
        case posts
    }
    
    struct ItemMetadata: WebsiteItemMetadata {}
    
    // Update these properties to configure your website:
    var url = URL(string: "https://getshields.com")!
    var name = "Get Shields"
    var description = "Regain control of your experience"
    var language: Language { .english }
    var imagePath: Path? { nil }
    
    var css: String? = "/css/get-shields-styles.css"
    var keywords: String = "Get Shields, News Shield"
    var copyright: String = "Copyright © 2019 - 2020 Get Shields"
    var hasPrivacyURL: Bool = false
    var hero: HeroSectionable? = nil
    var header: HeaderSectionable? = Header()
    var why: WhySectionable? = nil
    var how: HowSectionable? = nil
    var product: ProductSectionable? = Product()
    var features: FeaturesSectionable? = nil
    var brands: BrandsSectionable? = nil
    var community: CommunitySectionable? = Community()
    var download: DownloadSectionable? = nil
}

// This will generate your website using the built-in Foundation theme:
try GetShields().publish(withTheme: .stevenPaulJobs)
