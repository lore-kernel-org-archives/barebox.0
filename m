Delivery-date: Fri, 12 Mar 2021 12:16:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfmD-0004Op-Mw
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 12:16:17 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKfmC-0001Wv-LT
	for lore@pengutronix.de; Fri, 12 Mar 2021 12:16:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ke5HiGkQ5w9U0GZ0WbMpO2BV9gTgwVEln65PFO80zio=; b=clagSzyTCYpa2E7ji1BU8Gwyu
	XOepTFTY6uUBWCVXriyHvwCL3uR5kow8OpFDOdEKK7hg3RGOgWBV47nvASBjN29f+aHxmUnJOV0cM
	fcbYIgh/pPcP6Xb/EuB+osmFbAdyTFQfATjcjOyfAzY83lSw8yhSHIGt6P0nWrIMmrtDTbToWP8q9
	GtvQI08VUGKyTgkTVikahqrBAJQZiy/3YbzP+LWbRrADnFc58BrnR7T4wAIn8yLQI2p+TKSgWl3lD
	rbRXXV7B1rBAZA9OeYosebDN6qoTmISD4nyX4RDa3q4ArYEBwPb34sjsPsvRR0Kdqzi00BMfaB8w3
	ERhuSfctg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKflE-00BGkH-S2; Fri, 12 Mar 2021 11:15:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKfl5-00BGj5-Eu
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 11:15:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lKfl3-0001HB-IY; Fri, 12 Mar 2021 12:15:05 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lKfl3-0000CW-9X; Fri, 12 Mar 2021 12:15:05 +0100
Date: Fri, 12 Mar 2021 12:15:05 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210312111505.GN12621@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
 <20210310132829.7662-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310132829.7662-13-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:46:35 up 22 days, 14:10, 91 users,  load average: 0.06, 0.10, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_111508_831282_6F696050 
X-CRM114-Status: GOOD (  34.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/17] blspec: Rework firmware load
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 10 Mar 2021 14:28:24 +0100, Sascha Hauer wrote:
> Applying overlays in blspec currently works in two steps. First
> of_firmware_load_overlay() is called which doesn't load an overlay,
> but instead loads firmware when one is needed by the overlay. This
> is done on the live tree, because that was needed to find the firmware
> manager. The second step is to call of_register_overlay() to apply
> the overlay to the kernel device tree when the fixups are executed.
> 
> Instead of using a separate step to load the firmware, load the firmware
> as part of the of_fixups.

