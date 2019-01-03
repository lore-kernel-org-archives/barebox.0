Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfA6g-00029w-SG
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 21:00:48 +0000
Date: Thu, 3 Jan 2019 22:00:41 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190103210041.GA20602@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-4-sam@ravnborg.org>
 <20190103081606.yz2s7q4jxzgpz2yt@pengutronix.de>
 <20190103105800.GA27356@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190103105800.GA27356@ravnborg.org>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

Previous mail was written while being disturbed by others - sorry.
 
> > > Fix lowlevel init to get reset vector.
> > > 
> > > Add new MACH_AT91SAM9263EK_BOOTSTRAP config entry
> > > used when building the bootstrap variant.
> > > The new config entry is required as we cannot combine MULTI_IMAGE
> > > with a bootstrap variant.
> > 
> > Why can't that be combined?

> The bootstrap support did not play well with the PBL support.
> And MULTI_IMAGE somehow forced this on me.

So far I have not managed to build a barebox image that would
allow ROMBOOT to load it.
As ROMBOOT is silent about why it fails I have not too much
clue why it fails.

When I compare the disassembled image with and without
PBL support enabled they looks not exactly
the same.
One example is that barebox_image_size is wrong when
I build with PBL / MULTI_IMAGE support enabled.
I need to dig deeper to find out why.
The image size is stored at address 0x14 - but is supposed
to be used only by DataFlast, NOR-flash, so this is likely not
the root-cause. But it looks wrong so one thing to fix.

I will try to chase it a bit more to see if I can get it
to work.


> Note: I also had to disable MMU support to get bootstrap working.
> With MMU enable it halted when __mmu_cache_on() was called in
> mmu-early.c
The above was only partially correct.

If MMU is enabled then I need to comment out the call
to __mmu_cache_on() in mmu_init().
Otherwise barebox just hang right after (or in) the
call to __mmu_cache_on()
(which is a call to v7_mmu_cache_on() )

ROMBOOT will copy barebox to 0x40000 and then remap:
0x40000 => 0x0
0x0 => 0x40000

I guess there is some kind of conflict between the remapping
done by ROMBOOT and the MMU setup / cache setup done by barebox.
So far I am fully satisfied to continue with MMU disabled.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
