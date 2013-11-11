Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfoDF-0002Mh-Ek
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 09:55:19 +0000
Date: Mon, 11 Nov 2013 10:54:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111095454.GF24559@pengutronix.de>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
 <1383662527-8538-4-git-send-email-lisovy@gmail.com>
 <20131108084215.GU24559@pengutronix.de>
 <1384035254.22589.19.camel@lolumad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384035254.22589.19.camel@lolumad>
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
Subject: Re: [PATCH 3/3] ARM: i.mx53: Support for Voipac board. Device
 definition is read from Devicetree
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On Sat, Nov 09, 2013 at 11:14:14PM +0100, Rostislav Lisovy wrote:
> Hello Sascha;
> 
> On Fri, 2013-11-08 at 09:42 +0100, Sascha Hauer wrote: 
> > Hi Rostislav,
> > 
> > On Tue, Nov 05, 2013 at 03:42:07PM +0100, Rostislav Lisovy wrote:
> > > Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> > > 
> > > diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config b/arch/arm/boards/freescale-mx53-vmx53/env/config
> > > new file mode 100644
> > > index 0000000..3d90172
> > > --- /dev/null
> > > +++ b/arch/arm/boards/freescale-mx53-vmx53/env/config
> > 
> > Why not use defenv-2?
> 
> Ok; I will use it;
> 
> > 
> > > diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash_header.c b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
> > > new file mode 100644
> > > index 0000000..a6864a6
> > > --- /dev/null
> > > +++ b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
> > 
> > I'm currently generating the flash images for new boards using the
> > imx-image tool and also generate multi board images. This is a very
> > flexible, though maybe hard to understand mechanism. Is this the reason
> > you haven't used it or were you not aware of it?
> > I would rather see this board taking part in this new mechanism. Are you
> > willing to port this over? Otherwise I could try and convert this patch,
> > but I would depend on you testing the result.
> 
> I was investigating how the imx53-loco support is done, however I was
> not sure if the 'multiboard' is the preferred way.
> I found your patchset
> http://www.spinics.net/lists/u-boot-v2/msg15296.html shortly describing
> the functionality of the multiboard barebox -- I still do not understand
> the concept. The final binary has to hold just one particular
> 'flash_header', thus be able to boot just on one particular board.

The multi image support (I think multi image is more appropriate than
multi board) doesn't mean that the same image is being run on multiple
boards, it instead means that the same binary is used to generate
multiple images. Each of these images is for a particular board. The
advantage over the traditional mechanism is that you can have a single
config for multiple boards. Of course this could be used to have a
single config for completely different SoCs/Boards. This gives you
a better compile coverage with less compilation. A more real life
scenario might be that you have two boards which differ only in the
amount of SDRAM. Instead of maintaining two configs for it you could
use a single config and generate two images from it.

> I do
> understand the flexibility of the devicetree, however something like the
> SDRAM configuration can not be chosen 'on the fly' by the PBL?

The basic trick with the multi image support is that we compile multiple
entry points (ENTRY_FUNCTION()). Which one is used for a particular
image is later specified with the -e option to ld. So each image has
one entry function specified with ENTRY_FUNCTION(). What you then do
in this entry function is up to you. If your boards offer some
possibility to detect the SDRAM setup then you can use it to dynamically
detect and configure SDRAM. Then you would be able to use a single
binary image on multiple boards with different SDRAM configuration.

On i.MX with the DCD header format the DCD is normally used to setup
SDRAM. In this case it's not possible to have the same image for
multiple boards. However, you could remove the SDRAM setup from DCD
data and configure the flash header to load to the i.MX internal SRAM.
then when in SRAM you could determine your board and setup the SDRAM
from early code. This way a single image for multiple boards would
be possible on i.MX aswell.

With multi image support we shift away from "compiling for a single
board". Instead a board is simply an additional option. If this option
makes a new image necessary, then this image will be generated along
with images for other boards.
My vision is that we should not have defconfigs for particular boards.
Instead we should have defconfigs which enable a certain feature set,
for example:

- arm_full_defconfig: All features and all boards enabled, huge binary
  nobody uses in projects, but is useful for compile testing and
  development
- imx_defconfig: All i.MX boards enabled and all features necessary for
  i.MX. More practical in real life.
- noninteractive_defconfig: Do not prompt users, just boot.
- $VENDOR_defconfig: supports all boards from a vendor
- $PROJECT_defconfig: supports all boards for a particular project
  which uses different boards or variants of boards.

I hope this makes it a bit more clearer.

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
