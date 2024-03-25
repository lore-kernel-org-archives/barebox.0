Delivery-date: Mon, 25 Mar 2024 09:52:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rog4e-003byr-1w
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 09:52:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rog4d-00025T-R8
	for lore@pengutronix.de; Mon, 25 Mar 2024 09:52:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jcKQRqC7NOURfLHtkgnS8a3Wj8HB+oOQMwQjq2vuHak=; b=T1mjuF4e56dQ5t0UXF6bRgUlNP
	aX+9Su2CX3BbiW9VSlnv2doAiJSwWBrLF8CKkTQGvcSHL/zuOtZzFAFpkKizuzQ1Ebm6CBBvi0NH2
	9bCXwsZ69aVyhDebZeYeG4sY0StEpba6FuvdVkIxV/NtsNFIppQYNV+DGifeeE1rVp/HjjlHd5C6q
	EDRokxwx62oQP3MxMlZ7RGDQxBuKWuBSbCxmMx22p6UEerpJDB+wUDjCYhWHkYlhfz+OwL7u0NfYV
	GTEeZL15G1+DKbpK+W1Lov75KAVtOu/Al7v/PVUTtveBERMDbwgnEmBSYv7IXJHQxtlD+Pmt+66aA
	Y/2Oe51w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rog46-0000000GH8v-3uIm;
	Mon, 25 Mar 2024 08:52:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rog3y-0000000GH3w-0wZc
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 08:52:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rog3h-0001ri-3p; Mon, 25 Mar 2024 09:51:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rog3g-008Ntx-Mz; Mon, 25 Mar 2024 09:51:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rog3g-00G2qa-22;
	Mon, 25 Mar 2024 09:51:56 +0100
Date: Mon, 25 Mar 2024 09:51:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgE7LPdGLmU2BoXN@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
 <20240322164953.1772129-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240322164953.1772129-6-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_015214_731353_D2AC341E 
X-CRM114-Status: GOOD (  33.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/8] of: overlay: add FIT overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 22, 2024 at 05:49:51PM +0100, Marco Felsch wrote:
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
>  drivers/of/overlay.c | 110 ++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 103 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index e9fd5c0a1f7d..c8e70ab00091 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -8,10 +8,12 @@
>   */
>  #define pr_fmt(fmt) "of_overlay: " fmt
>  
> +#include <bootm.h>
>  #include <common.h>
>  #include <of.h>
>  #include <errno.h>
>  #include <globalvar.h>
> +#include <image-fit.h>
>  #include <magicvar.h>
>  #include <string.h>
>  #include <libfile.h>
> @@ -473,9 +475,103 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
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
> +	if (!fit_has_image(fit, config, "fdt"))
> +		return 0;
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
> +static int of_overlay_global_fixup_fit(struct device_node *root, const char *ovl_dev)
> +{
> +	enum bootm_verify verify = bootm_get_verify_mode();
> +	struct device_node *conf_node;
> +	struct fit_handle *fit;
> +	struct stat s;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_FITIMAGE))
> +		return 0;
> +
> +	if (stat(of_overlay_path, &s))
> +		return -errno;

Why this? The caller already checked for existence of of_overlay_path.
Besides, it is not even used in this function.

> +
> +	fit = fit_open(ovl_dev, 0, verify, s.st_size);
> +	if (IS_ERR(fit)) {
> +		pr_err("Loading FIT image %s failed with: %pe\n", ovl_dev, fit);
> +		return PTR_ERR(fit);
> +	}

Are you anticipating taking only the overlays from a FIT image and the
kernel coming from somewhere else? Otherwise I would expect the
integration to happen in the bootm and FIT code where we already have a
handle to the opened FIT image. It seems wasteful to open the same FIT
image here again.

> +
> +	for_each_child_of_node(fit->configurations, conf_node) {
> +		if (!fit_config_is_overlay(conf_node))
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
> +	struct stat s;
> +
> +	if (isempty(of_overlay_path))
> +		return 0;
> +
> +	if (stat(of_overlay_path, &s)) {
> +		pr_err("Failed to detect file status\n");
> +		return -errno;
> +	}
> +
> +	if (S_ISDIR(s.st_mode))
> +		return of_overlay_global_fixup_dir(root, of_overlay_path);
> +	else if (S_ISCHR(s.st_mode) || S_ISBLK(s.st_mode))
> +		return of_overlay_global_fixup_fit(root, of_overlay_path);

Why must the FIT image providing overlays be on a plain block device?
Shouldn't we allow FIT images to live in a filesystem?

Anyway, as said I think this is the wrong place to implement this. When
opening a FIT image it's already clear that we should take the overlays
from that image, and not open some image again.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


