Delivery-date: Tue, 02 Jun 2026 19:12:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUSf6-001eQK-0n
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 19:12:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUSf4-0008Rr-DS
	for lore@pengutronix.de; Tue, 02 Jun 2026 19:12:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gxwj8n6wumIh7/vBTVtUnZRgdXPhMdLjAim0kwEyC9Y=; b=qwjIXHA81QBFO7yfM4LTnOBaHn
	1Mj5xTxJueQdtm8yNPBTAHFFcxvU12XKh4hl+cVwmIKHlPRPazi+PmLUFlg8vL78HQ6kRZGySUYLm
	ACWi0lKXGw20Uzckvb9GvzWdfJM3nDgmme39PQUIMVhNLfnLdLzQmvNDHjvXNr8OslZDP4DzNdp0C
	tQ9TU9EBrGPnGf/Wz9Ijf/pVXJpeLY0FEcHH/77rQ5heURW1prQUrg6nMc86geU68bPiJyOG7NCi0
	JqYUfrTkhoIgo3V3LYjNtxfLansXyDQJBb5hlNkOReLeVBu03dBtbzOPr6gDFz/WTAW5Uct9uYRSa
	8mwBhKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSdX-0000000DYVn-1Wju;
	Tue, 02 Jun 2026 17:10:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSdW-0000000DYVJ-0GKQ
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 17:10:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 81ECA6001A;
	Tue,  2 Jun 2026 17:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07D841F00893;
	Tue,  2 Jun 2026 17:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780420241;
	bh=gxwj8n6wumIh7/vBTVtUnZRgdXPhMdLjAim0kwEyC9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XUBqKodsPS2xYZ4P2UR9GpecDnNg2dKw0n4XUd2GlG5qwz6FielbCBvUv+eAsg5WT
	 D7UiUbNhzTQOmW71nIPjLsxUoO8a6JgLA4O8+v0LaoJE1B8XFJBVHZ06tV6L9nnBzA
	 Air14S3C3MGRRjJV/dqqCNirtKbslA4cnl6qvF2KBCebfmp0obXf/U2mhRWvQs0rxP
	 OoMoZpU17TaVSgYI6mvggFWgWZIdHAWZBieLQyW/fTKazAXVl3d98jLDkwOGwyD9qD
	 qbzUWTKKHKNlQZcVTXeI3YccPphNYz0VJZ8I3713csM+Y36h5pMnToc90sDdkh4v/n
	 yyhpl9i8clJ9g==
