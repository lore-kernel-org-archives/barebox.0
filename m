Delivery-date: Fri, 28 Jul 2023 08:15:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGl0-00D8CH-A1
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 08:15:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGkx-0003L9-RN
	for lore@pengutronix.de; Fri, 28 Jul 2023 08:15:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yl+4AjaFVYHiQZr+BKZ6H8tk5aCEfTfcKyPHFmMOZlg=; b=keLfSHp2MeamVSjAlpcbD/+dUG
	jV35MIASPv/yK7muCvx8Z7BwY+ffLKmAX8z5lcrDQVK6cvsyS5nt0gwrBFNKybOyqn/NdtBGwtjjK
	NiWHSx97Y2BOXGHTJOk02/fDhtcL5pg9NZM2GoRGFqxN1elroNrhiEUy94bnsjwgKuq+AFH/QZBq2
	Haq9djm9VNQ98MLW9kK6Gq86pa8oLU73Vsf1QpHG45+BtSFrHlTDKbX+T676J9oH8sBDM9Jsk7ou6
	HEjRvydQYOQQhbKFM7h+Tla5p2fRGDIkW2oBvDvlLq39n4EUepL0E29ZDGjh0vXtF9X32jrkG9B7l
	Zh4eXU4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGjx-001rgO-2k;
	Fri, 28 Jul 2023 06:14:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGju-001rfj-28
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 06:14:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGjt-00033Q-DB; Fri, 28 Jul 2023 08:14:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGjt-000481-66; Fri, 28 Jul 2023 08:14:13 +0200
Date: Fri, 28 Jul 2023 08:14:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230728061413.GE18491@pengutronix.de>
References: <20230727155726.2133700-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230727155726.2133700-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_231414_698888_8B964386 
X-CRM114-Status: GOOD (  29.91  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] FIT: don't verify signature of non-signature nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 27, 2023 at 05:57:26PM +0200, Ahmad Fatoum wrote:
> One would expect that all children of a configuration node are signature
> nodes, but OpenEmbedded's core kernel-fitimage.bbclass always generates
> a dummy hash-1 node into configurations with just an algo and no digest,
> which barebox would try to interpret as a FIT configuration leading to
> an error verifying the FIT image:
> 
>   ERROR: FIT: hashed-strings start not found in
>   /configurations/conf-something/hash-1
> 
> Make it possible to boot such FIT images by only verifying nodes that
> are supposed to be signatures. This aligns us with U-Boot behavior, but
> introduces theoretical breakage for FIT images that have signature nodes
> with funny names. Given that everyone uses signature@1 or signature-1 and we even
> hardcode it as places and that the failure mode is to refuse boot of old
> images with new barebox version when FIT image verification is required,
> this is deemed acceptable.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/image-fit.c |  4 ++++
>  drivers/of/base.c  | 15 +++++++++++++++
>  include/of.h       |  6 ++++++
>  3 files changed, 25 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 9bea62bb34a0..e73ed581a2be 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -670,8 +670,12 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
>  	}
>  
>  	for_each_child_of_node(conf_node, sig_node) {
> +		if (!of_node_has_prefix(sig_node, "signature"))
> +			continue;
> +
>  		if (handle->verbose)
>  			of_print_nodes(sig_node, 0, ~0);
> +
>  		ret = fit_verify_signature(sig_node, handle->fit);
>  		if (ret < 0)
>  			return ret;
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4dc1c76b136d..03cceeffc0df 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -24,6 +24,21 @@
>  
>  static struct device_node *root_node;
>  
> +/**
> + * of_node_has_prefix - Test if a node name has a given prefix
> + * @np: The node name to test
> + * @prefix: The prefix to see if @np starts with
> + *
> + * Returns:
> + * * strlen(@prefix) if @np starts with @prefix
> + * * 0 if @np does not start with @prefix
> + */
> +size_t of_node_has_prefix(const struct device_node *np, const char *prefix)
> +{
> +	return np ? str_has_prefix(kbasename(np->full_name), prefix) : 0;
> +}
> +EXPORT_SYMBOL(of_node_has_prefix);
> +
>  bool of_node_name_eq(const struct device_node *np, const char *name)
>  {
>  	const char *node_name;
> diff --git a/include/of.h b/include/of.h
> index 92a15f5c4a13..b3e4d4699248 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -131,6 +131,7 @@ extern int of_n_addr_cells(struct device_node *np);
>  extern int of_bus_n_size_cells(struct device_node *np);
>  extern int of_n_size_cells(struct device_node *np);
>  extern bool of_node_name_eq(const struct device_node *np, const char *name);
> +extern size_t of_node_has_prefix(const struct device_node *np, const char *prefix);
>  
>  extern struct property *of_find_property(const struct device_node *np,
>  					const char *name, int *lenp);
> @@ -377,6 +378,11 @@ static inline bool of_node_name_eq(const struct device_node *np, const char *nam
>  	return false;
>  }
>  
> +static inline size_t of_node_has_prefix(const struct device_node *np, const char *prefix)
> +{
> +	return 0;
> +}
> +
>  static inline int of_parse_partitions(struct cdev *cdev,
>  					  struct device_node *node)
>  {
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


