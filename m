Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X44hl-000113-Rl
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 08:55:22 +0000
Message-ID: <1404723200.4587.14.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 07 Jul 2014 10:53:20 +0200
In-Reply-To: <20140707070610.GA11833@omega>
References: <alpine.LFD.2.11.1407050643590.10085@localhost>
 <20140707065345.GI23235@pengutronix.de> <20140707070610.GA11833@omega>
Mime-Version: 1.0
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
Subject: Re: does beaglebone black device tree need to specify amount of
 eMMC flash?
To: Alexander Aring <alex.aring@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

This has nothing to do with barebox, but I feel this needs an answer as
a lot of misinformation is spread here.

Am Montag, den 07.07.2014, 09:06 +0200 schrieb Alexander Aring:
[...]
> 
> btw.: that's why eMMC is evil.
> 
> Raw-Flash:
> 
> Disadvantage:
>  - you can't replace it.
> 
> Advantage:
>  - no mcu in the middle, access the raw Flash.

This isn't an advantage. If your not working for the NAND flash
manufacturer you will have an extremely hard time getting the wear
leveling parameters right. Having this abstracted behind an MCU that
actually know about the flash chip behind it is a good thing.

> 
> 
> - MMC/SD:
> 
> Disadvantage:
>  - mcu in the middle, abstract block device. OS doesn't know about this.

No disadvantage, see above.

> 
> Advantage:
>  - you can replace it.
> 
> 
> Combines these Disadvantage and Advantage you will get:
> 
> Disadvantage:
>  - mcu in the middle, abstract block device. OS doesn't know about this.
>  - you can't replace it.
> 
> Advantage:
>  - maybe a little bit cheaper...
>  - maybe avoid some bad connections (never expired by using sd cards)
> 
You are neglecting the fact that the eMMC interface can be driven with a
lot higher clock speeds compared to an SD card. Also most eMMCs have an
interface width of 8 bits, which is double the SDs 4 bit.

This amounts to a lot more raw speed on the interface side and most
eMMCs are actually capable of supplying data at those rates.

Also eMMC provides some really useful additional features like the boot
partitions and health checks.

While SD cards may be convenient for the casual hobbyist user when it
comes to real embedded devices, where speed and reliability matters,
eMMC has a huge lead.

Raw NAND is only an option if your device manufacturing runs are big
enough that the lower price for NAND stacks up enough to make up the
additional development time (cost) you need to get things right. Note
there is a big difference here between getting it working and getting it
right.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