Date: Tue, 2 Jun 2026 19:10:36 +0200
From: Michael Grzeschik <mgr@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	barebox@lists.infradead.org, thomas.haemmerle@leica-geosystems.com
Message-ID: <ah8OjJwP-Q42ShJQ@pengutronix.de>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
 <54467182b9e4f15a1ac068533e73aaac5f21bf46.camel@pengutronix.de>
 <679f1823-5edd-4a8f-8a8e-caf6db7dd483@pengutronix.de>
 <9bf1b5920ca2c986533c5f17d10aa774aa60c895.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bf1b5920ca2c986533c5f17d10aa774aa60c895.camel@pengutronix.de>
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
X-Spam-Status: No, score=-105.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jun 02, 2026 at 02:12:43PM +0200, Lucas Stach wrote:
> Am Dienstag, dem 02.06.2026 um 11:37 +0200 schrieb Ahmad Fatoum:
> > 
> > On 6/2/26 10:12 AM, Lucas Stach wrote:
> > > Am Dienstag, dem 02.06.2026 um 04:09 +0000 schrieb Johannes Schneider:
> > > > From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > > > 
> > > > The LCDIF framebuffer is allocated as Normal Non-Cacheable (write-combine)
> > > > memory.  After the splash command calls gu_screen_blit(), which copies the
> > > > decoded PNG via memcpy() from a cached shadow buffer into the hardware
> > > > framebuffer, writes may still reside in the CPU write buffer and not yet
> > > > be visible to the LCDIF DMA engine.  On hardware this manifests as
> > > > partial or corrupted rendering — the bottom portion of the splash image
> > > > renders black or shows garbage.
> > > > 
> > > > Implement fb_damage() to execute a DSB SY barrier after each blit,
> > > > ensuring all pending write-combine writes are committed to DRAM before
> > > > the LCDIF reads the pixel data.
> > > > 
> > > > Assisted-by: Claude:claude-sonnet-4-6
> > > > Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > > > ---
> > > >  drivers/video/imx-lcdif.c | 13 +++++++++++++
> > > >  1 file changed, 13 insertions(+)
> > > > 
> > > > diff --git a/drivers/video/imx-lcdif.c b/drivers/video/imx-lcdif.c
> > > > index ae5976c771..8d9b40be0f 100644
> > > > --- a/drivers/video/imx-lcdif.c
> > > > +++ b/drivers/video/imx-lcdif.c
> > > > @@ -20,6 +20,7 @@
> > > >  #include <of_graph.h>
> > > >  #include <video/media-bus-format.h>
> > > >  #include <video/vpl.h>
> > > > +#include <asm/system.h>
> > > >  
> > > >  /* LCDIF V8 register map */
> > > >  #define LCDC_V8_CTRL			0x00
> > > > @@ -262,9 +263,21 @@ static void lcdif_fb_disable(struct fb_info *info)
> > > >  	clk_disable_unprepare(priv->clk_axi);
> > > >  }
> > > >  
> > > > +static void lcdif_fb_damage(struct fb_info *info, struct fb_rect *rect)
> > > > +{
> > > > +	/*
> > > > +	 * The hardware framebuffer is Normal Non-Cacheable (write-combine).
> > > > +	 * Writes from the shadow-buffer memcpy may sit in the CPU write buffer
> > > > +	 * and not yet be visible to the LCDIF DMA engine. Execute DSB SY to
> > > > +	 * drain the write buffer to DRAM before the LCDIF reads the pixels.
> > > > +	 */
> > > > +	dsb();
> > > 
> > > This will probably work in practice, but it doesn't exactly do what the
> > > comment above states. A dsb does not drain the write combine buffers,
> > > it just makes sure that they are drained before the next instruction is
> > > executed.
> > > So if the fb_damage is the last thing that gets executed, this will not
> > > ensure that the writes will actually become visible to external agents.
> > > 
> > > A more robust way to drain the write combine buffers is to execute a
> > > readback of a memory location within the WC region.
> > 
> > Would that on its own suffice though? If we have just the single buffer,
> > flushing the write buffer only reduces the race window, but doesn't
> > remove it as the framebuffer write may still happen in parallel to the
> > scanout.
> 
> Updating the (front-)framebuffer will always be racy against the
> scanout. The flushes just ensure that the writes eventually reach
> memory visible to the scanout DMA master. Without any flushes there is
> nothing in the memory model which would prohibit writes from being
> stuck in the write buffers indefinitely. 

I am curious if this is actually all necessary.

In the driver Johannes send, there is the comment

+       /* 32bpp XRGB8888 → ARGB8888 pixel format.
+        * SHADOW_LOAD_EN causes the descriptor registers (address, format, pitch)
+        * to be latched into the active registers on the next VSYNC, which is
+        * required for the initial descriptor load in barebox's single-enable
+        * sequence (no DRM page-flip mechanism).  EN is ORed in later by
+        * lcdif_enable() after DISP_ON. */

in lcdif_set_plane of the imx-lcdif driver.

This exactly flushes the buffer once. I also did this but also
implemented lcdif_crtc_atomic_flush in drivers/video/lcdif_kms.c as the
fb_flush callback which will do exactly this LOAD_EN call every time a
new frame was written. With this change I had no issues with distorted
images.

> > > > +}
> > > > +
> > > >  static struct fb_ops lcdif_fb_ops = {
> > > >  	.fb_enable  = lcdif_fb_enable,
> > > >  	.fb_disable = lcdif_fb_disable,
> > > > +	.fb_damage  = lcdif_fb_damage,
> > > >  };
> > > >  
> > > >  static int lcdif_probe(struct device *dev)
> > > 
> > > 


