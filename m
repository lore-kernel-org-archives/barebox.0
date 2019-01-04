Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfK2f-0005Up-O2
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 07:37:19 +0000
Date: Fri, 4 Jan 2019 08:37:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190104073715.4a2auimzff4b3kn7@pengutronix.de>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-4-sam@ravnborg.org>
 <20190103081606.yz2s7q4jxzgpz2yt@pengutronix.de>
 <20190103105800.GA27356@ravnborg.org>
 <20190103210041.GA20602@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190103210041.GA20602@ravnborg.org>
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
Subject: Re: [PATCH v1 3/3] at91sam9263ek: add bootstrap support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 03, 2019 at 10:00:41PM +0100, Sam Ravnborg wrote:
> Hi Sascha.
> 
> Previous mail was written while being disturbed by others - sorry.
>  
> > > > Fix lowlevel init to get reset vector.
> > > > 
> > > > Add new MACH_AT91SAM9263EK_BOOTSTRAP config entry
> > > > used when building the bootstrap variant.
> > > > The new config entry is required as we cannot combine MULTI_IMAGE
> > > > with a bootstrap variant.
> > > 
> > > Why can't that be combined?
> 
> > The bootstrap support did not play well with the PBL support.
> > And MULTI_IMAGE somehow forced this on me.
> 
> So far I have not managed to build a barebox image that would
> allow ROMBOOT to load it.
> As ROMBOOT is silent about why it fails I have not too much
> clue why it fails.
> 
> When I compare the disassembled image with and without
> PBL support enabled they looks not exactly
> the same.
> One example is that barebox_image_size is wrong when
> I build with PBL / MULTI_IMAGE support enabled.
> I need to dig deeper to find out why.

Is it a wrong nonzero value or 0x0?

> The image size is stored at address 0x14 - but is supposed
> to be used only by DataFlast, NOR-flash, so this is likely not
> the root-cause. But it looks wrong so one thing to fix.

It's probably time to revise this part. We used to cat the compressed
barebox binary behind the PBL, so we had no chance to determine the
reulting image size with linker variables in the PBL. Now that we link
the compressed binary into the PBL linker variables could generally
work, so at least we have the chance to use them.

> 
> I will try to chase it a bit more to see if I can get it
> to work.
> 
> 
> > Note: I also had to disable MMU support to get bootstrap working.
> > With MMU enable it halted when __mmu_cache_on() was called in
> > mmu-early.c
> The above was only partially correct.
> 
> If MMU is enabled then I need to comment out the call
> to __mmu_cache_on() in mmu_init().
> Otherwise barebox just hang right after (or in) the
> call to __mmu_cache_on()
> (which is a call to v7_mmu_cache_on() )
> 
> ROMBOOT will copy barebox to 0x40000 and then remap:
> 0x40000 => 0x0
> 0x0 => 0x40000
> 
> I guess there is some kind of conflict between the remapping
> done by ROMBOOT and the MMU setup / cache setup done by barebox.
> So far I am fully satisfied to continue with MMU disabled.

So ROMBOOT sets up the MMU? Or is there some kind of remap register?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
