Delivery-date: Tue, 05 Aug 2025 22:35:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujONQ-007PVf-2B
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 22:35:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujONP-00053Z-Lj
	for lore@pengutronix.de; Tue, 05 Aug 2025 22:35:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qqDe14rHg9Qk9HgvMedeuEnyJ88JwwhIVvQCIBLWkX0=; b=BF9zMHEyw4Xs5R/FzgWuonUVG+
	eDvVmiRCaMQQJJv8LuP60hGxS71cbngsB54UQ0k0huuG/EA9yfa5PxQ1aV1Mo9pqe0F18z7iwGclz
	xE1kbgqjB0Er+sXWde+JaTJsjq7ph3o3bxndk6A5mZhMtHMKnyWg6HPvAAopH9XHg2FkAtSEPgHZ6
	HGv5jRZdapXE7zfOGE7/FPt92+2J6Br5dfIevesZFxQ7m6H1WiCzRV6RV5L2uRwM80ll9hfi/6DpP
	+T284Hq09f37hAGt/LfzAtjyH6udgMrkaoayuwxucQJ0+ODj9tAuyhqCkEwJ+4pEJLbIVdtVfA3to
	5hZQIlCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujOMp-0000000DlSN-1mxe;
	Tue, 05 Aug 2025 20:34:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujOMm-0000000DlRc-2Ykf
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 20:34:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujOMl-0004xe-Bq; Tue, 05 Aug 2025 22:34:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujOMl-00C6Cn-0a;
	Tue, 05 Aug 2025 22:34:35 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujOMl-00AJ3c-0F;
	Tue, 05 Aug 2025 22:34:35 +0200
Date: Tue, 5 Aug 2025 22:34:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250805203435.k3s24chls6566dty@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
 <20240703-v2024-05-0-topic-fit-overlay-v3-6-c1fd766fd31d@pengutronix.de>
 <ZpT3h0o089tae2WS@pengutronix.de>
 <20240715113000.6ymgummxyf5amtuu@pengutronix.de>
 <ZpUOdtLMmozPPOrP@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZpUOdtLMmozPPOrP@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_133436_812070_C519F790 
