Delivery-date: Mon, 08 Aug 2022 13:20:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0nv-00G5iu-9n
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:20:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0nv-0000ku-BL
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1W2ZBDKYeRccTDsIKDKyk64ysxM/bpmsPqCzKZYq0KA=; b=fLT4gEKBqpTMFT2uPsCYz+QK21
	Db1O2es4Fw0PawWqEzD1unBEPTL4kAs1lRFUdS920PRDB09PPzM06VC7fX9vvWvLaV4tHn3mMAq+6
	s3oMgIxwtuKaxE6TYwAAAgRFU2En3cH45Qf7/7wQ/EwUZsdr+LAE6ERQzxvmPQPWtFHlHTMd5Cnk6
	2dvg/9H3XAFcCPfV/SVJnwVBFGRlVIojcFG8RubgVZPIpOk1hEITkGL+I8oRMeFTrH+1RV/cGG5jy
	VSn/JFNUjPPkhpSYlCJ9UFQ6rroS9+gZd9fV0m9r7g0iu4aux8Wu+utATUdlz6xUaCU0qpdDuPtAu
	n2/y2ASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0mf-00DB65-4d; Mon, 08 Aug 2022 11:18:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0ma-00DB4z-5R
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:18:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0mY-0000Zf-4e; Mon, 08 Aug 2022 13:18:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0mX-0005I2-SF; Mon, 08 Aug 2022 13:18:49 +0200
Date: Mon, 8 Aug 2022 13:18:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808111849.GE7333@pengutronix.de>
References: <20220808065639.453483-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808065639.453483-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_041852_240768_DC1090A2 
X-CRM114-Status: GOOD (  22.59  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: base: factor out duplication for property
 formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 08:56:38AM +0200, Ahmad Fatoum wrote:
> We have the same chunk of code with minuscule difference in both
> __of_print_nodes and __of_print_property. Factor it out to simplify
> the follow-up commit.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 33 +++++++++++++++++++--------------
>  1 file changed, 19 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 101b2f74c74f..ac5a14f49919 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2006,6 +2006,22 @@ int of_property_read_string_helper(const struct device_node *np,
>  	return i <= 0 ? -ENODATA : i;
>  }
>  
> +static void __of_print_property_prefixed(const struct property *p, int indent,
> +					 const char *prefix)
> +{
> +	unsigned length;
> +
> +	printf("%s%*s%s", prefix, indent * 8, "", p->name);
> +
> +	length = p->length;
> +	if (length) {
> +		printf(" = ");
> +		of_print_property(of_property_get_value(p), length);
> +	}
> +
> +	printf(";\n");
> +}
> +
>  static int __of_print_nodes(struct device_node *node, int indent, const char *prefix)
>  {
>  	struct device_node *n;
> @@ -2020,14 +2036,8 @@ static int __of_print_nodes(struct device_node *node, int indent, const char *pr
>  
>  	printf("%s%*s%s%s\n", prefix, indent * 8, "", node->name, node->name ? " {" : "{");
>  
> -	list_for_each_entry(p, &node->properties, list) {
> -		printf("%s%*s%s", prefix, (indent + 1) * 8, "", p->name);
> -		if (p->length) {
> -			printf(" = ");
> -			of_print_property(of_property_get_value(p), p->length);
> -		}
> -		printf(";\n");
> -	}
> +	list_for_each_entry(p, &node->properties, list)
> +		__of_print_property_prefixed(p, indent + 1, prefix);
>  
>  	if (ctrlc())
>  		return -EINTR;
> @@ -2049,12 +2059,7 @@ void of_print_nodes(struct device_node *node, int indent)
>  
>  static void __of_print_property(struct property *p, int indent)
>  {
> -	printf("%*s%s", indent * 8, "", p->name);
> -	if (p->length) {
> -		printf(" = ");
> -		of_print_property(of_property_get_value(p), p->length);
> -	}
> -	printf(";\n");
> +	__of_print_property_prefixed(p, indent, "");
>  }
>  
>  void of_print_properties(struct device_node *node)
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


