Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail11.tpgi.com.au ([203.12.160.161])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pextx-00047R-OG
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 22:50:20 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 18 Jan 2011 09:49:35 +1100
References: <1295259766-19301-1-git-send-email-s.hauer@pengutronix.de>
	<1295259766-19301-4-git-send-email-s.hauer@pengutronix.de>
	<201101171159.31154.jbe@pengutronix.de>
In-Reply-To: <201101171159.31154.jbe@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201101180949.35371.marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] ARM i.MX28 tx28: use a fixed framebuffer address
To: barebox@lists.infradead.org


> >  static struct imx_fb_videomode imxfb_mode = {
> >  
> >  	.mode_list = tx28evk_vmodes,
> >  	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
> >  	.dotclk_delay = 0,	/* no adaption required */
> >  	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
> > 
> > +	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
> > +	.fixed_screen_size = MAX_FB_SIZE,
> > 
> >  };
> 
> Question only: Any idea how we could make this setup (base address and size
> of the fixed screen) a runtime feature? This would be a nice feature like
> most modern BIOS also have: Make the size of the video memory shared with
> the CPU selectable at runtime.
> 

Purely out of interest, what is the advantage/necessity for having the frame 
buffer at a fixed address?

Cheers
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
