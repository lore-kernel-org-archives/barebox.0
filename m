Delivery-date: Mon, 13 Dec 2021 23:39:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtz1-005ixU-5K
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:39:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyy-00041D-Ra
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:39:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rgbAQuhaoZJA8YbcmttBBTTkUXFK0vuPWxaLXDgphH0=; b=TFCQRpeXEHqMig10tS9fJbQoFN
	nQ69HFUmjKeVnq9awd2sLM/pM9KYGgcE3HL++zWgutI5yacVOhCfQBg6DAl7SOnABbSvxOEcRaUoD
	1Fp5Ucf5Hef77r2l7uAkkmrpcah2eLZ2yBiDWALCwDxDVgAnAYLK9tsg16RRVORTJMnMFQoeV1l8U
	HFRd+Wu5LImYM/Xiot7StQttUAHw4vWG8OHifobIw8pSOV+cPWO/rpDzgZzggk3U9xnXuDnRu6vsf
	L5EWgvuhJgrVXcGUh9PhGjlEfafLFryM/qarmzKZJ5UlXkzSI4TCSrb6vcPsMTwjxvCN2+kG3lxYB
	he30vFgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtxX-00BnL3-JP; Mon, 13 Dec 2021 22:38:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtcV-00BfNb-N7
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:16:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtcU-0001bP-8t; Mon, 13 Dec 2021 23:16:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtcU-00047g-0K; Mon, 13 Dec 2021 23:16:30 +0100
Date: Mon, 13 Dec 2021 23:16:29 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221629.GF6003@pengutronix.de>
References: <20211209105739.3517998-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105739.3517998-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:16:21 up 3 days, 7:01, 33 users, load average: 0.15, 0.08, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141631_852279_B6411B19 
X-CRM114-Status: GOOD (  26.81  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: of_diff: don't mix tabs and spaces for
 indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:57:39AM +0100, Ahmad Fatoum wrote:
> Nodes are indented with spaces, while properties are indented with tabs,
> leading to discrepancies when the indentation doesn't start at a tab
> stop, like when using of_diff:
> 
> chosen {
> + 	barebox-version = "barebox-2021.06.0-20210716-2";
> + 	reset-source = "POR";
> + 	reset-source-instance = <0x0>;
> +        subnode {
> 
> Fix this by using spaces throughout.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 664a3a411eaf..06e37b0fca4a 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2011,12 +2011,7 @@ void of_print_nodes(struct device_node *node, int indent)
>  
>  static void __of_print_property(struct property *p, int indent)
>  {
> -	int i;
> -
> -	for (i = 0; i < indent; i++)
> -		printf("\t");
> -
> -	printf("%s", p->name);
> +	printf("%*s%s", indent * 8, "", p->name);
>  	if (p->length) {
>  		printf(" = ");
>  		of_print_property(of_property_get_value(p), p->length);
> @@ -2034,17 +2029,14 @@ void of_print_properties(struct device_node *node)
>  
>  static int __of_print_parents(struct device_node *node)
>  {
> -	int indent, i;
> +	int indent;
>  
>  	if (!node->parent)
>  		return 0;
>  
>  	indent = __of_print_parents(node->parent);
>  
> -	for (i = 0; i < indent; i++)
> -		printf("\t");
> -
> -	printf("%s {\n", node->name);
> +	printf("%*s%s {\n", indent * 8, "", node->name);
>  
>  	return indent + 1;
>  }
> @@ -2124,14 +2116,14 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
>  			of_diff(ca, cb, indent + 1);
>  		} else {
>  			of_print_parents(a, &printed);
> -			__of_print_nodes(ca, indent, "-");
> +			__of_print_nodes(ca, indent, "- ");
>  		}
>  	}
>  
>  	for_each_child_of_node(b, cb) {
>  		if (!of_get_child_by_name(a, cb->name)) {
>  			of_print_parents(a, &printed);
> -			__of_print_nodes(cb, indent, "+");
> +			__of_print_nodes(cb, indent, "+ ");
>  		}
>  	}
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

