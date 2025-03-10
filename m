Delivery-date: Mon, 10 Mar 2025 19:52:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triF6-00CMNx-0n
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 19:52:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1triF5-0003QL-18
	for lore@pengutronix.de; Mon, 10 Mar 2025 19:52:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dQiD2wYahwgfe96yYWJNcAxd8lmFECzLFtEv9uyDyfQ=; b=EkoWOtqZeLkMct1BGUMoy0WvRo
	yai7see5nncX0JMIdc4HK6yq6N4rYsNQ/UqfEhs/JMHUuphF7Pq9yOfBF04mkozcejVVJdJmESqJT
	+7bzBipY1YxxkRazMIeVznZwTkxOsbr8wOBQ56XPLLqTVOfT0AHq51qPkQD5S3fdbYqH1cWllv+k2
	dRqfn5FIFG9idmrGFfBvTFkKM7Kz+OZ+sA5VL9xYNcjwRt85kVJGY6/GwZ0kl9WUAy9SBmj4wswP7
	MuFC63McV4stHddP7jG+nScUu5UD8SDJt+aU0KE1el2nBakxTWmSgiA5GJ/CfJQP/3MEvpUDKqNkX
	dgZXrHuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1triEf-00000003g4I-3WB8;
	Mon, 10 Mar 2025 18:52:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1triEd-00000003g3q-1EUx
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 18:52:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1triEc-0003LF-1a; Mon, 10 Mar 2025 19:52:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1triEb-0053DE-2l;
	Mon, 10 Mar 2025 19:52:17 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1triEb-0060u0-2T;
	Mon, 10 Mar 2025 19:52:17 +0100
Date: Mon, 10 Mar 2025 19:52:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250310185217.4bmple2ygkrcl3gp@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-4-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-am625-secure-v1-4-4002488ff5ed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_115219_338452_7BAC6638 
X-CRM114-Status: GOOD (  19.23  )
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
Subject: Re: [PATCH 04/13] ARM: k3: r5: add proper error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-02-28, Sascha Hauer wrote:
> Add missing error handling in the image loading code. Properly check for
> errors and panic when mandatory binaries are missing instead of blindly
> continuing.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/r5.c | 57 ++++++++++++++++++++++++++++-----------------------
>  1 file changed, 31 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
> index 2418e9ae73..e12c888afa 100644
> --- a/arch/arm/mach-k3/r5.c
> +++ b/arch/arm/mach-k3/r5.c
> @@ -283,7 +283,7 @@ static int load_fip(const char *filename, off_t offset)
>  	return 0;
>  }
>  
> -static void do_dfu(void)
> +static int do_dfu(void)
>  {
>  	struct usbgadget_funcs funcs = {};
>  	int ret;
> @@ -293,37 +293,24 @@ static void do_dfu(void)
>  	funcs.dfu_opts = "/fip.img(fip)cs";
>  
>  	ret = usbgadget_prepare_register(&funcs);
> -	if (ret)
> -		goto err;
> +	if (ret) {
> +		pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
> +		return ret;
> +	}
>  
>  	while (1) {
>  		ret = stat("/fip.img", &s);
>  		if (!ret) {
>  			printf("Downloaded FIP image, DFU done\n");
> -			load_fip("/fip.img", 0);
> -			break;
> +			ret = load_fip("/fip.img", 0);
> +			if (!ret)
> +				return 0;
>  		}
>  
>  		command_slice_release();
>  		mdelay(50);
>  		command_slice_acquire();
>  	};
> -
> -	return;
> -
> -err:
> -	pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
> -}
> -
> -static int load_images(void)
> -{
> -	int err;
> -
> -	err = load_fip("/boot/k3.fip", 0);
> -	if (!err)
> -		return 0;
> -
> -	return 0;
>  }

Removing load_images should go into patch-3.

>  
>  static int load_fip_emmc(void)
> @@ -332,6 +319,7 @@ static int load_fip_emmc(void)
>  	struct mci *mci;
>  	char *fname;
>  	const char *mmcdev = "mmc0";
> +	int ret;

Nit: Sometimes you do use ret, sometimes err. I would like to align it
if possible.

Rest LGTM.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

>  
>  	device_detect_by_name(mmcdev);
>  
> @@ -348,11 +336,11 @@ static int load_fip_emmc(void)
>  
>  	fname = xasprintf("/dev/%s.boot%d", mmcdev, bootpart - 1);
>  
> -	load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
> +	ret = load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
>  
>  	free(fname);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static int k3_r5_start_image(void)
> @@ -365,11 +353,28 @@ static int k3_r5_start_image(void)
>  	struct rproc *arm64_rproc;
>  
>  	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && bootsource_get() == BOOTSOURCE_SERIAL)
> -		do_dfu();
> +		err = do_dfu();
>  	else if (k3_boot_is_emmc())
> -		load_fip_emmc();
> +		err = load_fip_emmc();
>  	else
> -		load_images();
> +		err = load_fip("/boot/k3.fip", 0);
> +
> +	if (err) {
> +		pr_crit("Unable to load FIP image\n");
> +		panic("Stop booting\n");
> +	}
> +
> +	if (!have_bl31)
> +		panic("No TFA found in FIP image\n");
> +
> +	if (!have_bl32)
> +		pr_info("No OP-TEE found. Continuing without\n");
> +
> +	if (!have_bl33)
> +		panic("No bl33 found in FIP image\n");
> +
> +	if (!k3_ti_dm)
> +		panic("No ti-dm binary found\n");
>  
>  	ti_sci = ti_sci_get_handle(NULL);
>  	if (IS_ERR(ti_sci))
> 
> -- 
> 2.39.5
> 
> 
> 


