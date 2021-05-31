Delivery-date: Mon, 31 May 2021 09:25:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIK-00031h-Fm
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIJ-0005sO-H2
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKuYv0hJzQ6oSl1yy8AOcmSaiWGfmjACRZEdjoE2edA=; b=YnDVNxJo96JzjE1mxhh/q288uV
	5Jfk7o5VQkjDiXl3CY/rJSHfUF/884lhLBvBMqggKmWH4hRE31xcIGpPkhTfHywYx3c+6/6j6VkT3
	ilt2Xfv1n0JhxqbP7G9Hz1RYbGE/E7Rs+vmNqhqyRntLkBDQ2vprHlWu1NOj9dDQgVjsGsk+yMn4z
	MSF6624ETAAZmAiPG6p71V6yEz7JuqKFtteQUEWvZIdnKOwrmU2gfvHyBQtK4QXstYk/tQn7WGtqR
	76uTKRwrmtdf3esWX7+uA0lJWylB9YNsAhCw4tqYWphz25jDmAmgen2uFkI3gGWwlaHKzo9y54YHR
	Xjg+bQow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHD-00BAmB-U3; Mon, 31 May 2021 07:23:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncH9-00BAlM-9U
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:23:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncH8-0005L0-2J; Mon, 31 May 2021 09:23:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncH7-0003nr-G7; Mon, 31 May 2021 09:23:49 +0200
Date: Mon, 31 May 2021 09:23:49 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210531072349.GH5211@pengutronix.de>
References: <20210529062541.1123023-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210529062541.1123023-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:23:38 up 102 days, 10:47, 123 users,  load average: 0.97, 0.68,
 0.45
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002351_354092_A3FD417F 
X-CRM114-Status: GOOD (  24.50  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: base: constify some property pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 28, 2021 at 11:25:41PM -0700, Trent Piepho wrote:
> Make the propery pointers in a few OF functions that read data const.
> They don't modify the property.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
>  drivers/of/base.c |  4 ++--
>  include/of.h      | 10 +++++-----
>  2 files changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 6fe02649e..04814c8f7 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1048,7 +1048,7 @@ int of_property_match_string(struct device_node *np, const char *propname,
>  }
>  EXPORT_SYMBOL_GPL(of_property_match_string);
>  
> -const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
> +const __be32 *of_prop_next_u32(const struct property *prop, const __be32 *cur,
>  			u32 *pu)
>  {
>  	const void *curv = cur;
> @@ -1074,7 +1074,7 @@ out_val:
>  }
>  EXPORT_SYMBOL_GPL(of_prop_next_u32);
>  
> -const char *of_prop_next_string(struct property *prop, const char *cur)
> +const char *of_prop_next_string(const struct property *prop, const char *cur)
>  {
>  	const void *curv = cur;
>  	const void *value;
> diff --git a/include/of.h b/include/of.h
> index 645f429bd..4adbb7d54 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -95,7 +95,7 @@ static inline void of_write_number(void *__cell, u64 val, int size)
>  	}
>  }
>  
> -static inline const void *of_property_get_value(struct property *pp)
> +static inline const void *of_property_get_value(const struct property *pp)
>  {
>  	return pp->value ? pp->value : pp->value_const;
>  }
> @@ -216,9 +216,9 @@ extern int of_property_read_string_helper(const struct device_node *np,
>  					      const char *propname,
>  					      const char **out_strs, size_t sz, int index);
>  
> -extern const __be32 *of_prop_next_u32(struct property *prop,
> +extern const __be32 *of_prop_next_u32(const struct property *prop,
>  				const __be32 *cur, u32 *pu);
> -extern const char *of_prop_next_string(struct property *prop, const char *cur);
> +extern const char *of_prop_next_string(const struct property *prop, const char *cur);
>  
>  extern int of_property_write_bool(struct device_node *np,
>  				const char *propname, const bool value);
> @@ -520,13 +520,13 @@ static inline int of_property_read_string_helper(const struct device_node *np,
>  	return -ENOSYS;
>  }
>  
> -static inline const __be32 *of_prop_next_u32(struct property *prop,
> +static inline const __be32 *of_prop_next_u32(const struct property *prop,
>  					const __be32 *cur, u32 *pu)
>  {
>  	return 0;
>  }
>  
> -static inline const char *of_prop_next_string(struct property *prop,
> +static inline const char *of_prop_next_string(const struct property *prop,
>  					const char *cur)
>  {
>  	return NULL;
> -- 
> 2.26.2
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

