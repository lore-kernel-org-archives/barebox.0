Delivery-date: Tue, 09 Aug 2022 13:31:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLNRx-00HJmK-FK
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 13:31:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLNRx-0004Ak-Pl
	for lore@pengutronix.de; Tue, 09 Aug 2022 13:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XS39tQUB+UCabAHQb9M4iITHNmI2Rksz5DsLl/94dA4=; b=eDbUruEFhm/5xgNeMQ3MyipBC7
	hrvXNHl5ecxcnidBaRaFDYS85x1483O4Vm6Qwjvji/t+bHehQiAPoNfe8YCNzAFNqUHQ3zFSSmlMM
	UM39K7LUzEfG0uqihcLxdDVRcieKhDI99272q8tAh/YcGhoZy2kluymGlBwqHnBxQ+c34G/03vERw
	nyCFhuoR8kqgffPABEf/iOEpV8MV3OOhAYFLjZ48fHvt8kzWRTJYvbrW5aCdc/TYLxwExmSkSqKF/
	Bf5WnjD/4BgK924XyIm93y4u5snabdi7KmPIPsYkfDgI0yHEJ/Dy6uqMiYkOrnfpCcGvNDC0nXYJ9
	+h3rCGnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNQG-003Y2X-UM; Tue, 09 Aug 2022 11:29:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNQB-003Xyw-TD
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 11:29:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLNQ5-0003mT-GB; Tue, 09 Aug 2022 13:29:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLNQ5-00045k-7G; Tue, 09 Aug 2022 13:29:09 +0200
Date: Tue, 9 Aug 2022 13:29:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809112909.GS31528@pengutronix.de>
References: <20220809100814.1455984-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809100814.1455984-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_042915_964462_E9E3939A 
X-CRM114-Status: GOOD (  24.17  )
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
Subject: Re: [PATCH v2 1/2] of: implement of_append_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 12:08:13PM +0200, Ahmad Fatoum wrote:
> barebox TLVs can be fixed up into a device tree for OS consumption. In
> case of repeated TLVs, we will want barebox to append onto an existing
> property. Add a helper that facilitates this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - early exist with of_new_property instead to simplify code (Sascha)
> ---
>  drivers/of/base.c | 33 +++++++++++++++++++++++++++++++++
>  include/of.h      |  8 ++++++++
>  2 files changed, 41 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 101b2f74c74f..6d762ac43898 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2321,6 +2321,39 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
>  	return 0;
>  }
>  
> +int of_append_property(struct device_node *np, const char *name, const void *val, int len)
> +{
> +	struct property *pp;
> +	int orig_len;
> +	void *buf;
> +
> +	if (!np)
> +		return -ENOENT;
> +
> +	pp = of_find_property(np, name, NULL);
> +	if (!pp) {
> +		of_new_property(np, name, val, len);
> +		return 0;
> +	}
> +
> +	orig_len = pp->length;
> +	buf = realloc(pp->value, orig_len + len);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	memcpy(buf + orig_len, val, len);
> +
> +	pp->value = buf;
> +	pp->length += len;
> +
> +	if (pp->value_const) {
> +		memcpy(buf, pp->value_const, orig_len);
> +		pp->value_const = NULL;
> +	}
> +
> +	return 0;
> +}
> +
>  int of_property_sprintf(struct device_node *np,
>  			const char *propname, const char *fmt, ...)
>  {
> diff --git a/include/of.h b/include/of.h
> index c65cef5a5a7c..97b4b3dd79bd 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -131,6 +131,8 @@ extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
>  
>  extern int of_set_property(struct device_node *node, const char *p,
>  			const void *val, int len, int create);
> +extern int of_append_property(struct device_node *np, const char *p,
> +			      const void *val, int len);
>  extern struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len);
>  extern struct property *of_new_property_const(struct device_node *node,
> @@ -515,6 +517,12 @@ static inline int of_set_property(struct device_node *node, const char *p,
>  	return -ENOSYS;
>  }
>  
> +static inline int of_append_property(struct device_node *np, const char *p,
> +				      const void *val, int len)
> +{
> +	return -ENOSYS;
> +}
> +
>  static inline struct property *of_new_property(struct device_node *node,
>  				const char *name, const void *data, int len)
>  {
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


