Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS4K1-0004MB-Lv
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 16:35:42 +0000
Received: from player795.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id E294E83EF2
 for <barebox@lists.infradead.org>; Mon,  3 Jul 2017 18:35:08 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170703161922.GA24614@ravnborg.org>
Date: Tue, 4 Jul 2017 00:34:58 +0800
Message-Id: <08E6B5A4-F877-410B-9BDB-9AA0BE065C07@jcrosoft.com>
References: <20170703161922.GA24614@ravnborg.org>
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
Subject: Re: Observations with AT91SAM9263-EK
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org


> On 4 Jul 2017, at 12:19 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> 
> Hi all.
> 
> I recently purchased an AT91SAM9263-EK from ebay and
> have played around a little with barebox.
> For now only some observations.
> 
> I had the impression that I could
> drop AT91BootStrap when using barebox.

Yes Wrote the support for that but on the 9263 you are limited.

you have 2 choice boot a small barebox <= 72kiB

or use a console less barebox to boot the second barebox

as the rom code on at91 will load the barebox from the SD or Nand
into SRAM
> 
> But I could not make it boot until I deployed 
> at91bootstrap (named BOOT.BIN) on the SD-card.
> And I named arch/arm/pbl/zbarebox.bin => u-boot.bin
> on the SD-card.
> 

on 9263ek you have a nor flash so why not flash it

in this case barebox will boot by itself

without the bootstrap

Best Regards,
J. 
> I wanted to boot barebox - but nothing happened.
> So I tried older versions af barebox:
> 
> v2017.06.0 => Boots OK (did not try to load a kernel)
> 
> v2017.07.0 => Boots but emits:
> NULL pointer dereference at address 0x00000014
> ### Please RESET the board ###
> (A bit more was written to the serial console)
> 

> master from git => Nothing written to the console at all
> 
> I will as time permits dig deeper into this.
> Seems like we are facing two bugs:
> One that causes the NULL pointer, and another that
> prevents any output.
> 
> As barebox is quick to build and the bug is simple to spot
> I will likely just try to bisect and see where I end up.
> 
> 	Sam
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
