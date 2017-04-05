Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvfWQ-0008B0-6f
 for barebox@lists.infradead.org; Wed, 05 Apr 2017 07:43:07 +0000
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
 <1491328345.18442.39.camel@kymetacorp.com>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <1491328345.18442.39.camel@kymetacorp.com>
Date: Wed, 05 Apr 2017 09:35:48 +0200
Message-ID: <73o9wbxq5n.fsf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 0/7] SoCFPGA: add support for Arria10
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


Trent Piepho <tpiepho@kymetacorp.com> writes:

> On Mon, 2017-04-03 at 12:55 +0200, Steffen Trumtrar wrote:
>> Although Cyclone5 and Arria10 share a lot of the peripherals,
>> they a different in the critical parts (SDRAM controller, clock setup,...)
>> 
>> The Arria10 has a larger OCRAM (64KB vs 256KB), that is why we can
>> omit the xload support for now. The xload support can be added, once
>> Arria10 boards that need to program the FPGA very early (might be needed for
>> the SDRAM controller) are available.
>> 
>
> That means this support doesn't include loading the FPGA from barebox?

That is correct.

>
> The boot strategy is that the Barebox PBL image will fit in OCRAM and be
> loaded by the ROM loader, and then the PBL will decompress barebox into
> SDRAM?  If so, it will be necessary to have the FPGA loaded from an
> external device, such as an EPCQ flash chip, before barebox boots.  As
> SDRAM is not accessible until at least the peripheral FPGA image is
> loaded.
>
> U-Boot is able to load a FPGA image with a single bootloader.  A U-Boot
> image can be made that is small enough run in 256 kB yet has enough
> drivers to load an FPGA image from eMMC or NOR flash into the FPGA and
> then enable SDRAM.
>
> It seems like this might be possible for barebox as well.  If enough
> drivers to load the FPGA were part of the PBL.

Of course this is also possible with barebox. The reason that the
support is not added yet, is that I do not have any Arria10 board that
needs or uses this; even with the provided vendor U-Boot.
This series is just groundwork for future development.

Regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
