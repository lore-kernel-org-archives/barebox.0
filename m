Delivery-date: Tue, 13 Sep 2022 10:08:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY0yW-003Oc5-6d
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:08:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY0yU-0008KS-LB
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:08:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nOzEiPUhddTHMzCDy8X7HNgpqNBlEnWk2nQ/EfztQ0E=; b=qoGATO9cvrSv4T8grFK0It60mU
	VaST9eeEBD4uN0FpfZ6NVhvLxhZoq1x1sA0PUE7wEHsrIMXJ/BUVzGQIFTOUX6djpLygQbuEL7wz0
	VEcm1FRexLx6cAdTDH/ExytqiiLqis2M09nxbXResuXoerQ933MIWs0pzht0+bm0inz75vOXKhmPm
	LbqNI2Vs/gYhRmq4c07SpMtlWyoIJQS7gtSdbPwEyFIygr1s9P2Ko9zkax8bWaGFNTKAwENjo3lG6
	F0bBVFhlhGqKq5cz0GqChFGUGmhWcuEux0eH1sona316fcllLH0k/NOQc0wjGGZeL5GsMom6aGqTk
	FgUMsOtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY0wQ-0043Fj-3d; Tue, 13 Sep 2022 08:06:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY0w5-00435v-8O
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:06:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0w1-000871-QC; Tue, 13 Sep 2022 10:06:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY0w1-0003Cc-Gz; Tue, 13 Sep 2022 10:06:21 +0200
Date: Tue, 13 Sep 2022 10:06:21 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913080621.GF6477@pengutronix.de>
References: <20220912155436.1565755-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912155436.1565755-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_010625_349467_4A94C979 
X-CRM114-Status: GOOD (  25.38  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: implement of_prepend_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 12, 2022 at 05:54:36PM +0200, Ahmad Fatoum wrote:
> Like of_append_property for adding at the end of properties, implement
> of_prepend_property for placing data into the front.
> 
> This is especially useful to fixup most-specific compatibles into
> existing nodes.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - simplify with malloc/memcpy instead of realloc/memmove (Sascha)
> ---
>  drivers/of/base.c           | 30 ++++++++++++++++++++++++++++++
>  include/of.h                |  8 ++++++++
>  test/self/of_manipulation.c |  2 +-
>  3 files changed, 39 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 212b226eb55c..ea2a88764bb2 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2378,6 +2378,36 @@ int of_append_property(struct device_node *np, const char *name, const void *val
>  	return 0;
>  }
>  
> +int of_prepend_property(struct device_node *np, const char *name, const void *val, int len)
> +{
> +	struct property *pp;
> +	const void *oldval;
> +	void *buf;
> +	int oldlen;
> +
> +	pp = of_find_property(np, name, &oldlen);
> +	if (!pp) {
> +		of_new_property(np, name, val, len);
> +		return 0;
> +	}
> +
> +	oldval = of_property_get_value(pp);
> +
> +	buf = malloc(len + oldlen);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	memcpy(buf, val, len);
> +	memcpy(buf + len, oldval, oldlen);
> +
> +	free(pp->value);
> +	pp->value = buf;
> +	pp->length = len + oldlen;
> +	pp->value_const = NULL;
> +
> +	return 0;
> +}
> +
>  int of_property_sprintf(struct device_node *np,
>  			const char *propname, const char *fmt, ...)
>  {
> diff --git a/include/of.h b/include/of.h
> index 153e75d3e51d..052d5fcad84c 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -135,6 +135,8 @@ extern int of_set_property(struct device_node *node, const char *p,
>  			const void *val, int len, int create);
>  extern int of_append_property(struct device_node *np, const char *p,
>  			      const void *val, int len);
> +extern int of_prepend_property(struct device_node *np, const char *name,
> +			       const void *val, int len);
>  extern struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len);
>  extern struct property *of_new_property_const(struct device_node *node,
> @@ -536,6 +538,12 @@ static inline int of_append_property(struct device_node *np, const char *p,
>  	return -ENOSYS;
>  }
>  
> +static inline int of_prepend_property(struct device_node *np, const char *name,
> +				      const void *val, int len)
> +{
> +	return -ENOSYS;
> +}
> +
>  static inline struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len)
>  {
> diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
> index 7e30a60ca687..f7f95fa269af 100644
> --- a/test/self/of_manipulation.c
> +++ b/test/self/of_manipulation.c
> @@ -103,9 +103,9 @@ static void test_of_property_strings(struct device_node *root)
>  
>  	of_append_property(np4, "property-single", "ayy", 4);
>  
> -	of_append_property(np4, "property-multi", "ayy", 4);
>  	of_append_property(np4, "property-multi", "bee", 4);
>  	of_append_property(np4, "property-multi", "sea", 4);
> +	of_prepend_property(np4, "property-multi", "ayy", 4);
>  
>  	assert_equal(np3, np4);
>  }
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


