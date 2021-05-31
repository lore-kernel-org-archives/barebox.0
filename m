Delivery-date: Mon, 31 May 2021 10:22:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndCE-0003TT-Hc
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:22:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndCD-0007jT-0B
	for lore@pengutronix.de; Mon, 31 May 2021 10:22:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z59Shh4FUQzQNZMH+QW2asT7Cd3dFLEYjx3DR5K4KeA=; b=LWA7DvQssaE6V5Ho4UecpPAuNR
	GDT7+WSQ0ewZcw6Yfq9a8j3ncJGYIhajzfkkYhmragHZxIldZeZTTtnBG0awnHFmTG6nDDm5IUgyz
	8+Styt6HjML3JnoewO08/2z52fQVbF7Oze+fNjy6BEcaRvi+L+vAz5BS+dzCqylyj/uxhoYZci7SI
	nhd9XqpxE9biR/ckFz4hAnDQF7zVIoQUU1CQhAE1aySnfo52efpzg/DMfcHxmn06JIMfhOIzhS8hx
	oiRpU9zHrwPRoA1K5dGHxXGVOjhBW09ws5qwZvhNB2J3jALOG6Z5SQ4u4jnMesP3lQ3ejrWRGIdIn
	r4unL9TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndAy-00BOw8-Ky; Mon, 31 May 2021 08:21:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndAS-00BOp0-MK
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:21:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lndAR-00077t-EJ; Mon, 31 May 2021 10:20:59 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210527124453.22710-1-a.fatoum@pengutronix.de>
 <20210531071353.GD5211@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <45eca231-6dbf-f3f9-1753-05f993ee3f54@pengutronix.de>
