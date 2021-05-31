Delivery-date: Mon, 31 May 2021 09:15:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc98-0002wU-Dl
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:15:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc96-0004Gn-Ss
	for lore@pengutronix.de; Mon, 31 May 2021 09:15:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+UAqC2nTSVGm8jhvLs8KQG9/Pjvj9UZxwvOQ248HpCs=; b=3Ip++C8ADI7WJu6a2In1mJBftr
	t3JggdK/pMn5QCqmUBhHIveeV1DeRMW9zwK6BS718ScO2e82S58CjIC8el4myD2QL0ufW3w91+bIe
	LflxZC8vKzlNt4bAnKYPOO8al9fVJtx3itAaxU+ic7Y7+lleqjrjtoFeG9+shKn6+7pfyvqI+kDin
	YCVOHjplQqM1cROm2dOOlD+0AVwCUv4VBNg+CABKlJX9rjRvqsBt3i0X/9gdEHTKHuVcLVoHS51pK
	jtVMlXfMELkacDliiPG0Ve5Ndi1OOaVN4VqA5WQGzgSO1luuc+78h5lreNOAmf+q+qQx7AgX+HmQU
	/bsPp7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc7i-00B8L0-Ha; Mon, 31 May 2021 07:14:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc7W-00B8IQ-Qx
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:13:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnc7V-0003Yy-Hl; Mon, 31 May 2021 09:13:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lnc7V-0002yN-93; Mon, 31 May 2021 09:13:53 +0200
Date: Mon, 31 May 2021 09:13:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210531071353.GD5211@pengutronix.de>
References: <20210527124453.22710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527124453.22710-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:11:47 up 102 days, 10:35, 123 users,  load average: 0.28, 0.36,
 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001355_076611_1FB11CF3 
