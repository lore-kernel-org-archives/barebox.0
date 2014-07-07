Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X45Ms-0004yO-QQ
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 09:37:51 +0000
Received: by mail-we0-f180.google.com with SMTP id x48so4087126wes.39
 for <barebox@lists.infradead.org>; Mon, 07 Jul 2014 02:37:26 -0700 (PDT)
Date: Mon, 7 Jul 2014 11:37:14 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140707093712.GA14797@omega>
References: <alpine.LFD.2.11.1407050643590.10085@localhost>
 <20140707065345.GI23235@pengutronix.de>
 <20140707070610.GA11833@omega>
 <1404723200.4587.14.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404723200.4587.14.camel@weser.hi.pengutronix.de>
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
Subject: Re: does beaglebone black device tree need to specify amount of eMMC
 flash?
To: Lucas Stach <l.stach@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Lucas,

On Mon, Jul 07, 2014 at 10:53:20AM +0200, Lucas Stach wrote:
> This has nothing to do with barebox, but I feel this needs an answer as
> a lot of misinformation is spread here.
> 

Thanks for your answer.

Yes, it's off-topic but I always feel bad when I heard "eMMC".

> Am Montag, den 07.07.2014, 09:06 +0200 schrieb Alexander Aring:
> [...]
> > 
> > btw.: that's why eMMC is evil.
> > 
> > Raw-Flash:
> > 
> > Disadvantage:
> >  - you can't replace it.
> > 
> > Advantage:
> >  - no mcu in the middle, access the raw Flash.
> 
> This isn't an advantage. If your not working for the NAND flash
> manufacturer you will have an extremely hard time getting the wear
> leveling parameters right. Having this abstracted behind an MCU that
> actually know about the flash chip behind it is a good thing.
> 

yes, but I think that a mtd filesystem can do a better scheduling of
erase/write/read cycles than the integrated mcu with an abstracted block
device.

I need to test it myself, to see what the mcu exactly do and this
depends on manufacturer.

> > 
> > 
> > - MMC/SD:
> > 
> > Disadvantage:
> >  - mcu in the middle, abstract block device. OS doesn't know about this.
> 
> No disadvantage, see above.
> 
> > 
> > Advantage:
> >  - you can replace it.
> > 
> > 
> > Combines these Disadvantage and Advantage you will get:
> > 
> > Disadvantage:
> >  - mcu in the middle, abstract block device. OS doesn't know about this.
> >  - you can't replace it.
> > 
> > Advantage:
> >  - maybe a little bit cheaper...
> >  - maybe avoid some bad connections (never expired by using sd cards)
> > 
> You are neglecting the fact that the eMMC interface can be driven with a
> lot higher clock speeds compared to an SD card. Also most eMMCs have an
> interface width of 8 bits, which is double the SDs 4 bit.
> 

okay, I didn't know that. Does barebox use the 8 bit interface at the
moment?

> This amounts to a lot more raw speed on the interface side and most
> eMMCs are actually capable of supplying data at those rates.
> 
> Also eMMC provides some really useful additional features like the boot
> partitions and health checks.
> 
> While SD cards may be convenient for the casual hobbyist user when it
> comes to real embedded devices, where speed and reliability matters,
> eMMC has a huge lead.
> 
> Raw NAND is only an option if your device manufacturing runs are big
> enough that the lower price for NAND stacks up enough to make up the
> additional development time (cost) you need to get things right. Note
> there is a big difference here between getting it working and getting it
> right.
> 

So now I have the question about "Why they don't make a new sd/mmc card
holder standard and sells replaceable cards". I could say that to every
electronic device, but maybe it's better that there is no new standard.
:-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
