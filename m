Delivery-date: Mon, 10 Mar 2025 19:45:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tri83-00CMJQ-2b
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 19:45:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tri82-0002f7-Ho
	for lore@pengutronix.de; Mon, 10 Mar 2025 19:45:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGF2WNsogZWPcCUecxiFkk+OTPHEwZfXPEofbu8RHZE=; b=N65nAmPlio9S6rp6OBLiadm7MF
	q8jbK+tAEcireWEPoEZ5SsHuEpmiu8khYOPdHxbIfsOqjklz87fxN5/COseX39MtI3FCDYKH1cmLO
	We2JMBBRgXJMkpy385xyZ920D4KsGCMhSgf5UcGQ3E55qgBG20fzRAhTnlLwzm7qkRZEeBbTfCQLG
	dQPcHtzfE6+F0maAl9415bc4xnMPp/Uzn57fqEhn/nzvzQRYHEGdd4RIK8zzJTLXmijTAYlYIus8c
	CGXDSSnrI/4jqc1mKLSWploAKPlwFkaIiyZOnzZluJrmKtCQYaTm/BTp7dYr2NpRhC7fS1KlbJxJd
	1xJ0gb9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tri7Z-00000003fH6-24ae;
	Mon, 10 Mar 2025 18:45:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tri7W-00000003fGA-1pDw
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 18:44:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tri7V-0002Ws-6w; Mon, 10 Mar 2025 19:44:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tri7U-0053Cb-31;
	Mon, 10 Mar 2025 19:44:56 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tri7U-0060q0-2j;
	Mon, 10 Mar 2025 19:44:56 +0100
Date: Mon, 10 Mar 2025 19:44:56 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250310184456.i4tpauvbwb6uqwuk@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-3-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-am625-secure-v1-3-4002488ff5ed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_114458_475022_AF40714D 
X-CRM114-Status: GOOD (  21.79  )
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
Subject: Re: [PATCH 03/13] ARM: k3: r5: drop loading of separate binaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-02-28, Sascha Hauer wrote:
> For starting the A52 cores we need TFA, OP-TEE, barebox and ti-dm
	             ^
		     3
> binaries. These can be loaded as separate files from SD/eMMC/DFU or
> alternatively combined into a single FIP image.
> FIP images are convenient to handle, they can easily be generated on the
> command line and fiptool also has support for replacing blobs in images.
> This makes handling of separate binaries rather unnecessary and support
> for it only makes the loading code more complex. Drop it and make FIP
> images the only option which also faciliates integrating of secure boot.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/r5.c | 70 +--------------------------------------------------
>  1 file changed, 1 insertion(+), 69 deletions(-)
> 
> diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
> index ced1eb2856..2418e9ae73 100644
> --- a/arch/arm/mach-k3/r5.c
> +++ b/arch/arm/mach-k3/r5.c
> @@ -288,50 +288,15 @@ static void do_dfu(void)
>  	struct usbgadget_funcs funcs = {};
>  	int ret;
>  	struct stat s;
> -	ssize_t size;
>  
>  	funcs.flags |= USBGADGET_DFU;
> -	funcs.dfu_opts = "/optee.bin(optee)c,"
> -			 "/bl31.bin(tfa)c,"
> -			 "/ti-dm.bin(ti-dm)c,"
> -			 "/barebox.bin(barebox)cs,"
> -			 "/fip.img(fip)cs";
> +	funcs.dfu_opts = "/fip.img(fip)cs";
>  
>  	ret = usbgadget_prepare_register(&funcs);
>  	if (ret)
>  		goto err;
>  
>  	while (1) {
> -		if (!have_bl32) {
> -			size = read_file_into_buf("/optee.bin", BL32_ADDRESS, SZ_32M);
> -			if (size > 0) {
> -				printf("Downloaded OP-TEE\n");
> -				have_bl32 = true;
> -			}
> -		}
> -
> -		if (!have_bl31) {
> -			size = read_file_into_buf("/bl31.bin", BL31_ADDRESS, SZ_32M);
> -			if (size > 0) {
> -				printf("Downloaded TF-A\n");
> -				have_bl31 = true;
> -			}
> -		}
> -
> -		if (!k3_ti_dm) {
> -			ret = read_file_2("/ti-dm.bin", &size, &k3_ti_dm, FILESIZE_MAX);
> -			if (!ret) {
> -				printf("Downloaded TI-DM\n");
> -			}
> -		}
> -
> -		size = read_file_into_buf("/barebox.bin", BAREBOX_ADDRESS, SZ_32M);
> -		if (size > 0) {
> -			have_bl33 = true;
> -			printf("Downloaded barebox image, DFU done\n");
> -			break;
> -		}
> -
>  		ret = stat("/fip.img", &s);
>  		if (!ret) {
>  			printf("Downloaded FIP image, DFU done\n");
> @@ -352,45 +317,12 @@ static void do_dfu(void)
>  
>  static int load_images(void)
>  {
> -	ssize_t size;
>  	int err;
>  
>  	err = load_fip("/boot/k3.fip", 0);

Since load_fip() is the only call we could remove the entire function
and call load_fip() directly from k3_r5_start_image().

Regards,
  Marco

>  	if (!err)
>  		return 0;
>  
> -	size = read_file_into_buf("/boot/optee.bin", BL32_ADDRESS, SZ_32M);
> -	if (size < 0) {
> -		if (size != -ENOENT) {
> -			pr_err("Cannot load optee.bin: %pe\n", ERR_PTR(size));
> -			return size;
> -		}
> -		pr_info("optee.bin not found, continue without\n");
> -	} else {
> -		pr_debug("Loaded optee.bin (size %u) to 0x%p\n", size, BL32_ADDRESS);
> -	}
> -
> -	size = read_file_into_buf("/boot/barebox.bin", BAREBOX_ADDRESS, SZ_32M);
> -	if (size < 0) {
> -		pr_err("Cannot load barebox.bin: %pe\n", ERR_PTR(size));
> -		return size;
> -	}
> -	pr_debug("Loaded barebox.bin (size %u) to 0x%p\n", size, BAREBOX_ADDRESS);
> -
> -	size = read_file_into_buf("/boot/bl31.bin", BL31_ADDRESS, SZ_32M);
> -	if (size < 0) {
> -		pr_err("Cannot load bl31.bin: %pe\n", ERR_PTR(size));
> -		return size;
> -	}
> -	pr_debug("Loaded bl31.bin (size %u) to 0x%p\n", size, BL31_ADDRESS);
> -
> -	err = read_file_2("/boot/ti-dm.bin", &size, &k3_ti_dm, FILESIZE_MAX);
> -	if (err) {
> -		pr_err("Cannot load ti-dm.bin: %pe\n", ERR_PTR(err));
> -		return err;
> -	}
> -	pr_debug("Loaded ti-dm.bin (size %u)\n", size);
> -
>  	return 0;
>  }
>  
> 
> -- 
> 2.39.5
> 
> 
> 


