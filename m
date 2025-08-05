Delivery-date: Tue, 05 Aug 2025 22:15:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujO4P-007PIX-0I
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 22:15:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujO4O-00038i-Dr
	for lore@pengutronix.de; Tue, 05 Aug 2025 22:15:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YuecBw/BD7XskqyoahsO6PQ5r6vsowGnw1ZEE3ZDTas=; b=AJ4KnR3IXB7iRuag0O1F9YWlHF
	WcYzFixgeEwZfxZD0shzmf+Bu70tTtWt9rkx7t8vQxiSD18prH+k3H1FyHb2bPQMz8WTrB2r7j2Iz
	FiHbdQIqz30uUMISNjT6tsuhiKRmH0fDYRiXscSzOMBk/EJc62SBsD93jjRs/ZXPzWkc1OvwyGIdl
	vwZDmzKfIKJblB7X6WSuz4gV3f6axkqnTaRLtpWsPIi8QwleZjtF70XOWtl5bqpvQFvsvhpDoDIG3
	LPW4jHtx13V+AVNF7QD1gmFQoGVMttUME0lUYqoUefZrxb9sTt9eR6tomtK0cPeW/l6mcwlaU8/Wb
	shGPXyIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujO3r-0000000Dk0f-2Mc7;
	Tue, 05 Aug 2025 20:15:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujO3p-0000000Djzz-1Wuf
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 20:15:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujO3o-00032M-0v; Tue, 05 Aug 2025 22:15:00 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujO3n-00C66P-2j;
	Tue, 05 Aug 2025 22:14:59 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujO3n-00AIr3-2N;
	Tue, 05 Aug 2025 22:14:59 +0200
Date: Tue, 5 Aug 2025 22:14:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250805201459.knlzkgmcyucmqpzg@pengutronix.de>
References: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
 <20250729-v2024-05-0-topic-fit-overlay-v4-7-af3ad99acde2@pengutronix.de>
 <aJHjgp5uJI47PXK6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJHjgp5uJI47PXK6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_131501_416949_0F38CE5A 
X-CRM114-Status: GOOD (  30.99  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 07/11] of: overlay: add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-05, Sascha Hauer wrote:
> On Tue, Jul 29, 2025 at 05:34:32PM +0200, Marco Felsch wrote:
> > This adds the support to load devicetree overlays from a FIT image.
> > There are a few options to handle FIT overlays since the FIT overlay
> > spec is not very strict.
> > 
> > This implements the most configurable case where each overlay does have
> > its own config node (including the optional signature).
> > 
> > - The "pattern" filter matches the config-node names (the node names
> >   below the configurations node), not the overlay image names (the node
> >   names below the images node).
> > 
> > - The "compatible" filter check doesn't differ from the file based overlay
> >   handling.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  Documentation/user/devicetree.rst |  19 +++---
> >  drivers/of/overlay.c              | 132 +++++++++++++++++++++++++++++++++++---
> >  2 files changed, 134 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index f02a12d44f0d53db3fb7bb065461c0ef193d0ab3..604ce0998cd8044cca59c40e65f4e9b95bec6112 100644
> > --- a/drivers/of/overlay.c
> > +++ b/drivers/of/overlay.c
> > @@ -8,10 +8,13 @@
> >   */
> >  #define pr_fmt(fmt) "of_overlay: " fmt
> >  
> > +#include <bootm.h>
> >  #include <common.h>
> >  #include <of.h>
> >  #include <errno.h>
> > +#include <filetype.h>
> >  #include <globalvar.h>
> > +#include <image-fit.h>
> >  #include <magicvar.h>
> >  #include <string.h>
> >  #include <libfile.h>
> > @@ -463,8 +466,99 @@ static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
> >  	return ret;
> >  }
> >  
> > +static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit,
> > +				struct device_node *config)
> > +{
> > +	const char *name = config->name;
> > +	struct device_node *overlay;
> > +	unsigned long ovl_sz;
> > +	const void *ovl;
> > +	int ret;
> > +
> > +	if (!of_overlay_matches_filter(name, NULL))
> > +		return 0;
> > +
> > +	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
> > +	if (ret)
> > +		return ret;
> > +
> > +	overlay = of_unflatten_dtb(ovl, ovl_sz);
> > +
> > +	if (!of_overlay_matches_filter(NULL, overlay)) {
> > +		ret = 0;
> > +		goto out;
> > +	}
> > +
> > +	ret = of_overlay_apply_tree(root, overlay);
> > +	if (ret == -ENODEV)
> > +		pr_debug("Not applied %s (not compatible)\n", name);
> > +	else if (ret)
> > +		pr_err("Cannot apply %s: %s\n", name, strerror(-ret));
> > +	else
> > +		pr_info("Applied %s\n", name);
> > +
> > +out:
> > +	of_delete_node(overlay);
> > +
> > +	return ret;
> > +}
> > +
> > +static bool of_overlay_valid_config(struct fit_handle *fit,
> > +				    struct device_node *config)
> > +{
> > +	/*
> > +	 * Either kernel or firmware is marked as mandatory by U-Boot
> > +	 * (doc/usage/fit/source_file_format.rst) except for overlays
> > +	 * (doc/usage/fit/overlay-fdt-boot.rst). Therefore we need to ensure
> > +	 * that only "fdt" config nodes are recognized as overlay config node.
> > +	 */
> > +	if (!fit_has_image(fit, config, "fdt") ||
> > +	    fit_has_image(fit, config, "kernel") ||
> > +	    fit_has_image(fit, config, "firmware"))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static int of_overlay_global_fixup_fit(struct device_node *root,
> > +				       const char *fit_path, loff_t fit_size)
> > +{
> > +	enum bootm_verify verify = bootm_get_verify_mode();
> > +	struct device_node *conf_node;
> > +	struct fit_handle *fit;
> > +	int ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_FITIMAGE))
> > +		return 0;
> 
> The comments in https://lore.barebox.org/barebox/ZpT3h0o089tae2WS@pengutronix.de/
> do not seem to be addressed here.

Sorry, I missed your comments. I will answer them first on the old
Mail-Thread and send a new version afterwards.

Thanks,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