X-CRM114-Status: GOOD (  52.54  )
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
Subject: Re: [PATCH v3 06/10] of: overlay: add FIT overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-07-15, Sascha Hauer wrote:
> On Mon, Jul 15, 2024 at 01:30:00PM +0200, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 24-07-15, Sascha Hauer wrote:
> > > On Wed, Jul 03, 2024 at 06:58:34PM +0200, Marco Felsch wrote:
> > > > This adds the support to load devicetree overlays from an FIT image.
> > > > There are quite a few options to handle FIT overlays since the FIT
> > > > overlay spec is not very strict.
> > > > 
> > > > This patch implement the most configurable case where each overlay does
> > > > have it's own config node (including the optional signature).
> > > > 
> > > > - The "name" filter check is performed on the config-node name (the node
> > > >   under the configurations) and not the FIT overlay image name (the node
> > > >   name under the images node).
> > > > - The "content" filter check does not differ from the file based overlay
> > > >   handling.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  drivers/of/overlay.c | 131 ++++++++++++++++++++++++++++++++++++++++++++++++---
> > > >  1 file changed, 124 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > > > index 5617f322ddca..a980e7aa5e02 100644
> > > > --- a/drivers/of/overlay.c
> > > > +++ b/drivers/of/overlay.c
> > > > @@ -8,10 +8,13 @@
> > > >   */
> > > >  #define pr_fmt(fmt) "of_overlay: " fmt
> > > >  
> > > > +#include <bootm.h>
> > > >  #include <common.h>
> > > >  #include <of.h>
> > > >  #include <errno.h>
> > > > +#include <filetype.h>
> > > >  #include <globalvar.h>
> > > > +#include <image-fit.h>
> > > >  #include <magicvar.h>
> > > >  #include <string.h>
> > > >  #include <libfile.h>
> > > > @@ -470,9 +473,123 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
> > > >  	return ret;
> > > >  }
> > > >  
> > > > +static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit,
> > > > +				struct device_node *config)
> > > > +{
> > > > +	const char *name = config->name;
> > > > +	struct device_node *overlay;
> > > > +	unsigned long ovl_sz;
> > > > +	const void *ovl;
> > > > +	int ret;
> > > > +
> > > > +	if (!of_overlay_matches_filter(name, NULL))
> > > > +		return 0;
> > > > +
> > > > +	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	overlay = of_unflatten_dtb(ovl, ovl_sz);
> > > > +
> > > > +	if (!of_overlay_matches_filter(NULL, overlay)) {
> > > > +		ret = 0;
> > > > +		goto out;
> > > > +	}
> > > > +
> > > > +	ret = of_overlay_apply_tree(root, overlay);
> > > > +	if (ret == -ENODEV)
> > > > +		pr_debug("Not applied %s (not compatible)\n", name);
> > > > +	else if (ret)
> > > > +		pr_err("Cannot apply %s: %s\n", name, strerror(-ret));
> > > > +	else
> > > > +		pr_info("Applied %s\n", name);
> > > > +
> > > > +out:
> > > > +	of_delete_node(overlay);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +static bool of_overlay_valid_config(struct fit_handle *fit,
> > > > +				    struct device_node *config)
> > > > +{
> > > > +	/*
> > > > +	 * Either kernel or firmware is marked as mandatory by U-Boot
> > > > +	 * (doc/usage/fit/source_file_format.rst) except for overlays
> > > > +	 * (doc/usage/fit/overlay-fdt-boot.rst). Therefore we need to ensure
> > > > +	 * that only "fdt" config nodes are recognized as overlay config node.
> > > > +	 */
> > > > +	if (!fit_has_image(fit, config, "fdt") ||
> > > > +	    fit_has_image(fit, config, "kernel") ||
> > > > +	    fit_has_image(fit, config, "firmware"))
> > > > +		return false;
> > > > +
> > > > +	return true;
> > > > +}
> > > > +
> > > > +static int of_overlay_global_fixup_fit(struct device_node *root,
> > > > +				       const char *fit_path, loff_t fit_size)
> > > > +{
> > > > +	enum bootm_verify verify = bootm_get_verify_mode();
> > > > +	struct device_node *conf_node;
> > > > +	struct fit_handle *fit;
> > > > +	int ret;
> > > > +
> > > > +	if (!IS_ENABLED(CONFIG_FITIMAGE))
> > > > +		return 0;
> > > 
> > > The user has explicitly passed a FIT image, but we don't have FIT
> > > support compiled in. Shouldn't this be an error?
> > 
> > Yes you're right. I will return the error and an error-message.
> > 
> > > > +	fit = fit_open(fit_path, 0, verify, fit_size);
> > > > +	if (IS_ERR(fit)) {
> > > > +		pr_err("Loading FIT image %s failed with: %pe\n", fit_path, fit);
> > > > +		return PTR_ERR(fit);
> > > > +	}
> > > > +
> > > > +	for_each_child_of_node(fit->configurations, conf_node) {
> > > > +		if (!of_overlay_valid_config(fit, conf_node))
> > > > +			continue;
> > > > +
> > > > +		ret = fit_config_verify_signature(fit, conf_node);
> > > > +		if (ret)
> > > > +			goto out;
> > > > +
> > > > +		ret = of_overlay_apply_fit(root, fit, conf_node);
> > > > +		if (ret)
> > > > +			goto out;
> > > > +	}
> > > > +
> > > > +out:
> > > > +	fit_close(fit);
> > > > +	return ret;
> > > > +}
> > > > +
> > > >  static int of_overlay_global_fixup(struct device_node *root, void *data)
> > > >  {
> > > > -	return of_overlay_global_fixup_dir(root, of_overlay_path);
> > > > +	enum filetype type;
> > > > +	struct stat s;
> > > > +	int ret;
> > > > +
> > > > +	if (isempty(of_overlay_path))
> > > > +		return 0;
> > > > +
> > > > +	if (stat(of_overlay_path, &s)) {
> > > > +		pr_err("Failed to detect file status\n");
> > > 
> > > Maybe something like:
> > > 
> > > 	pr_err("Cannot stat global.of.overlay.path (%s): %pe\n", of_overlay_path, ERR_PTR(ret));
> > > 
> > > To give the user a better clue what to do about this error?
> > 
> > ACK
> > 
> > > > +		return -errno;
> > > > +	}
> > > > +
> > > > +	if (S_ISDIR(s.st_mode))
> > > > +		return of_overlay_global_fixup_dir(root, of_overlay_path);
> > > > +
> > > > +	ret = file_name_detect_type(of_overlay_path, &type);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	if (type == filetype_oftree)
> > > > +		return of_overlay_global_fixup_fit(root, of_overlay_path,
> > > > +						   s.st_size);
> > > > +
> > > > +	pr_err("No suitable overlay provider found!\n");
> > > 
> > > What other file types are you anticipating here? I would rather assume a
> > > "... is not a FIT image" message to give the user a clue what is
> > > expected here.
> > 
> > E.g. overlays supplied via an unified kernel image (UKI) which of course
> > is not supported by barebox yet. Also if we reach this error it means
> > that the of_overlay_path was neither a DIR nor a FIT therefore I went
> > the generic way.
> > 
> > > I think you could also just drop the filetype detection here and just
> > > call of_overlay_global_fixup_fit() unconditionally. The resulting
> > > "Loading FIT image %s failed with: %pe\n" message when a non FIT image
> > > is to be opened should be enough information for the user.
> > 
> > You're right. I took an very defensive approach. We can extend this
> > later as well if we're going to support UKIs in the future.
> > 
> > > Note that it's a bit unfortunate that both a FIT image and a dtbo file
> > > are detected as device tree files. With the prvious naming
> > > "global.of.overlay.dir" it was clear that a directory was expected here.
> > > The "global.of.overlay.path" naming might confuse the user into thinking
> > > that a path to a dtbo file could be passed here which would then be
> > > opened as a FIT image. Would be nice to give a meaningful error message
> > > when a user falls into this trap.
> > 
> > Sorry I don't get this. With "global.of.overlay.path" there are now two
> > possibilities:
> >  1) It's a directory: in that case the already existing
> >     of_overlay_global_fixup_dir() is triggered.
> >  2) It's a file: in that case we try to apply the new fit-overlay
> >     handling.
> 
> In the end global.of.overlay.path specifies where to find device tree
> overlay files, usually dtbos. If that variable specifies a directory
> then in this directory indeed dtbos are expected. If the variable
> specifies a file, then a FIT image is expected and a dtbo doesn't work.
> This is inconsistent and it might be worth having a message printed
> when global.of.overlay.path points to a dtbo.

Sorry, I should have read your comment more carefully, I got it now. Yes
this is a bit unfortunate. What about:

BAREBOX_MAGICVAR(global.of.overlay.provider, "Select one overlay provider: directory (default), fit");

This way we can drop the IS_DIR() guessing and make it explicit &
extendible.

Regards,
  Marco


