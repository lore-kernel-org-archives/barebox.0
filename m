Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvq5f-0004T1-Mt
 for barebox@lists.infradead.org; Wed, 05 Apr 2017 18:55:37 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 5 Apr 2017 18:55:12 +0000
Message-ID: <1491418512.18442.119.camel@kymetacorp.com>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
 <1491328345.18442.39.camel@kymetacorp.com> <73o9wbxq5n.fsf@pengutronix.de>
In-Reply-To: <73o9wbxq5n.fsf@pengutronix.de>
Content-Language: en-US
Content-ID: <1C62BC9BFB033E40BC86E2B0C3CA8F64@kymetacorp.com>
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

On Wed, 2017-04-05 at 09:35 +0200, Steffen Trumtrar wrote:
> Trent Piepho <tpiepho@kymetacorp.com> writes:

> >
> > U-Boot is able to load a FPGA image with a single bootloader.  A U-Boot
> > image can be made that is small enough run in 256 kB yet has enough
> > drivers to load an FPGA image from eMMC or NOR flash into the FPGA and
> > then enable SDRAM.
> >
> > It seems like this might be possible for barebox as well.  If enough
> > drivers to load the FPGA were part of the PBL.
> 
> Of course this is also possible with barebox. The reason that the
> support is not added yet, is that I do not have any Arria10 board that
> needs or uses this; even with the provided vendor U-Boot.
> This series is just groundwork for future development.

Any A10 board should be able to use CvP, as Altera calls it, to load the
FPGA image from a processor accessible memory like QSPI or mmc or even
perhaps NFS.  While most of the dev kits seem to have an EPCQ flash so
this isn't necessary, after you have used JTAG to reprogram that EPCQ
flash at 20 minutes each time, the drawbacks become more apparent!

Being able to use barebox to NFS load the image or copy an image into
eMMC at far faster rate than EPCQ NOR flash over JTAG would be really
nice.

U-Boot doesn't have a PBL.  It does this by building a somewhat stripped
u-boot that fits, uncompressed, into 256 kB.  It uses the qspi or mmc
drivers (pretty sure only one will fit!) to stream the image into the
FPGA before enabling SDRAM.

Barebox is larger than u-boot so this might not work.  Try making a <
224 kB _uncompressed_ barebox.  It has to be pretty stripped.  It's
already a pain that u-boot can't have mmc, qspi, and network support at
the same time.  A barebox that runs inside 256 kB would be even more
limited.

But, barebox has the ability to use a compressed image plus a PBL.
Maybe this can let barebox do better than u-boot on arria10?

One could try to place the drivers needed to load the FPGA into the PBL,
have the PBL code load the FPGA and enable SDRAM, then uncompress the
not-stripped main barebox.

The difficulty would be getting the drivers needed to load the FPGA to
run from PBL context.  Then fitting those uncompressed drivers and PBL
code plus the compressed main barebox into a 224kB image.

One could also try a two barebox solution like Cyclone5, where one
builds barebox twice in an xloader and main configuration.  In that
case, it might make sense for the xloader to NOT use a PBL.  The reason
PBL works on C5, is because the code to enable SDRAM isn't that large
and fits in the PBL.  On A10, enabling SDRAM means finding and streaming
a file in a filesystem on MMC into the FPGA.  Much more complex if you
want to leverage the existing drivers.  The PBL will be so large that
the extra code to uncompress and relocate barebox is larger than any
savings of having what's not in the PBL be compressed.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
