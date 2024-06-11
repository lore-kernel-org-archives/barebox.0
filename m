Delivery-date: Tue, 11 Jun 2024 11:10:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGxWR-004AIU-26
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 11:10:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGxWQ-0007kV-TA
	for lore@pengutronix.de; Tue, 11 Jun 2024 11:10:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRmz8LoE3xbWFrN9wq6z36GJl6LUHu+xUjHWLUCaMjc=; b=q8Bi7t3ozD0wtywHpJr9unYuMz
	PhFn2lA4HZfT6cYoVDqHOSubIFmGJN1++RMKWoNTFw6sMWdZu+APtPpPRP96E+kI/67ZQ0BoXpBvi
	yTcHarj0VkOkn5PQp5zFg2v7ws8RJFURy5F4wceUPWpv0QqR9wavqEscWQdFkS3IlRfDAs0ETx4ah
	HLm3CNzW5E6354ShQNkQh1lzHmAFsK9YUH38RX6z6V6GiY62PGuS2AA66y5hCDdSAII6VeuKoL+dU
	lboV6JgtSsSKALS6KL1kUT87m/cigQfCVSZtrNWbCRXcEWMaQeO5dEZ5VZm4HnO6q2QJt5wMRayOY
	Wk/w3g+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGxVp-00000008FG5-1Omz;
	Tue, 11 Jun 2024 09:09:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGxVg-00000008FDQ-3gYS
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 09:09:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGxVf-0007fi-6T; Tue, 11 Jun 2024 11:09:43 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGxVe-001VjG-QI; Tue, 11 Jun 2024 11:09:42 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGxVe-004dep-2N;
	Tue, 11 Jun 2024 11:09:42 +0200
Date: Tue, 11 Jun 2024 11:09:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240611090942.hrbiensrmm6vcquu@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
 <20240322164953.1772129-6-m.felsch@pengutronix.de>
 <ZgE7LPdGLmU2BoXN@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgE7LPdGLmU2BoXN@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_020949_138115_3506C484 
X-CRM114-Status: GOOD (  33.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/8] of: overlay: add FIT overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-03-25, Sascha Hauer wrote:
> On Fri, Mar 22, 2024 at 05:49:51PM +0100, Marco Felsch wrote:
> > This adds the support to load devicetree overlays from an FIT image.
> > There are quite a few options to handle FIT overlays since the FIT
> > overlay spec is not very strict.
> > 
> > This patch implement the most configurable case where each overlay does
> > have it's own config node (including the optional signature).
> > 
> > - The "name" filter check is performed on the config-node name (the node
> >   under the configurations) and not the FIT overlay image name (the node
> >   name under the images node).
> > - The "content" filter check does not differ from the file based overlay
> >   handling.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/of/overlay.c | 110 ++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 103 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index e9fd5c0a1f7d..c8e70ab00091 100644
> > --- a/drivers/of/overlay.c
> > +++ b/drivers/of/overlay.c
> > @@ -8,10 +8,12 @@
> >   */
> >  #define pr_fmt(fmt) "of_overlay: " fmt
> >  
> > +#include <bootm.h>
> >  #include <common.h>
> >  #include <of.h>
> >  #include <errno.h>
> >  #include <globalvar.h>
> > +#include <image-fit.h>
> >  #include <magicvar.h>
> >  #include <string.h>
> >  #include <libfile.h>
> > @@ -473,9 +475,103 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
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
> > +	if (!fit_has_image(fit, config, "fdt"))
> > +		return 0;
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
> > +static int of_overlay_global_fixup_fit(struct device_node *root, const char *ovl_dev)
> > +{
> > +	enum bootm_verify verify = bootm_get_verify_mode();
> > +	struct device_node *conf_node;
> > +	struct fit_handle *fit;
> > +	struct stat s;
> > +	int ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_FITIMAGE))
> > +		return 0;
> > +
> > +	if (stat(of_overlay_path, &s))
> > +		return -errno;
> 
> Why this? The caller already checked for existence of of_overlay_path.
> Besides, it is not even used in this function.

Yes, good point. I wanted to make the of_overlay_global_fixup_{dir,fit}
APIs symmetrical but I think we can drop this.

> > +
> > +	fit = fit_open(ovl_dev, 0, verify, s.st_size);
> > +	if (IS_ERR(fit)) {
> > +		pr_err("Loading FIT image %s failed with: %pe\n", ovl_dev, fit);
> > +		return PTR_ERR(fit);
> > +	}
> 
> Are you anticipating taking only the overlays from a FIT image and the
> kernel coming from somewhere else? Otherwise I would expect the
> integration to happen in the bootm and FIT code where we already have a
> handle to the opened FIT image. It seems wasteful to open the same FIT
> image here again.

I thought about this too but didn't went this way since it would not
allow us to patch the barebox-dt with overlays coming from the fit nor
is it possible to run the of_overlay command. It shouldn't matter to the
end-user if the overlay is coming from the (root)fs or the fit-image.

> > +	for_each_child_of_node(fit->configurations, conf_node) {
> > +		if (!fit_config_is_overlay(conf_node))
> > +			continue;
> > +
> > +		ret = fit_config_verify_signature(fit, conf_node);
> > +		if (ret)
> > +			goto out;
> > +
> > +		ret = of_overlay_apply_fit(root, fit, conf_node);
> > +		if (ret)
> > +			goto out;
> > +	}
> > +
> > +out:
> > +	fit_close(fit);
> > +	return ret;
> > +}
> > +
> >  static int of_overlay_global_fixup(struct device_node *root, void *data)
> >  {
> > -	return of_overlay_global_fixup_dir(root, of_overlay_path);
> > +	struct stat s;
> > +
> > +	if (isempty(of_overlay_path))
> > +		return 0;
> > +
> > +	if (stat(of_overlay_path, &s)) {
> > +		pr_err("Failed to detect file status\n");
> > +		return -errno;
> > +	}
> > +
> > +	if (S_ISDIR(s.st_mode))
> > +		return of_overlay_global_fixup_dir(root, of_overlay_path);
> > +	else if (S_ISCHR(s.st_mode) || S_ISBLK(s.st_mode))
> > +		return of_overlay_global_fixup_fit(root, of_overlay_path);
> 
> Why must the FIT image providing overlays be on a plain block device?
> Shouldn't we allow FIT images to live in a filesystem?

Good point, I didn't considered this since fit-images are mostly used on
secure/verified-boot devices. These devices often have a plain fit-image
partition.

> Anyway, as said I think this is the wrong place to implement this. When
> opening a FIT image it's already clear that we should take the overlays
> from that image, and not open some image again.

Please consider the use-cases listed above as well. If we strictly bind
it to the bootm command we can't do the live-patching of barebox dtbs
and IMHO we shouldn't care if the overlay is coming from the FIT or an
FS.

Regards,
  Marco


