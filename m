Delivery-date: Wed, 07 Dec 2022 07:59:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oOy-00DLKs-3Z
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 07:59:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oOx-0007rm-Ef
	for lore@pengutronix.de; Wed, 07 Dec 2022 07:59:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qbZVTPLhs5a1sVeUAiZLitjwi3tNe4i0/dk//oFHQiI=; b=ylBCgw9h2K7m+6lfDvSA2ZSdib
	2/foPztNteRySosMjZb/1XBXgeh6mM3k5gqXSS/m52/GgSpSoXAF+vvMER5tLDYcuvpDMpLeLLpTe
	29VdZuMeKRcL2y+Vq3ba365etwg65EPSLJCd1c22+yxRd1AlwRT8rTTB7yKQhhHZ+FiTnh1+Vjsh2
	DUBx45n7wZc7S98+gaWfeJ+nK8VYXB7KJR21AFFH9cDT4sQDPAyNOUMPMCpjWen/kbEy4y19f87p9
	FARy0fLm7wfjWaqqVUZoWYMrPvfud1ROjr7N+qayQ7rWNd7Udl5wgvg/2GeI0CFo/ozHVhTAJgpIy
	xAlrOm9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oNl-00Dan3-IE; Wed, 07 Dec 2022 06:58:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oNe-00Dac4-W2
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 06:58:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oNd-0007jZ-Md; Wed, 07 Dec 2022 07:58:09 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oNd-0000Qx-Fd; Wed, 07 Dec 2022 07:58:09 +0100
Date: Wed, 7 Dec 2022 07:58:09 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207065809.GZ29728@pengutronix.de>
References: <20221205133227.3010785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205133227.3010785-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_225811_049242_7592C632 
X-CRM114-Status: GOOD (  22.06  )
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
Subject: Re: [PATCH 1/2] of: have of_property_match_string accept pointer to
 const device_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 02:32:26PM +0100, Ahmad Fatoum wrote:
> This function need not have mutable access to the device node, so make
> the parameter const to allow calling it from more places without
> sacrificing cost safety.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 2 +-
>  include/of.h      | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 2eee1279a98d..221050a19715 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1049,7 +1049,7 @@ EXPORT_SYMBOL_GPL(of_property_read_string);
>   * This function searches a string list property and returns the index
>   * of a specific string value.
>   */
> -int of_property_match_string(struct device_node *np, const char *propname,
> +int of_property_match_string(const struct device_node *np, const char *propname,
>  			     const char *string)
>  {
>  	struct property *prop = of_find_property(np, propname, NULL);
> diff --git a/include/of.h b/include/of.h
> index 052d5fcad84c..c19a17584e47 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -229,7 +229,7 @@ extern int of_property_read_variable_u64_array(const struct device_node *np,
>  extern int of_property_read_string(struct device_node *np,
>  				   const char *propname,
>  				   const char **out_string);
> -extern int of_property_match_string(struct device_node *np,
> +extern int of_property_match_string(const struct device_node *np,
>  				    const char *propname,
>  				    const char *string);
>  extern int of_property_read_string_helper(const struct device_node *np,
> @@ -616,7 +616,7 @@ static inline int of_property_read_string(struct device_node *np,
>  	return -ENOSYS;
>  }
>  
> -static inline int of_property_match_string(struct device_node *np,
> +static inline int of_property_match_string(const struct device_node *np,
>  				const char *propname, const char *string)
>  {
>  	return -ENOSYS;
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


