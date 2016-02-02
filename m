Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQbkU-0002ng-6v
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:16:07 +0000
Date: Tue, 2 Feb 2016 15:15:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160202141542.GF4118@pengutronix.de>
References: <3762339.hZBQLlnv2u@dabox> <1657046.j4o6hCTdX5@dabox>
 <1454355135.18531.23.camel@rtred1test09.kymeta.local>
 <2242913.yZc50JEAEz@virgo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2242913.yZc50JEAEz@virgo>
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
Subject: Re: [PATCH v3] Terasic DE0-Nano-SoC: add support
To: Tim Sander <tim@krieglstein.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Tim,

On Tue, Feb 02, 2016 at 02:48:49PM +0100, Tim Sander wrote:
> On Monday 01 February 2016 19:31:53 Trent Piepho wrote:
> > On Mon, 2016-02-01 at 15:07 +0100, Tim Sander wrote:
> > 
> > > v3: forgot to amend my changes in v2.
> > > 
> > > +
> > > +static int socfpga_console_init(void)
> > > +{
> > > +       if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
> > > +               return 0;
> > 
> > 
> > Seems like this should be a board specific check instead of a generic
> > one, since it's programming board specific phy timing values to a board
> > specific PHY.
> I am not sure, but as outlined below i think this is also due to the 
> compatible string of the coresponding dts within the linux kernel.
> At least i first tried a more specific dts compatible string and that failed 
> to boot.

You need to match for a board specific compatible here because this
function shall be executed for this board only, not for other boards.
This means you have to add a board specific compatible to the device
tree.

> > > +#include <arm/socfpga_cyclone5_de0_nano_soc.dts>
> > > +#include "socfpga.dtsi"
> > > +
> > > +/ {
> > > +       model = "Terasic DE0-Nano-SoC (Atlas)";
> > > +       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
> > 
> > 
> > Wouldn't the right thing to do here be to have a compatible entry for
> > this board type?  Like the existing "terasic,sockit" or something more
> > specific.
> Well the problem at this point is that due to the boardspecs the compatible 
> string has to be AFAIK the same as the one used in the linux kernel. 
> Unfortunatly the coresponding dts file also has no more specific compatible 
> string.

The kernel matches for "altr,socfpga". You can add as many compatibles
before that as you like, just like the "altr,socfpga-cyclone5" string
which is present already and ignored by the kernel.

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
