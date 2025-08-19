Delivery-date: Tue, 19 Aug 2025 10:41:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoHue-002BKR-1M
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 10:41:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoHuc-00006x-RD
	for lore@pengutronix.de; Tue, 19 Aug 2025 10:41:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zv9wk4EJOfRBSS1SiDHjoN9xjON9vus+EDMBAhHbUWk=; b=GPXQ4IGp2hMUGsjejQ7/GRaxhr
	JKcZAwGjKzevBZn7cxwhwkTJosU27VoS4iwci90R4f9e6IlJ3RpUgdaVedSK+EiW+ktb/coCzdObd
	rwN1G4IOBMjAv2iVMFQcEUIgCt+DH3h1ullraQQmeI6q7HF1LvVzHLOAR0tqsEDdKOF2nhjsn/Yrb
	eCiZiPxqDkFtMqMN0phEILtWwxr+8I2MJWzPsNPHuhZ4TKrNFn1ET+4AryyCi7sYysQK4G6c0xFwh
	q1W+wxv9vQB5QCnqNXvC8fhB7Ip7yrleGDJSlpQh0XJ24XAB8mhgcfaIsfRtGxWWTWk9hFE7UXm1B
	oyitPT9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHtz-00000009phv-08PS;
	Tue, 19 Aug 2025 08:41:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHQ5-00000009lbp-1r0Y
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 08:10:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHQ2-0004De-PB; Tue, 19 Aug 2025 10:10:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHQ2-0012RR-1w;
	Tue, 19 Aug 2025 10:10:10 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHQ2-003m8q-1a;
	Tue, 19 Aug 2025 10:10:10 +0200
Date: Tue, 19 Aug 2025 10:10:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250819081010.wr7fubieyvh7mk6p@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
 <20250818-v2024-05-0-topic-fit-overlay-v5-7-b92e466a1d32@pengutronix.de>
 <aKQbz3Q_bcGGxpHX@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKQbz3Q_bcGGxpHX@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_011013_866356_FBB6C47C 
X-CRM114-Status: GOOD (  48.05  )
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
Subject: Re: [PATCH v5 07/11] of: overlay: add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-19, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:26:15PM +0200, Marco Felsch wrote:
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
> >  drivers/of/overlay.c              | 126 +++++++++++++++++++++++++++++++++++---
> >  2 files changed, 128 insertions(+), 17 deletions(-)
> > 
> > diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
> > index 30a15a8865c154f8afe23d641da10d0afa84423b..644fb551adcf913ca9ed2ab3f1d5fbe7c367bdf6 100644
> > --- a/Documentation/user/devicetree.rst
> > +++ b/Documentation/user/devicetree.rst
> > @@ -109,20 +109,23 @@ Overlays can be applied to the kernel device tree before it is handed over to
> >  the kernel. The behaviour is controlled by different variables:
> >  
> >  ``global.of.overlay.path``
> > -  Overlays are read from this directory. barebox will try to apply all overlays
> > -  found here if not limited by one of the other variables below. When the path
> > -  given here is an absolute path it is used as is. A relative path is relative
> > -  to ``/`` or relative to the rootfs when using bootloader spec.
> > +  Overlays are read from this path. The path can either be a directory which
> > +  contains the overlays or an absolute path to a FIT-image. barebox will try to
> 
> is "absolute path" correct here?
> 
> Before it was either an absolute path or a path relative to the
> rootfs...

IMHO the only reason for using FIT as overlay supplier is because of the
fact the the system implements a verified boot flow. For such use-case I
wouldn't allow relative paths.

> 
> > +  apply all overlays found if not limited by one of the other variables below.
> > +  When the path given here is an absolute path it is used as is. A relative
> > +  path is relative to ``/`` or relative to the rootfs when using bootloader
> > +  spec.
> 
> ...and this still seems to be the case.

Of course, we need to handle both cases but I would mention that the FIT
image path shall be absolute albeit the implementation supports both.

> Isn't this true for overlays in FIT images as weel? If yes I suggest to
> just remove the "absolute".
> 
> >  ``global.of.overlay.compatible``
> >    This is a space separated list of compatibles. Only overlays matching one of
> >    these compatibles will be applied. When this list is empty then all overlays
> >    will be applied. Overlays that don't have a compatible are considered being
> >    always compatible.
> >  ``global.of.overlay.pattern``
> > -  This is a space separated list of file patterns. An overlay is only applied
> > -  when its filename matches one of the patterns. The patterns can contain
> > -  ``*`` and ``?`` as wildcards. The default is ``*`` which means all files are
> > -  applied.
> > +  This is a space separated list of file patterns or FIT-image config-node name
> > +  patterns. An overlay is only applied when its filename or FIT-image
> > +  config-node name matches one of the patterns. The patterns can contain ``*``
> > +  and ``?`` as wildcards. The default is ``*`` which means all files or FIT-Image
> > +  config-nodes are applied.
> >  ``global.of.overlay.filter``
> >    This is a space separated list of filters to apply. There are two generic filters:
> >    ``pattern`` matches ``global.of.overlay.pattern`` above, ``compatible`` matches
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index f02a12d44f0d53db3fb7bb065461c0ef193d0ab3..6defd6fa6908ff2b2fd00d161464af37ac17e040 100644
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
> > @@ -463,8 +465,100 @@ static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
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
> 
> Can we have a
> 	pr_debug("FIT config \"%s\" doesn't match filter \"%s\"\n",
> 		name, of_overlay_filter);
> 
> Here?

Sure.

> > +
> > +	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
> > +	if (ret)
> > +		return ret;
> > +
> > +	overlay = of_unflatten_dtb(ovl, ovl_sz);
> 
> 	if (IS_ERR(overlay))
> 		...

Sure.

> > +	if (!of_overlay_matches_filter(NULL, overlay)) {
> > +		ret = 0;
> > +		goto out;
> > +	}
> 
> I think a pr_debug printing the reason would be appropriate here as
> well.

Sure.

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
> > +	if (!IS_ENABLED(CONFIG_FITIMAGE)) {
> > +		pr_err("FIT based overlay handling requested while CONFIG_FITIMAGE=n\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	fit = fit_open(fit_path, 0, verify, fit_size);
> > +	if (IS_ERR(fit)) {
> > +		pr_err("Loading FIT image %s failed with: %pe\n", fit_path, fit);
> > +		return PTR_ERR(fit);
> > +	}
> > +
> > +	for_each_child_of_node(fit->configurations, conf_node) {
> > +		if (!of_overlay_valid_config(fit, conf_node))
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
> > +	struct stat s;
> >  	char *dir;
> >  	int ret;
> >  
> > @@ -476,10 +570,24 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
> >  	else
> >  		dir = concat_path_file(of_overlay_basedir, of_overlay_path);
> >  
> > -	ret = of_overlay_apply_dir(root, dir, true);
> >  
> > -	free(dir);
> > +	if (stat(dir, &s)) {
> > +		pr_err("Cannot stat global.of.overlay.path (%s): %s\n",
> > +		       dir, strerror(errno));
> 
> Use %m which prints strerror(errno) directly.

Of course, thanks.

Regards,
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


