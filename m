Delivery-date: Tue, 02 Jun 2026 17:20:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUQvJ-001cew-16
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 17:20:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUQvI-0003iC-KG
	for lore@pengutronix.de; Tue, 02 Jun 2026 17:20:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9HSYrVifcwAxOop4+b3pkCUiaT76Pgb4d5aJ+Napczo=; b=g4J92BC35sSBVr4+gwrNqlrGV6
	CM6rSrrgb96kCKWX3kv1QH6MJf4fYiFwweazHJpX6+jd+X6qvQpNI/snI6awKi3BTbpu2gc0OPhxX
	JwSLEQosUfypLv3uFn+cQEW8cLtRYuJLex0CbaHgqjZ00Odd/rTnTAGoHf4wthEA1ZUwL3zEtly5N
	sMp90gQMoCon3q2Ih9OxOvtIINUGBxqR/pcNaOB4UfA4GHHg6hC5LTldYNpeVQgmzUbLbRDTEuI9z
	RndqUVjnpEnbTc2YeHD/ex63b5Fq27PKyQaqj87VADp7WYniIVVFdi4bccbYnQ/KTb65Z27ELk/1h
	8X/AGPJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQsL-0000000DJQW-3dqN;
	Tue, 02 Jun 2026 15:17:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQsD-0000000DJD6-2q2j
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 15:17:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EDC7F43838;
	Tue,  2 Jun 2026 15:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C4FC1F00898;
	Tue,  2 Jun 2026 15:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780413464;
	bh=9HSYrVifcwAxOop4+b3pkCUiaT76Pgb4d5aJ+Napczo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TVABfYLfLf6/obK083C0whlJzVpQFDRY/phNATDQxW0l7xsd/np4Jf6jMSmDMwAq4
	 KkvOKf8tk/k1rRelJWkBey3J4pY/IaxhdtcYpZibWAbj2atRwmuRualBqJsP3os6bD
	 SY+ZOL6rq0BM8DMLz4nQrB8E7EIEMBCMDHuY+mR0xvg6ghZzenGxrQl46mtzVjJrZU
	 gWO8YzyyMkeTSrQtXiVaSfGEJ0/wplzU/Edcsz1TLdGbf99DYS+zhvJXdFvD+IxFWC
	 axkJLlgS9A4J+FFkBiSzmFnnR3ynpnXU9j22Yu1JDAGTv2dDcY4JWnNrJXZol16XrT
	 xxzZKpDeG4B+g==
Date: Tue, 2 Jun 2026 17:17:40 +0200
From: Michael Grzeschik <mgr@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	barebox@lists.infradead.org, thomas.haemmerle@leica-geosystems.com
Message-ID: <ah70FFDnP_O2RYr-@pengutronix.de>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_081745_986127_C3F2EB93 
X-CRM114-Status: GOOD (  38.16  )
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
X-Spam-Status: No, score=-105.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes

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

I wonder why this all is actually necessary. The driver has an shadowed
buffer which can be flushed when ready.

Your implementation already has this comment.

+       /* 32bpp XRGB8888 → ARGB8888 pixel format.
+        * SHADOW_LOAD_EN causes the descriptor registers (address, format, pitch)
+        * to be latched into the active registers on the next VSYNC, which is
+        * required for the initial descriptor load in barebox's single-enable
+        * sequence (no DRM page-flip mechanism).  EN is ORed in later by
+        * lcdif_enable() after DISP_ON. */

Look into mine and you will find the function flush function, which will
exactly do this after every frame write.


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

Regards,
Michael


