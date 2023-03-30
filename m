Delivery-date: Thu, 30 Mar 2023 14:03:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phr0C-002i15-EG
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 14:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phr0C-0005bP-9o
	for lore@pengutronix.de; Thu, 30 Mar 2023 14:03:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fPG+fmt1E+1O7Rhteb3Z2abNngxCkdf5BelfSAJMdB0=; b=sFHUszKgRs+UyP/kGtXYY24gj0
	J8avJib8y8GIaRqu35ezn6wTosa55swH7IT2OJT7GL56vhb2KKYIfB3cgiejJ91Gi85+fD9lOOhnN
	4RmjucjjVSrsEgpU0Fk0kpThjxi5JL+a821GfbPpx71sxSzqWH2aeGR08jWpbv83FvgP0GnBRhXoL
	VC08KTE15iK2hYxHF/amLg2JV48J26TMll/uoA4QJQPTKGoObtZN3fW+U4DsWb/31RBv6u3LFE1S0
	GeV2rs8bh5qJE0y7Pljwj6xdCtCcfFQmJ93Rb911y2g18mJ4vsrTjz4HQrV5gok4PjHdD8wqVRt2J
	mcvDKNzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqyo-003hpB-1J;
	Thu, 30 Mar 2023 12:02:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqyk-003hog-2F
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 12:02:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1phqyh-0005AJ-1K; Thu, 30 Mar 2023 14:02:03 +0200
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1phqyg-0002JF-QB; Thu, 30 Mar 2023 14:02:02 +0200
Date: Thu, 30 Mar 2023 14:02:02 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230330120202.GA4075@pengutronix.de>
References: <20230329105638.1258096-1-p.zabel@pengutronix.de>
 <20230329105638.1258096-3-p.zabel@pengutronix.de>
 <abd00c6b-2c9a-8d3a-bd64-0635adf43cc2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abd00c6b-2c9a-8d3a-bd64-0635adf43cc2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_050206_731362_61D952A2 
X-CRM114-Status: GOOD (  21.07  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] video: add MIPI DBI framebuffer helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

thank you for the review.

On Thu, Mar 30, 2023 at 10:43:54AM +0200, Ahmad Fatoum wrote:
> On 29.03.23 12:56, Philipp Zabel wrote:
[...]
> > +static void mipi_dbi_buf_copy(void *dst, struct fb_info *info, bool swap)
> > +{
> > +	u16 *src = (u16 *)info->screen_base;
> > +	u16 *dst16 = dst;
> > +	size_t len = info->xres * info->yres;
> > +	int i;
> > +
> > +	if (swap) {
> > +		for (i = 0; i < len; i++) {
> > +			*dst16++ = *src << 8 | *src >> 8;
> > +			src++;
> > +		}
> > +	} else {
> > +		memcpy(dst, src, len * 2);
> 
> Do we need this? Why can't we send out framebuffer directly if there is no
> swapping to be done?

We do not. If byte swapping is not necessary, we can transfer directly
from the framebuffer, as long as this driver only supports 16-bit
RGB565. I'll improve this in v2.

[...]
> > +/**
> > + * mipi_dbi_enable_flush - MIPI DBI enable helper
> > + * @dbidev: MIPI DBI device structure
> > + * @crtc_state: CRTC state
> > + * @plane_state: Plane state
> > + *
> > + * Flushes the whole framebuffer and enables the backlight. Drivers can use this
> > + * in their &drm_simple_display_pipe_funcs->enable callback.
> 
> fb_ops->fb_enable ?

Yes. The whole comment slipped through unchanged from the Linux driver.
Will fix.

[...]
> > +void mipi_dbi_fb_disable(struct fb_info *info)
> > +{
> > +	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
> > +
> > +	if (dbidev->backlight)
> > +		backlight_set_brightness(dbidev->backlight, 0);
> > +	else
> > +		mipi_dbi_blank(dbidev);
> > +
> > +	if (dbidev->regulator)
> > +		regulator_disable(dbidev->regulator);
> > +	if (dbidev->io_regulator)
> > +		regulator_disable(dbidev->io_regulator);
> 
> Calling regulator_disable on NULL pointer is a no-op.

Ah right, this is different from Linux.
I'll remove the unnecessary checks.

> > +int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
> > +		      struct fb_videomode *mode)
> > +{
> > +	struct fb_info *info = &dbidev->info;
> > +
> > +	info->mode = mode;
> > +	info->fbops = ops;
> > +	info->dev.parent = dbidev->dev;
> > +
> > +	info->xres = mode->xres;
> > +	info->yres = mode->yres;
> > +	info->bits_per_pixel = 16;
> > +	info->line_length = info->xres * (info->bits_per_pixel >> 3);
> > +
> > +	info->screen_size = info->line_length * info->yres;
> > +	info->screen_base = kzalloc(info->screen_size, GFP_KERNEL);
> 
> dma_alloc? In case some SPI driver gets DMA support.

Ok.

> > +
> > +	info->red.length = 5;
> > +	info->red.offset = 11;
> > +	info->green.length = 6;
> > +	info->green.offset = 5;
> > +	info->blue.length = 5;
> > +	info->blue.offset = 0;
> > +
> > +	dbidev->tx_buf = kzalloc(mode->xres * mode->yres * 2, GFP_KERNEL);
> 
> Use info->screen_size here as well?

Yes. This driver doesn't support 32-bit framebuffers with conversion
to 16-bit transfers, so this can use info->screen_size as well.

regards
Philipp


