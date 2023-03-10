Delivery-date: Fri, 10 Mar 2023 10:52:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZQM-00Fw8e-Sr
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:52:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZQM-00004t-JL
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:52:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sohWyP5RCaodrYJ6ka1MHj0LZFwfNn+2CuTzWZJ3ZtM=; b=yjH6lDEnZ3dtieMSzpfKAW0ZKB
	9jR4rKRra5H2I9rgRnV5iPpo6icWn36kMTdF6eDurrSN1Yqams9iwMMxJJ1F+Zjd+hP4OYuiMKd4I
	7YTfccs/yHnvA+BcmVHCc7Z9hS3gkffNwMT2n/sh7fUBwOOIXP74xhFKX7H1dYqAVJyjhSCOgnRBn
	e9khynNN46qTPyhH74XHt2j5Z+X9SUsPBXLpZNsQvsxgxvMV+srahIp8AU2cQiWsJ44YyUQrZBYW4
	zqJhkhYBZb6qkR/eszRNppYww89oO7MsL87r2JnmtzftPXakVn1bzVI+mYkfv34XSoSdUDlLGEhln
	FCYNjMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZPD-00E3AX-EJ; Fri, 10 Mar 2023 09:51:19 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZP6-00E38H-Nk
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:51:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZP5-0008Hf-8y; Fri, 10 Mar 2023 10:51:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZP5-0007Jb-0u; Fri, 10 Mar 2023 10:51:11 +0100
Date: Fri, 10 Mar 2023 10:51:11 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230310095110.GB15436@pengutronix.de>
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_015112_790421_25EE3F88 
X-CRM114-Status: GOOD (  22.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] of: base: factor out of_merge_nodes from
 of_copy_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 05:53:50PM +0100, Ahmad Fatoum wrote:
> Later commit will need to merge two DTs from the root up. Refactor
> that part out of of_copy_node to make it usable on its own.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v1 -> v2:
>   - no changes
> ---
>  drivers/of/base.c | 17 ++++++++++++-----
>  include/of.h      |  1 +
>  2 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 937847f44ab7..1221cd316cdf 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2616,19 +2616,26 @@ out:
>  	return dn;
>  }
>  
> -struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
> +void of_merge_nodes(struct device_node *np, const struct device_node *other)
>  {
> -	struct device_node *np, *child;
> +	struct device_node *child;
>  	struct property *pp;
>  
> -	np = of_new_node(parent, other->name);
> -	np->phandle = other->phandle;
> -
>  	list_for_each_entry(pp, &other->properties, list)
>  		of_new_property(np, pp->name, pp->value, pp->length);
>  
>  	for_each_child_of_node(other, child)
>  		of_copy_node(np, child);
> +}
> +
> +struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
> +{
> +	struct device_node *np;
> +
> +	np = of_new_node(parent, other->name);
> +	np->phandle = other->phandle;
> +
> +	of_merge_nodes(np, other);
>  
>  	return np;
>  }
> diff --git a/include/of.h b/include/of.h
> index 7ee1304b932b..1a38774615a4 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -180,6 +180,7 @@ extern struct device_node *of_new_node(struct device_node *parent,
>  				const char *name);
>  extern struct device_node *of_create_node(struct device_node *root,
>  					const char *path);
> +extern void of_merge_nodes(struct device_node *np, const struct device_node *other);
>  extern struct device_node *of_copy_node(struct device_node *parent,
>  				const struct device_node *other);
>  extern struct device_node *of_dup(const struct device_node *root);
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


