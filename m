Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uakxr-0003xG-PA
 for barebox@lists.infradead.org; Fri, 10 May 2013 10:54:16 +0000
Date: Fri, 10 May 2013 12:53:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130510105350.GM32299@pengutronix.de>
References: <20130507175549.GR32299@pengutronix.de>
 <em6083fb6c-e073-40f9-aa90-2878d59c3517@plh001-think>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <em6083fb6c-e073-40f9-aa90-2878d59c3517@plh001-think>
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
Subject: Re: Installing barebox for karo-tx53 in nand-flash
To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 10, 2013 at 09:20:50AM +0000, Dr. Patrick Langfeld wrote:
> Thanks Sascha,
> building barebox results in two .bin files: barebox.bin and
> zbarebox.bin.
> Is zbarebox.bin a compressed version of barebox.bin?
> Which one should I use for flashing the tx53 nand-flash?

If it exists then zbarebox.bin please. There is a convenience link
(barebox-flash-image) which always points to the correct binary.

> 
> My boot sources are nand-flash (thats where u-boot is at the moment)
> (and SD-card for testing).
> 
> I tried to flash zbarebox.bin to nand-flash. It started but with error
> nand: NAND type unknown, ec,f1
> nand: No NAND device found (-19)!

Hm, strange. This should be a Samsung 128MiB NAND flash. The id is in
the database. I currently have no good idea why this isa unknown.

> imx_nand imx_nand0: probe failed: No such device or address
> malloc space: 0x85f00000 -> 0x87efffff (size 32 MiB)
> Using environment in NAND
> Open /dev/env0 No such file or directory
> ..

For testing I would recommend the SD card. You can simply write the
binary to the card:

cat barebox-flash-image > /dev/sdx

> 
> Does barebox already support the FirmwareConfigurationBlock? I heard
> from Mathias Fend that he manually had to add a FCB blob before the
> barebox binary when writing barebox to flash in an older barebox
> version.

The FCB is not part of the image. However, when you start from SD card
you should be able to use barebox_update to flash to the nand, given
that it works of course...

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
