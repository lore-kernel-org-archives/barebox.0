Delivery-date: Tue, 18 Oct 2022 11:07:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiZV-00CTPx-Qf
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:07:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiZT-000603-Lw
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mo3s6KCsHbxOzHC8sBlfNsHSl1ycM8xtJNjC3zpBVQk=; b=HeR8Wdcz/yPI51VQQCoQus/FbV
	HGor5BZyEC+NkPx3uIQtqEp0oiUMSNV7EqredAMzvFJZvq1DpvUuFDUW3EpBW7jKVS8wHjVBvb0mV
	GmBYa8TxykqOCsFM9WJxw6OBuBTJjrbitulPyW0AuYQDtnFIt8OTnlJ2JiJHp6sllMtdN/Ejtk8Kt
	68bV8tAA8bN/PA2aE9SfLnWfMl94VPYOaCdGK3+ETDPKhNdJ/dwq/KcVtG97f8V4qsglnG8348l0k
	DCT+GzLExhG9MlQtl+5R3qV8RvF3MoQXQzYWcHH0SvY8HW7YfsZVJ5jlBbgW7c8DkDXFznRTuFuW4
	Ih89l4NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiY3-004hkk-Hn; Tue, 18 Oct 2022 09:06:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiXq-004hdx-AC
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:05:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiXo-0005gP-Ve; Tue, 18 Oct 2022 11:05:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiXo-0007iY-Hi; Tue, 18 Oct 2022 11:05:52 +0200
Date: Tue, 18 Oct 2022 11:05:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Andrej Picej <andrej.picej@norik.com>
Message-ID: <20221018090552.GP6702@pengutronix.de>
References: <20221017071127.1459152-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017071127.1459152-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_020554_387938_A35677BB 
X-CRM114-Status: GOOD (  28.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: xload-gpmi-nand: refactor for more SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 09:11:27AM +0200, Ahmad Fatoum wrote:
> The code hardcodes i.MX6 addresses, which needs to be factored out for
> use in other SoCs' startup. Do this by creating a new imx_nand_params
> to hold these information and passing it into the now more generic
> code.
> 
> No functional change intended. Untested as I got no i.MX6 directly
> booting from NAND.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx6-regs.h |  2 +
>  arch/arm/mach-imx/xload-gpmi-nand.c        | 76 ++++++++++++----------
>  2 files changed, 44 insertions(+), 34 deletions(-)

Looks good. Nevertheless I'll delay this until the rest of i.MX7 NAND
boot is in place.

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
> index 35f03036cb5b..39e275153317 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
> @@ -3,7 +3,9 @@
>  #ifndef __MACH_IMX6_REGS_H
>  #define __MACH_IMX6_REGS_H
>  
> +#define MX6_APBH_BASE_ADDR		0x00110000
>  #define MX6_GPMI_BASE_ADDR		0x00112000
> +#define MX6_BCH_BASE_ADDR		0x00114000
>  
>  #define MX6_FAST1_BASE_ADDR		0x00c00000
>  #define MX6_FAST2_BASE_ADDR		0x00b00000
> diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
> index 3a4f331ce648..bc3562acb341 100644
> --- a/arch/arm/mach-imx/xload-gpmi-nand.c
> +++ b/arch/arm/mach-imx/xload-gpmi-nand.c
> @@ -1124,49 +1124,44 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
>  	return 0;
>  }
>  
> -static int __maybe_unused imx6_nand_load_image(void *cmdbuf, void *descs,
> -	void *databuf, void *dest, int len)
> +struct imx_nand_params {
> +	struct mxs_nand_info info;
> +	struct apbh_dma apbh;
> +	void *sdram;
> +};
> +
> +static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
> +					       void *databuf, void *dest, int len)
>  {
> -	struct mxs_nand_info info = {
> -		.io_base = (void *)0x00112000,
> -		.bch_base = (void *)0x00114000,
> -	};
> -	struct apbh_dma apbh = {
> -		.id = IMX28_DMA,
> -		.regs = (void *)0x00110000,
> -	};
> +	struct mxs_nand_info *info = &params->info;
>  	struct mxs_dma_chan pchan = {
>  		.channel = 0, /* MXS: MXS_DMA_CHANNEL_AHB_APBH_GPMI0 */
> -		.apbh = &apbh,
> +		.apbh = &params->apbh,
>  	};
>  	int ret;
>  	struct fcb_block *fcb;
>  
> -	info.dma_channel = &pchan;
> +	info->dma_channel = &pchan;
>  
>  	pr_debug("cmdbuf: 0x%p descs: 0x%p databuf: 0x%p dest: 0x%p\n",
> -			cmdbuf, descs, databuf, dest);
> -
> -	/* Command buffers */
> -	info.cmd_buf = cmdbuf;
> -	info.desc = descs;
> +			info->cmd_buf, info->desc, databuf, dest);
>  
> -	ret = mxs_nand_get_info(&info, databuf);
> +	ret = mxs_nand_get_info(info, databuf);
>  	if (ret)
>  		return ret;
>  
> -	ret = get_fcb(&info, databuf);
> +	ret = get_fcb(info, databuf);
>  	if (ret)
>  		return ret;
>  
> -	fcb = &info.fcb;
> +	fcb = &info->fcb;
>  
> -	get_dbbt(&info, databuf);
> +	get_dbbt(info, databuf);
>  
> -	ret = read_firmware(&info, fcb->Firmware1_startingPage, dest, len);
> +	ret = read_firmware(info, fcb->Firmware1_startingPage, dest, len);
>  	if (ret) {
>  		pr_err("Failed to read firmware1, trying firmware2\n");
> -		ret = read_firmware(&info, fcb->Firmware2_startingPage,
> +		ret = read_firmware(info, fcb->Firmware2_startingPage,
>  			dest, len);
>  		if (ret) {
>  			pr_err("Failed to also read firmware2\n");
> @@ -1177,24 +1172,21 @@ static int __maybe_unused imx6_nand_load_image(void *cmdbuf, void *descs,
>  	return 0;
>  }
>  
> -int imx6_nand_start_image(void)
> +static int imx_nand_start_image(struct imx_nand_params *params)
>  {
> +	struct mxs_nand_info *info = &params->info;
>  	int ret;
> -	void *sdram = (void *)0x10000000;
>  	void __noreturn (*bb)(void);
> -	void *cmdbuf, *databuf, *descs;
> +	void *databuf;
>  
> -	cmdbuf = sdram;
> -	descs = sdram + MXS_NAND_COMMAND_BUFFER_SIZE;
> -	databuf = descs +
> +	/* Command buffers */
> +	info->cmd_buf = params->sdram;
> +	info->desc = params->sdram + MXS_NAND_COMMAND_BUFFER_SIZE;
> +	databuf = info->desc +
>  		sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT;
>  	bb = (void *)PAGE_ALIGN((unsigned long)databuf + SZ_8K);
>  
> -	/* Apply ERR007117 workaround */
> -	imx6_errata_007117_enable();
> -
> -	ret = imx6_nand_load_image(cmdbuf, descs, databuf,
> -		bb, imx_image_size());
> +	ret = imx6_nand_load_image(params, databuf, bb, imx_image_size());
>  	if (ret) {
>  		pr_err("Loading image failed: %d\n", ret);
>  		return ret;
> @@ -1207,3 +1199,19 @@ int imx6_nand_start_image(void)
>  
>  	bb();
>  }
> +
> +int imx6_nand_start_image(void)
> +{
> +	static struct imx_nand_params params = {
> +		.info.io_base = IOMEM(MX6_GPMI_BASE_ADDR),
> +		.info.bch_base = IOMEM(MX6_BCH_BASE_ADDR),
> +		.apbh.regs = IOMEM(MX6_APBH_BASE_ADDR),
> +		.apbh.id = IMX28_DMA,
> +		.sdram = (void *)MX6_MMDC_PORT01_BASE_ADDR,
> +	};
> +
> +	/* Apply ERR007117 workaround */
> +	imx6_errata_007117_enable();
> +
> +	return imx_nand_start_image(&params);
> +}
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