Date: Mon, 31 May 2021 10:20:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531071353.GD5211@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012100_951025_FBDA8EE1 
X-CRM114-Status: GOOD (  20.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: reunite fb devices with their hardware parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 31.05.21 09:13, Sascha Hauer wrote:
> On Thu, May 27, 2021 at 02:44:53PM +0200, Ahmad Fatoum wrote:
>> So far, only sdlfb and efi associated the framebuffer device they
>> register with the hardware device providing it.
>>
>> Follow suit for all other frame buffers.  This enables devinfo
>> to display parentage.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/video/atmel_lcdfb_core.c | 1 +
>>  drivers/video/bcm2835.c          | 1 +
>>  drivers/video/bochs/bochs_hw.c   | 1 +
>>  drivers/video/imx-ipu-fb.c       | 2 ++
>>  drivers/video/imx-ipu-v3/ipufb.c | 1 +
>>  drivers/video/imx.c              | 2 ++
>>  drivers/video/omap.c             | 1 +
>>  drivers/video/pxa.c              | 1 +
>>  drivers/video/s3c24xx.c          | 1 +
>>  drivers/video/simplefb-client.c  | 1 +
>>  drivers/video/ssd1307fb.c        | 1 +
>>  drivers/video/stm.c              | 1 +
>>  12 files changed, 14 insertions(+)
>>
>> diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
>> index daabfe92d2ca..e7e420d38f86 100644
>> --- a/drivers/video/atmel_lcdfb_core.c
>> +++ b/drivers/video/atmel_lcdfb_core.c
>> @@ -489,6 +489,7 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
>>  		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size,
>>  						     DMA_ADDRESS_BROKEN);
>>  
>> +	info->dev.parent = dev;
>>  	ret = register_framebuffer(info);
>>  	if (ret != 0) {
>>  		dev_err(dev, "Failed to register framebuffer\n");
>> diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
>> index 3d52f8b6b8e7..d808bc5c9fa3 100644
>> --- a/drivers/video/bcm2835.c
>> +++ b/drivers/video/bcm2835.c
>> @@ -118,6 +118,7 @@ static int bcm2835fb_probe(struct device_d *dev)
>>  	info->fbi.mode->xres = info->fbi.xres;
>>  	info->fbi.mode->yres = info->fbi.yres;
>>  
>> +	info->fbi.dev.parent = dev;
>>  	ret = register_framebuffer(&info->fbi);
>>  	if (ret) {
>>  		free(info);
>> diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
>> index 252350aebb5a..debdd36941f4 100644
>> --- a/drivers/video/bochs/bochs_hw.c
>> +++ b/drivers/video/bochs/bochs_hw.c
>> @@ -201,5 +201,6 @@ int bochs_hw_probe(struct device_d *dev, void __iomem *fb_map, void __iomem *mmi
>>  	fb->priv = bochs;
>>  	fb->fbops = &bochs_fb_ops;
>>  
>> +	fb->dev.parent = dev;
>>  	return register_framebuffer(fb);
>>  }
>> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
>> index a3f195373b4e..f39b74676cde 100644
>> --- a/drivers/video/imx-ipu-fb.c
>> +++ b/drivers/video/imx-ipu-fb.c
>> @@ -969,6 +969,7 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
>>  
>>  	sdc_enable_channel(fbi, overlay->screen_base, IDMAC_SDC_1);
>>  
>> +	fbi->overlay.dev.parent = &fbi->info.dev;
>>  	ret = register_framebuffer(&fbi->overlay);
>>  	if (ret < 0) {
>>  		dev_err(fbi->dev, "failed to register framebuffer\n");
>> @@ -1039,6 +1040,7 @@ static int imxfb_probe(struct device_d *dev)
>>  
>>  	sdc_enable_channel(fbi, info->screen_base, IDMAC_SDC_0);
>>  
>> +	fbi->info.dev.parent = dev;
>>  	ret = register_framebuffer(&fbi->info);
>>  	if (ret < 0) {
>>  		dev_err(dev, "failed to register framebuffer\n");
>> diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
>> index 0b5391643450..68e87ff3fb8f 100644
>> --- a/drivers/video/imx-ipu-v3/ipufb.c
>> +++ b/drivers/video/imx-ipu-v3/ipufb.c
>> @@ -336,6 +336,7 @@ static int ipufb_probe(struct device_d *dev)
>>  		if (ret)
>>  			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
>>  
>> +		info->dev.parent = dev;
>>  		ret = register_framebuffer(info);
>>  		if (ret < 0) {
>>  			dev_err(fbi->dev, "failed to register framebuffer\n");
>> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
>> index e93859775a60..f4f58b3ce353 100644
>> --- a/drivers/video/imx.c
>> +++ b/drivers/video/imx.c
>> @@ -514,6 +514,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
>>  	overlay->blue   = rgb->blue;
>>  	overlay->transp = rgb->transp;
>>  
>> +	overlay->dev.parent = &fbi->info.dev;
>>  	ret = register_framebuffer(overlay);
>>  	if (ret < 0) {
>>  		dev_err(fbi->dev, "failed to register framebuffer\n");
>> @@ -592,6 +593,7 @@ static int imxfb_probe(struct device_d *dev)
>>  
>>  	imxfb_activate_var(&fbi->info);
>>  
>> +	fbi->info.dev.parent = dev;
>>  	ret = register_framebuffer(&fbi->info);
>>  	if (ret < 0) {
>>  		dev_err(dev, "failed to register framebuffer\n");
>> diff --git a/drivers/video/omap.c b/drivers/video/omap.c
>> index 009626fefc1f..52a68ef627b7 100644
>> --- a/drivers/video/omap.c
>> +++ b/drivers/video/omap.c
>> @@ -493,6 +493,7 @@ static int omapfb_probe(struct device_d *dev)
>>  		goto out;
>>  	}
>>  
>> +	info->dev.parent = dev;
>>  	rc = register_framebuffer(info);
>>  	if (rc < 0) {
>>  		dev_err(dev, "failed to register framebuffer: %d\n", rc);
>> diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
>> index a2ff4bce2a38..45efa6b71d9f 100644
>> --- a/drivers/video/pxa.c
>> +++ b/drivers/video/pxa.c
>> @@ -533,6 +533,7 @@ static int pxafb_probe(struct device_d *dev)
>>  
>>  	pxafb_activate_var(fbi);
>>  
>> +	fbi->info.dev.parent = dev;
>>  	ret = register_framebuffer(&fbi->info);
>>  	if (ret < 0) {
>>  		dev_err(dev, "failed to register framebuffer\n");
>> diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
>> index 84ed0aee3941..36c91e74ebd5 100644
>> --- a/drivers/video/s3c24xx.c
>> +++ b/drivers/video/s3c24xx.c
>> @@ -395,6 +395,7 @@ static int s3cfb_probe(struct device_d *hw_dev)
>>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_S3C_VERBOSE))
>>  		hw_dev->info = s3cfb_info;
>>  
>> +	fbi.info.dev.parent = dev;
>>  	ret = register_framebuffer(&fbi.info);
>>  	if (ret != 0) {
>>  		dev_err(hw_dev, "Failed to register framebuffer\n");
>> diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
>> index 2d0495f6162e..1f26ac506741 100644
>> --- a/drivers/video/simplefb-client.c
>> +++ b/drivers/video/simplefb-client.c
>> @@ -121,6 +121,7 @@ static int simplefb_probe(struct device_d *dev)
>>  		 info->xres, info->yres,
>>  		 info->bits_per_pixel, info->line_length);
>>  
>> +	info->dev.parent = dev;
>>  	ret = register_framebuffer(info);
>>  	if (ret < 0) {
>>  		dev_err(dev, "Unable to register simplefb: %d\n", ret);
>> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
>> index 994f43dc5cf5..af5d6086e1d8 100644
>> --- a/drivers/video/ssd1307fb.c
>> +++ b/drivers/video/ssd1307fb.c
>> @@ -543,6 +543,7 @@ static int ssd1307fb_probe(struct device_d *dev)
>>  	if (ret)
>>  		goto reset_oled_error;
>>  
>> +	info->dev.parent = dev;
>>  	ret = register_framebuffer(info);
>>  	if (ret) {
>>  		dev_err(&client->dev, "Couldn't register the framebuffer\n");
>> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
>> index d4a618fe5091..1c8336f7e2c3 100644
>> --- a/drivers/video/stm.c
>> +++ b/drivers/video/stm.c
>> @@ -571,6 +571,7 @@ static int stmfb_probe(struct device_d *hw_dev)
>>  
>>  	fb_of_reserve_add_fixup(&fbi.info);
>>  
>> +	fbi.info.dev.parent = dev;
> 
> Should be hw_dev here. Fixed while applying, thanks

Ouch. Thanks for the fixup. Shows how much I/We would benefit from merging
the testing series soon, so Github Actions can start building these configuration
I inadvertently break :))

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