X-CRM114-Status: GOOD (  24.33  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: reunite fb devices with their hardware parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 02:44:53PM +0200, Ahmad Fatoum wrote:
> So far, only sdlfb and efi associated the framebuffer device they
> register with the hardware device providing it.
> 
> Follow suit for all other frame buffers.  This enables devinfo
> to display parentage.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/atmel_lcdfb_core.c | 1 +
>  drivers/video/bcm2835.c          | 1 +
>  drivers/video/bochs/bochs_hw.c   | 1 +
>  drivers/video/imx-ipu-fb.c       | 2 ++
>  drivers/video/imx-ipu-v3/ipufb.c | 1 +
>  drivers/video/imx.c              | 2 ++
>  drivers/video/omap.c             | 1 +
>  drivers/video/pxa.c              | 1 +
>  drivers/video/s3c24xx.c          | 1 +
>  drivers/video/simplefb-client.c  | 1 +
>  drivers/video/ssd1307fb.c        | 1 +
>  drivers/video/stm.c              | 1 +
>  12 files changed, 14 insertions(+)
> 
> diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
> index daabfe92d2ca..e7e420d38f86 100644
> --- a/drivers/video/atmel_lcdfb_core.c
> +++ b/drivers/video/atmel_lcdfb_core.c
> @@ -489,6 +489,7 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
>  		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size,
>  						     DMA_ADDRESS_BROKEN);
>  
> +	info->dev.parent = dev;
>  	ret = register_framebuffer(info);
>  	if (ret != 0) {
>  		dev_err(dev, "Failed to register framebuffer\n");
> diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
> index 3d52f8b6b8e7..d808bc5c9fa3 100644
> --- a/drivers/video/bcm2835.c
> +++ b/drivers/video/bcm2835.c
> @@ -118,6 +118,7 @@ static int bcm2835fb_probe(struct device_d *dev)
>  	info->fbi.mode->xres = info->fbi.xres;
>  	info->fbi.mode->yres = info->fbi.yres;
>  
> +	info->fbi.dev.parent = dev;
>  	ret = register_framebuffer(&info->fbi);
>  	if (ret) {
>  		free(info);
> diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
> index 252350aebb5a..debdd36941f4 100644
> --- a/drivers/video/bochs/bochs_hw.c
> +++ b/drivers/video/bochs/bochs_hw.c
> @@ -201,5 +201,6 @@ int bochs_hw_probe(struct device_d *dev, void __iomem *fb_map, void __iomem *mmi
>  	fb->priv = bochs;
>  	fb->fbops = &bochs_fb_ops;
>  
> +	fb->dev.parent = dev;
>  	return register_framebuffer(fb);
>  }
> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> index a3f195373b4e..f39b74676cde 100644
> --- a/drivers/video/imx-ipu-fb.c
> +++ b/drivers/video/imx-ipu-fb.c
> @@ -969,6 +969,7 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
>  
>  	sdc_enable_channel(fbi, overlay->screen_base, IDMAC_SDC_1);
>  
> +	fbi->overlay.dev.parent = &fbi->info.dev;
>  	ret = register_framebuffer(&fbi->overlay);
>  	if (ret < 0) {
>  		dev_err(fbi->dev, "failed to register framebuffer\n");
> @@ -1039,6 +1040,7 @@ static int imxfb_probe(struct device_d *dev)
>  
>  	sdc_enable_channel(fbi, info->screen_base, IDMAC_SDC_0);
>  
> +	fbi->info.dev.parent = dev;
>  	ret = register_framebuffer(&fbi->info);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to register framebuffer\n");
> diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
> index 0b5391643450..68e87ff3fb8f 100644
> --- a/drivers/video/imx-ipu-v3/ipufb.c
> +++ b/drivers/video/imx-ipu-v3/ipufb.c
> @@ -336,6 +336,7 @@ static int ipufb_probe(struct device_d *dev)
>  		if (ret)
>  			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
>  
> +		info->dev.parent = dev;
>  		ret = register_framebuffer(info);
>  		if (ret < 0) {
>  			dev_err(fbi->dev, "failed to register framebuffer\n");
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index e93859775a60..f4f58b3ce353 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -514,6 +514,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
>  	overlay->blue   = rgb->blue;
>  	overlay->transp = rgb->transp;
>  
> +	overlay->dev.parent = &fbi->info.dev;
>  	ret = register_framebuffer(overlay);
>  	if (ret < 0) {
>  		dev_err(fbi->dev, "failed to register framebuffer\n");
> @@ -592,6 +593,7 @@ static int imxfb_probe(struct device_d *dev)
>  
>  	imxfb_activate_var(&fbi->info);
>  
> +	fbi->info.dev.parent = dev;
>  	ret = register_framebuffer(&fbi->info);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to register framebuffer\n");
> diff --git a/drivers/video/omap.c b/drivers/video/omap.c
> index 009626fefc1f..52a68ef627b7 100644
> --- a/drivers/video/omap.c
> +++ b/drivers/video/omap.c
> @@ -493,6 +493,7 @@ static int omapfb_probe(struct device_d *dev)
>  		goto out;
>  	}
>  
> +	info->dev.parent = dev;
>  	rc = register_framebuffer(info);
>  	if (rc < 0) {
>  		dev_err(dev, "failed to register framebuffer: %d\n", rc);
> diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
> index a2ff4bce2a38..45efa6b71d9f 100644
> --- a/drivers/video/pxa.c
> +++ b/drivers/video/pxa.c
> @@ -533,6 +533,7 @@ static int pxafb_probe(struct device_d *dev)
>  
>  	pxafb_activate_var(fbi);
>  
> +	fbi->info.dev.parent = dev;
>  	ret = register_framebuffer(&fbi->info);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to register framebuffer\n");
> diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
> index 84ed0aee3941..36c91e74ebd5 100644
> --- a/drivers/video/s3c24xx.c
> +++ b/drivers/video/s3c24xx.c
> @@ -395,6 +395,7 @@ static int s3cfb_probe(struct device_d *hw_dev)
>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_S3C_VERBOSE))
>  		hw_dev->info = s3cfb_info;
>  
> +	fbi.info.dev.parent = dev;
>  	ret = register_framebuffer(&fbi.info);
>  	if (ret != 0) {
>  		dev_err(hw_dev, "Failed to register framebuffer\n");
> diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
> index 2d0495f6162e..1f26ac506741 100644
> --- a/drivers/video/simplefb-client.c
> +++ b/drivers/video/simplefb-client.c
> @@ -121,6 +121,7 @@ static int simplefb_probe(struct device_d *dev)
>  		 info->xres, info->yres,
>  		 info->bits_per_pixel, info->line_length);
>  
> +	info->dev.parent = dev;
>  	ret = register_framebuffer(info);
>  	if (ret < 0) {
>  		dev_err(dev, "Unable to register simplefb: %d\n", ret);
> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index 994f43dc5cf5..af5d6086e1d8 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -543,6 +543,7 @@ static int ssd1307fb_probe(struct device_d *dev)
>  	if (ret)
>  		goto reset_oled_error;
>  
> +	info->dev.parent = dev;
>  	ret = register_framebuffer(info);
>  	if (ret) {
>  		dev_err(&client->dev, "Couldn't register the framebuffer\n");
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> index d4a618fe5091..1c8336f7e2c3 100644
> --- a/drivers/video/stm.c
> +++ b/drivers/video/stm.c
> @@ -571,6 +571,7 @@ static int stmfb_probe(struct device_d *hw_dev)
>  
>  	fb_of_reserve_add_fixup(&fbi.info);
>  
> +	fbi.info.dev.parent = dev;

Should be hw_dev here. Fixed while applying, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

