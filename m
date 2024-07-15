Delivery-date: Mon, 15 Jul 2024 12:19:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTInz-00540z-05
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 12:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTIny-0000x5-2X
	for lore@pengutronix.de; Mon, 15 Jul 2024 12:19:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KJYOsvdfYKxtuGtT0V8XRdNgV1zBDjhDZ/5TuQQnG1c=; b=FIK2kUHb4LfyBzcvLiEtkEg97V
	33k0+6dsap3hHg4uwVVnjaC0h720gMTNwnc3Bl6OJQao4YB/QVlvLUcZ4Are8OR2wHM93ErT+fE+J
	86mjVzTU/10VojO5vLa0skh6JGi4TJGNRsWoxVJsIzjuAAe5PVBQEUejU4VAIUC6UHeJXNRaJ42Md
	HfFqkx1dsw4Jp/nkuZKKS6UkIgkj+mFbcYWYXHh9gVeABct0KUNbrRYX5VH6zZhfwHGeYWcCg7d6v
	EB40WhSX0apft3JY+nq3DXI9lhD2L8XlmSCfnDrK9ZUKZmpSn3ek16DzFnsRNRi8FFkMVb8vKXC3P
	p5FJ0iMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTInF-00000006fvR-16yu;
	Mon, 15 Jul 2024 10:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTInB-00000006fux-0o96
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 10:18:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sTIn9-0000tY-Tl; Mon, 15 Jul 2024 12:18:47 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sTIn9-009gGI-Gw; Mon, 15 Jul 2024 12:18:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sTIn9-000Nsl-1N;
	Mon, 15 Jul 2024 12:18:47 +0200
Date: Mon, 15 Jul 2024 12:18:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <ZpT3h0o089tae2WS@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
 <20240703-v2024-05-0-topic-fit-overlay-v3-6-c1fd766fd31d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-6-c1fd766fd31d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_031849_257639_A423226A 
X-CRM114-Status: GOOD (  38.55  )
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

On Wed, Jul 03, 2024 at 06:58:34PM +0200, Marco Felsch wrote:
> This adds the support to load devicetree overlays from an FIT image.
> There are quite a few options to handle FIT overlays since the FIT
> overlay spec is not very strict.
> 
> This patch implement the most configurable case where each overlay does
> have it's own config node (including the optional signature).
> 
> - The "name" filter check is performed on the config-node name (the node
>   under the configurations) and not the FIT overlay image name (the node
>   name under the images node).
> - The "content" filter check does not differ from the file based overlay
>   handling.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/of/overlay.c | 131 ++++++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 124 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index 5617f322ddca..a980e7aa5e02 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -8,10 +8,13 @@
>   */
>  #define pr_fmt(fmt) "of_overlay: " fmt
>  
> +#include <bootm.h>
>  #include <common.h>
>  #include <of.h>
>  #include <errno.h>
> +#include <filetype.h>
>  #include <globalvar.h>
> +#include <image-fit.h>
>  #include <magicvar.h>
>  #include <string.h>
>  #include <libfile.h>
> @@ -470,9 +473,123 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
>  	return ret;
>  }
>  
> +static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit,
> +				struct device_node *config)
> +{
> +	const char *name = config->name;
> +	struct device_node *overlay;
> +	unsigned long ovl_sz;
> +	const void *ovl;
> +	int ret;
> +
> +	if (!of_overlay_matches_filter(name, NULL))
> +		return 0;
> +
> +	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
> +	if (ret)
> +		return ret;
> +
> +	overlay = of_unflatten_dtb(ovl, ovl_sz);
> +
> +	if (!of_overlay_matches_filter(NULL, overlay)) {
> +		ret = 0;
> +		goto out;
> +	}
> +
> +	ret = of_overlay_apply_tree(root, overlay);
> +	if (ret == -ENODEV)
> +		pr_debug("Not applied %s (not compatible)\n", name);
> +	else if (ret)
> +		pr_err("Cannot apply %s: %s\n", name, strerror(-ret));
> +	else
> +		pr_info("Applied %s\n", name);
> +
> +out:
> +	of_delete_node(overlay);
> +
> +	return ret;
> +}
> +
> +static bool of_overlay_valid_config(struct fit_handle *fit,
> +				    struct device_node *config)
> +{
> +	/*
> +	 * Either kernel or firmware is marked as mandatory by U-Boot
> +	 * (doc/usage/fit/source_file_format.rst) except for overlays
> +	 * (doc/usage/fit/overlay-fdt-boot.rst). Therefore we need to ensure
> +	 * that only "fdt" config nodes are recognized as overlay config node.
> +	 */
> +	if (!fit_has_image(fit, config, "fdt") ||
> +	    fit_has_image(fit, config, "kernel") ||
> +	    fit_has_image(fit, config, "firmware"))
> +		return false;
> +
> +	return true;
> +}
> +
> +static int of_overlay_global_fixup_fit(struct device_node *root,
> +				       const char *fit_path, loff_t fit_size)
> +{
> +	enum bootm_verify verify = bootm_get_verify_mode();
> +	struct device_node *conf_node;
> +	struct fit_handle *fit;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_FITIMAGE))
> +		return 0;

