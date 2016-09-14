Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk9un-00053N-QT
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 13:07:53 +0000
Date: Wed, 14 Sep 2016 15:07:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160914130724.o6nvbb76ostyzoos@pengutronix.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
 <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
 <alpine.DEB.2.00.1609120925590.3356@blala.de>
 <20160913070604.qehrkh6gxrux5icg@pengutronix.de>
 <20160913130405.GK12916@io.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160913130405.GK12916@io.lakedaemon.net>
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
Subject: Re: [PATCH 1/6] ARM: add common definitions for i.MX50 SOC
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>

On Tue, Sep 13, 2016 at 01:04:05PM +0000, Jason Cooper wrote:
> Hi Sascha, Alexander,
> 
> On Tue, Sep 13, 2016 at 09:06:04AM +0200, Sascha Hauer wrote:
> > On Mon, Sep 12, 2016 at 10:17:18AM +0200, Alexander Kurz wrote:
> > > On Mon, 12 Sep 2016, Sascha Hauer wrote:
> > > > On Fri, Sep 09, 2016 at 05:43:39PM +0200, Alexander Kurz wrote:
> > > > > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > > > > ---
> > > > >  Documentation/boards/imx.rst                   |  1 +
> > > > >  arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
> > > > >  arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
> > > > >  3 files changed, 15 insertions(+)
> > > > 
> > > > Seems to be straight forward to add i.MX50 support. I have nothing to
> > > > add, except: Applied, thanks
> > > > 
> > > > Out of curiosity: What device do you use with i.MX50? Is it some E-Book
> > > > reader again?
> > > The imx50 has a build-in e-ink driver, so it is more or less a SOC 
> > > tailored on e-books. It is used in some already outdated e-books like the
> > > 4th and 5th generation Kindles, some Kobos and Tolinos.
> > > The successor for the imx50 became the e-ink driver equiped variants 
> > > of the imx6sl, which is used in most current generation e-book readers.
> > > 
> > > While the current patchsets will enable barebox to run on different
> > > e-books e.g. when beeing booted via an installed bootloader, there is 
> > > still an open issue: RAM initialization.
> > > Freescale used a "DRAMMC" which seems to be very unique to this SOC.
> > > Documentation on it is available in the Reference Manual, but it covers
> > > some details quite briefly.
> > > Related on barebox:
> > > it is not clear, whether DRAMMC initialization via imximg-DCD is possible
> > > at all. All existing bootloaders I have seen so far used some 
> > > imximg-plugin code (which is currently not supported by barebox).
> > > A two-stage bootloader implementation via xload may be an alternative.
> > 
> > Yes, that could work. How I understand it the plugin image is
> > responsible for initializing SDRAM and for loading the final image.
> > Then the job of the ROM is done anyway, so normally I do not see a
> > reason for plugin images. The only usecase seems to be HAB when the
> > final image is checked by the HAB code when returning to ROM.
> 
> So, I found my Sandisk Connect WMD (Wireless Media Drive) and I also
> re-located the open source dump by Sandisk [1].
> 
> The first problem I need to solve is the DDR training code.  The device
> shipped with U-boot, and the training code seems to be in flash_header.S
> [2].  There's a large number of lines preceded by comments of the form
> 
>   /* setmem /32 0x140000f8 = 0x00010101 */
> 
> which lends itself to a conversion into .imxcfg format.  However,
> there's quite a bit of code that doesn't appear to be doing simple
> writes.  Additionally, there's a lowlevel_init.S in the same directory.
> 
> There is a linker script putting flash_header.o at the beginning of the
> binary image.  Is it easier to just do that, bypassing imx-image?  Or,
> is there a conversion utility my google fu isn't pulling up?

The code looks like they tried to initialize the SDRAM using the DCD
table but at some point realized that they can't do the necessary
calibration, so it was converted to Assembly code.
I would probably convert this to C and put it into the board specific
lowlevel.c without doing the plugin stuff.
I think you can forget the code in lowvel_init.S, this looks like the
standard i.MX5 setup code that barebox has in imx5.c. There may be
some i.MX50 specifics, but you'll need that only when the SDRAM is
already configured.

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
