Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvSdN-0007HG-UZ
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 17:52:52 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 4 Apr 2017 17:52:25 +0000
Message-ID: <1491328345.18442.39.camel@kymetacorp.com>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
In-Reply-To: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
Content-Language: en-US
Content-ID: <F95213AB315D7D4490217ED31FF595C6@kymetacorp.com>
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
To: "s.trumtrar@pengutronix.de" <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2017-04-03 at 12:55 +0200, Steffen Trumtrar wrote:
> Although Cyclone5 and Arria10 share a lot of the peripherals,
> they a different in the critical parts (SDRAM controller, clock setup,...)
> 
> The Arria10 has a larger OCRAM (64KB vs 256KB), that is why we can
> omit the xload support for now. The xload support can be added, once
> Arria10 boards that need to program the FPGA very early (might be needed for
> the SDRAM controller) are available.
> 

That means this support doesn't include loading the FPGA from barebox?

The boot strategy is that the Barebox PBL image will fit in OCRAM and be
loaded by the ROM loader, and then the PBL will decompress barebox into
SDRAM?  If so, it will be necessary to have the FPGA loaded from an
external device, such as an EPCQ flash chip, before barebox boots.  As
SDRAM is not accessible until at least the peripheral FPGA image is
loaded.

U-Boot is able to load a FPGA image with a single bootloader.  A U-Boot
image can be made that is small enough run in 256 kB yet has enough
drivers to load an FPGA image from eMMC or NOR flash into the FPGA and
then enable SDRAM.

It seems like this might be possible for barebox as well.  If enough
drivers to load the FPGA were part of the PBL.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