The user has explicitly passed a FIT image, but we don't have FIT
support compiled in. Shouldn't this be an error?

> +
> +	fit = fit_open(fit_path, 0, verify, fit_size);
> +	if (IS_ERR(fit)) {
> +		pr_err("Loading FIT image %s failed with: %pe\n", fit_path, fit);
> +		return PTR_ERR(fit);
> +	}
> +
> +	for_each_child_of_node(fit->configurations, conf_node) {
> +		if (!of_overlay_valid_config(fit, conf_node))
> +			continue;
> +
> +		ret = fit_config_verify_signature(fit, conf_node);
> +		if (ret)
> +			goto out;
> +
> +		ret = of_overlay_apply_fit(root, fit, conf_node);
> +		if (ret)
> +			goto out;
> +	}
> +
> +out:
> +	fit_close(fit);
> +	return ret;
> +}
> +
>  static int of_overlay_global_fixup(struct device_node *root, void *data)
>  {
> -	return of_overlay_global_fixup_dir(root, of_overlay_path);
> +	enum filetype type;
> +	struct stat s;
> +	int ret;
> +
> +	if (isempty(of_overlay_path))
> +		return 0;
> +
> +	if (stat(of_overlay_path, &s)) {
> +		pr_err("Failed to detect file status\n");

Maybe something like:

	pr_err("Cannot stat global.of.overlay.path (%s): %pe\n", of_overlay_path, ERR_PTR(ret));

To give the user a better clue what to do about this error?

> +		return -errno;
> +	}
> +
> +	if (S_ISDIR(s.st_mode))
> +		return of_overlay_global_fixup_dir(root, of_overlay_path);
> +
> +	ret = file_name_detect_type(of_overlay_path, &type);
> +	if (ret)
> +		return ret;
> +
> +	if (type == filetype_oftree)
> +		return of_overlay_global_fixup_fit(root, of_overlay_path,
> +						   s.st_size);
> +
> +	pr_err("No suitable overlay provider found!\n");

What other file types are you anticipating here? I would rather assume a
"... is not a FIT image" message to give the user a clue what is
expected here.

I think you could also just drop the filetype detection here and just
call of_overlay_global_fixup_fit() unconditionally. The resulting
"Loading FIT image %s failed with: %pe\n" message when a non FIT image
is to be opened should be enough information for the user.

Note that it's a bit unfortunate that both a FIT image and a dtbo file
are detected as device tree files. With the prvious naming
"global.of.overlay.dir" it was clear that a directory was expected here.
The "global.of.overlay.path" naming might confuse the user into thinking
that a path to a dtbo file could be passed here which would then be
opened as a FIT image. Would be nice to give a meaningful error message
when a user falls into this trap.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


