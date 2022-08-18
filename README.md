### CustomOrigin2Obsidian

Setup custom domain to publish obsidian with terraform, No description how using with AWS Route53 on official document ([Set up a custom domain](https://help.obsidian.md/Obsidian+Publish/Set+up+a+custom+domain)), But, I found it at obsidian forum ([Custom domain setup with AWS Route53 and Cloudfront](https://forum.obsidian.md/t/custom-domain-setup-with-aws-route53-and-cloudfront/23313/6)). Make terraform, learn from it and some description for Obsidian Publish user and me.

### Overview for realize

Make AWS CloudFront distribution, set custom origin to obsidian publish, set custom origin header for your custom domain, and create record CNAME to AWS CloudFront distribution on AWS Route53 for routing.
Let's see note and details on forum conversation ([Custom domain setup with AWS Route53 and Cloudfront](https://forum.obsidian.md/t/custom-domain-setup-with-aws-route53-and-cloudfront/23313/6)

- Custom domain must be subdomain that you can define in Route53.
- Custom domain can't include sub directory.

### How to use this module

See example/ directory, you need to customize backend configuration(backend.tf), provider parameters(provider.tf), data source (data.tf), this module parameters (customOrigin2Obsidian.tf) for you.

- Example <https://md.kis9a.com>  
   CloudFront distribution what routed by Route53 custom domain(md.kis9a.com), request to custom origin (publish.obsidian.md) with custom header(X-Obsidian-Custom-Domain: md.kis9a.com). custom origin (publish.obsidian.md) solve request and return your contents. Need custom domain setting in Obsidian app (image: [obsidian custom doamin settings](./example/obsidian-custom-domain-settings.png))
