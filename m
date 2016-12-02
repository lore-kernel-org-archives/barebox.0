Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cCkQp-0008OI-UR
 for barebox@lists.infradead.org; Fri, 02 Dec 2016 09:47:05 +0000
Message-ID: <1480671998.17003.37.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 02 Dec 2016 10:46:38 +0100
In-Reply-To: <1480618503-11376-1-git-send-email-akurz@blala.de>
References: <1480618503-11376-1-git-send-email-akurz@blala.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bootm: dont use internal oftree fallback by default
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 01.12.2016, 19:55 +0100 schrieb Alexander Kurz:
> Booting via bootm offers several methods to load oftree data. When no
> dedicated oftree image is provided, barebox checks for the presence of
> its own internal oftree, assuming it as a good choice for boot.
> 
> This fallback method breaks the usecase when a modern OF-based barebox
> is used to boot a legacy ATAG dependent non OF based vendor provided kernel
> (e.g. ATAGs will be switched off).
> Unfortunately those kernels are being still actively shipped today.
> 
> Change barebox according to the principle of least surprise: when no
> oftree data is proactively configured, then perform a non-oftree boot.
> Make the fallback-use of the barebox internal oftree an opt-in feature.
> 
> Note: this will break boards where the boot process relied on this feature,
> e.g.: oftree based barebox plus oftree based kernel without an explicit
> given dts. For those boards global.bootm.internal_oftree_fallback=1 should
> be set.
> 
The least surprise on a modern oftree based kernel is that the firmware
(Barebox) provides the DT, if there isn't an explicit override.

So NACK on the patch in it's current form. If you have a board where you
know that the kernel doesn't play along, you may reverse this patch so
that you can set global.bootm.no_internal_oftree=1 in your board code.

Regards,
Lucas

> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  common/bootm.c  | 8 ++++++--
>  include/bootm.h | 2 ++
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 5984319..f5303fa 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -58,6 +58,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->initrd_address = UIMAGE_INVALID_ADDRESS;
>  	data->os_address = UIMAGE_SOME_ADDRESS;
>  	data->oftree_file = getenv_nonempty("global.bootm.oftree");
> +	data->internal_oftree_fallback = getenv_nonempty("global.bootm.internal_oftree_fallback");
>  	data->os_file = getenv_nonempty("global.bootm.image");
>  	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
>  	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
> @@ -375,14 +376,15 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
>  			pr_err("unable to unflatten devicetree\n");
>  			return -EINVAL;
>  		}
> -
> -	} else {
> +	} else if (data->internal_oftree_fallback) {
>  		data->of_root_node = of_get_root_node();
>  		if (!data->of_root_node)
>  			return 0;
>  
>  		if (bootm_verbose(data) > 1 && data->of_root_node)
>  			printf("using internal devicetree\n");
> +	} else {
> +		return 0;
>  	}
>  
>  	if (data->initrd_res) {
> @@ -530,6 +532,7 @@ int bootm_boot(struct bootm_data *bootm_data)
>  	data->verify = bootm_data->verify;
>  	data->force = bootm_data->force;
>  	data->dryrun = bootm_data->dryrun;
> +	data->internal_oftree_fallback = bootm_data->internal_oftree_fallback;
>  	data->initrd_address = bootm_data->initrd_address;
>  	data->os_address = bootm_data->os_address;
>  	data->os_entry = bootm_data->os_entry;
> @@ -683,6 +686,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr,
>  BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
>  BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
>  BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
> +BAREBOX_MAGICVAR_NAMED(global_bootm_internal_oftree_fallback, global.bootm.internal_oftree_fallback, "use barebox oftree as fallback");
>  BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
>  BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verify, "bootm default verbosity level (0=quiet)");
>  BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
> diff --git a/include/bootm.h b/include/bootm.h
> index 6e9777a..c945c99 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -20,6 +20,7 @@ struct bootm_data {
>  	enum bootm_verify verify;
>  	bool force;
>  	bool dryrun;
> +	bool internal_oftree_fallback;
>  	/*
>  	 * appendroot - if true, try to add a suitable root= Kernel option to
>  	 * mount the rootfs from the same device as the Kernel comes from.
> @@ -81,6 +82,7 @@ struct image_data {
>  	int verbose;
>  	int force;
>  	int dryrun;
> +	int internal_oftree_fallback;
>  };
>  
>  struct image_handler {



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
