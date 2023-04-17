Delivery-date: Mon, 17 Apr 2023 09:09:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIzo-0061wQ-S7
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 09:09:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIzo-0003uF-MS
	for lore@pengutronix.de; Mon, 17 Apr 2023 09:09:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5YQZ5cG0IlBtoOIvPh6pkl6mZ2wHCO1MsSyNje4DHRI=; b=PV2y7YnIxw4+OOtjcGL2D3OydI
	mXQYX0nvn5uzvCcBcGRz5c6zyHS6c2SYv+9uMG3wdDqF7K3OYCCyzhoDGjBpTQbyOYCGuAsxcbvKW
	nQTXLRSJC9tTFuGl73YrnsVzJSNNFOV6CJ3BKZg14vrOSfenghr4W0Pl1QcWSOTEjit/w3NJTzMZ2
	ys9oGLatb49gZtE8EqShngXPf6ox9a5hFeqxrcxrvIkjOnu8MHpNJXXng1qUeJZYv0REVn+C/Mvk4
	qVOL07BLP9DPLMkIs5cvALXMVNdoN2yR8N1pNlqDY2gClVqHWALSJ9ywzo5++24zm2WktVBQN9D7J
	fQU0Xf0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIyp-00F8cP-0w;
	Mon, 17 Apr 2023 07:08:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIym-00F8bl-32
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 07:08:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIyl-0003oy-KY; Mon, 17 Apr 2023 09:08:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIyl-0005tE-1n; Mon, 17 Apr 2023 09:08:47 +0200
Date: Mon, 17 Apr 2023 09:08:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Message-ID: <20230417070847.GK13543@pengutronix.de>
References: <20230414183545.2039170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414183545.2039170-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_000849_003046_B1B6DEE7 
X-CRM114-Status: GOOD (  24.27  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: implement of_copy_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 08:35:44PM +0200, Ahmad Fatoum wrote:
> For use in fixups, it can be useful to copy a property verbatim from the
> barebox DT to the kernel DT. Add a helper that does just that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c           | 16 ++++++++++++++++
>  include/of.h                | 10 ++++++++++
>  test/self/of_manipulation.c |  2 +-
>  3 files changed, 27 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 01bb7e3906b4..5644e8e9534d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2318,6 +2318,22 @@ struct property *of_rename_property(struct device_node *np,
>  	return pp;
>  }
>  
> +struct property *of_copy_property(const struct device_node *src,
> +				  const char *propname,
> +				  struct device_node *dst)
> +{
> +	struct property *prop;
> +
> +	prop = of_find_property(src, propname, NULL);
> +	if (!prop)
> +		return NULL;
> +
> +	return of_new_property(dst, propname,
> +			       of_property_get_value(prop), prop->length);
> +}
> +EXPORT_SYMBOL_GPL(of_copy_property);
> +
> +
>  /**
>   * of_set_property - create a property for a given node
>   * @node - the node
> diff --git a/include/of.h b/include/of.h
> index 22358f5579ec..4b0266fd3118 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -152,6 +152,9 @@ extern struct property *__of_new_property(struct device_node *node,
>  extern void of_delete_property(struct property *pp);
>  extern struct property *of_rename_property(struct device_node *np,
>  					   const char *old_name, const char *new_name);
> +extern struct property *of_copy_property(const struct device_node *src,
> +					 const char *propname,
> +					 struct device_node *dst);
>  
>  extern struct device_node *of_find_node_by_name(struct device_node *from,
>  	const char *name);
> @@ -576,6 +579,13 @@ static inline struct property *__of_new_property(struct device_node *node,
>  	return NULL;
>  }
>  
> +static inline struct property *of_copy_property(const struct device_node *src,
> +						const char *propname,
> +						struct device_node *dst)
> +{
> +	return NULL;
> +}
> +
>  static inline void of_delete_property(struct property *pp)
>  {
>  }
> diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
> index f7f95fa269af..64913ac1eab8 100644
> --- a/test/self/of_manipulation.c
> +++ b/test/self/of_manipulation.c
> @@ -63,7 +63,7 @@ static void test_of_basics(struct device_node *root)
>  	of_property_write_u32(node2, "property2", 2);
>  
>  	of_property_write_u32(node1, "property3", 1);
> -	of_property_write_u32(node1, "property2", 2);
> +	of_copy_property(node2, "property2", node1);
>  	of_rename_property(node1, "property3", "property1");
>  
>  	assert_equal(node1, node2);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