Wouldn't this result in the firmware being loaded whenever of_fix_tree is
called? Then, every use of the of_dump or of_diff commands would result in a
reload of the firmware.

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/of_overlay.c    |  4 ---
>  common/blspec.c          | 73 +++++++++++-----------------------------
>  drivers/of/of_firmware.c | 24 ++-----------
>  drivers/of/overlay.c     |  2 ++
>  include/of.h             |  4 +--
>  5 files changed, 25 insertions(+), 82 deletions(-)
> 
> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> index 9b1cc6e8c7..17b0c9f4cb 100644
> --- a/commands/of_overlay.c
> +++ b/commands/of_overlay.c
> @@ -42,10 +42,6 @@ static int do_of_overlay(int argc, char *argv[])
>  	if (IS_ERR(overlay))
>  		return PTR_ERR(overlay);
>  
> -	ret = of_firmware_load_overlay(overlay);
> -	if (ret)
> -		goto err;
> -
>  	ret = of_register_overlay(overlay);
>  	if (ret) {
>  		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
> diff --git a/common/blspec.c b/common/blspec.c
> index d771176a45..fd3e088920 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -32,71 +32,33 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
>  			val ? strlen(val) + 1 : 0, 1);
>  }
>  
> -static int blspec_apply_oftree_overlay(char *file, const char *abspath,
> -				       int dryrun)
> -{
> -	int ret = 0;
> -	struct fdt_header *fdt;
> -	struct device_node *overlay;
> -	char *path;
> -	size_t size;
> -
> -	path = basprintf("%s/%s", abspath, file);
> -
> -	fdt = read_file(path, &size);
> -	if (!fdt) {
> -		pr_warn("unable to read \"%s\"\n", path);
> -		ret = -EINVAL;
> -		goto out;
> -	}
> -
> -	overlay = of_unflatten_dtb(fdt, size);
> -	free(fdt);
> -	if (IS_ERR(overlay)) {
> -		ret = PTR_ERR(overlay);
> -		goto out;
> -	}
> -
> -	if (dryrun) {
> -		pr_info("dry run: skip overlay %s\n", path);
> -		of_delete_node(overlay);
> -		goto out;
> -	}
> -
> -	ret = of_firmware_load_overlay(overlay);
> -	if (ret) {
> -		pr_warn("failed to load firmware: skip overlay \"%s\"\n", path);
> -		of_delete_node(overlay);
> -		goto out;
> -	}
> -
> -	ret = of_register_overlay(overlay);
> -	if (ret) {
> -		pr_warn("cannot register devicetree overlay \"%s\"\n", path);
> -		of_delete_node(overlay);
> -	}
> -
> -out:
> -	free(path);
> -
> -	return ret;
> -}
> -
> -static void blspec_apply_oftree_overlays(const char *overlays,
> -					 const char *abspath, int dryrun)
> +static int blspec_overlay_fixup(struct device_node *root, void *ctx)
>  {
> +	struct blspec_entry *entry = ctx;
> +	const char *overlays;
>  	char *overlay;
>  	char *sep, *freep;
>  
> +	overlays = blspec_entry_var_get(entry, "devicetree-overlay");
> +
>  	sep = freep = xstrdup(overlays);
>  
>  	while ((overlay = strsep(&sep, " "))) {
> +		char *path;
> +
>  		if (!*overlay)
>  			continue;
> -		blspec_apply_oftree_overlay(overlay, abspath, dryrun);
> +
> +		path = basprintf("%s/%s", entry->rootpath, overlay);
> +
> +		of_overlay_apply_file(root, path);
> +
> +		free(path);
>  	}
>  
>  	free(freep);
> +
> +	return 0;
>  }
>  
>  /*
> @@ -153,7 +115,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	}
>  
>  	if (overlays)
> -		blspec_apply_oftree_overlays(overlays, abspath, dryrun);
> +		of_register_fixup(blspec_overlay_fixup, entry);
>  
>  	if (initrd)
>  		data.initrd_file = basprintf("%s/%s", abspath, initrd);
> @@ -186,6 +148,9 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	if (ret)
>  		pr_err("Booting failed\n");
>  
> +	if (overlays)
> +		of_unregister_fixup(blspec_overlay_fixup, entry);
> +
>  	firmware_set_searchpath(old_fws);
>  
>  err_out:
> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
> index 12ce1d95d0..d66f0ae7ce 100644
> --- a/drivers/of/of_firmware.c
> +++ b/drivers/of/of_firmware.c
> @@ -48,27 +48,7 @@ static int load_firmware(struct device_node *target,
>  	return err;
>  }
>  
> -int of_firmware_load_overlay(struct device_node *overlay)
> +int of_overlay_load_firmware(struct device_node *root, struct device_node *overlay)
>  {
> -	int err;
> -	struct device_node *root;
> -	struct device_node *resolved;
> -	struct device_node *ovl;
> -
> -	root = of_get_root_node();
> -	resolved = of_resolve_phandles(root, overlay);
> -	/*
> -	 * If the overlay cannot be resolved, use the load_firmware callback
> -	 * with the unresolved overlay to verify that the overlay does not
> -	 * depend on a firmware to be loaded. If a required firmware cannot be
> -	 * loaded, the overlay must not be applied.
> -	 */
> -	ovl = resolved ? resolved : overlay;
> -
> -	err = of_process_overlay(root, ovl, load_firmware, NULL);
> -
> -	if (resolved)
> -		of_delete_node(resolved);
> -
> -	return err;
> +	return of_process_overlay(root, overlay, load_firmware, NULL);

This drops the check, if the overlay depends on firmware, which cannot be
loaded, because Barebox could not resolve the overlay. This might be OK,
because in this case, we also don't know if the target is an fpga-region.
Looks fragile to me, anyway.

>  }
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index c9ede614a6..d42e15ed1c 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -221,6 +221,8 @@ int of_overlay_apply_tree(struct device_node *root,
>  			pr_warn("failed to apply %s\n", fragment->name);
>  	}
>  
> +	err = of_overlay_load_firmware(root, resolved);

The firmware must be loaded before the overlay is applied. If the firmware
cannot be loaded, the device tree must not be modified.

Michael

> +
>  	of_delete_node(resolved);
>  
>  	return err;
> diff --git a/include/of.h b/include/of.h
> index 56291b9801..ecc5f5101a 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1033,7 +1033,7 @@ int of_process_overlay(struct device_node *root,
>  				   struct device_node *overlay, void *data),
>  		    void *data);
>  
> -int of_firmware_load_overlay(struct device_node *overlay);
> +int of_overlay_load_firmware(struct device_node *root, struct device_node *overlay);
>  #else
>  static inline struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay)
> @@ -1067,7 +1067,7 @@ static inline int of_process_overlay(struct device_node *root,
>  	return -ENOSYS;
>  }
>  
> -static inline int of_firmware_load_overlay(struct device_node *overlay)
> +static inline int of_overlay_load_firmware(struct device_node *root, struct device_node *overlay)
>  {
>  	return -ENOSYS;
>  }
> -- 
> 2.29.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

