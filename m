Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5rNb-0005BU-UY
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 06:33:42 +0000
Date: Wed, 22 Jan 2014 07:33:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140122063314.GY16215@pengutronix.de>
References: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
 <1390224236-11032-3-git-send-email-s.hauer@pengutronix.de>
 <20140120182549.GA29762@omega>
 <20140121081755.GV16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140121081755.GV16215@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: dts: i.MX53: tqma53: Add barebox specifics
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 21, 2014 at 09:17:55AM +0100, Sascha Hauer wrote:
> On Mon, Jan 20, 2014 at 07:25:50PM +0100, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Mon, Jan 20, 2014 at 02:23:55PM +0100, Sascha Hauer wrote:
> > > - add chosen node with
> > >   - environment
> > >   - linux,stdout-path
> > > - add dsr value to eMMC
> > > - add provide-mac-address property to iim node
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/dts/imx53-mba53.dts   | 17 +++++++++++++++++
> > >  arch/arm/dts/imx53-tqma53.dtsi | 15 ++++++++++++++-
> > >  2 files changed, 31 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
> > > index a630902..43bb12c 100644
> > ...
> > > +
> > >  	memory {
> > > -		reg = <0x70000000 0x40000000>; /* Up to 1GiB */
> > > +		reg = <0x70000000 0x0>; /* Up to 1GiB */
> > 
> > Is this change correct? You don't mention it in commit-msg and it confusing
> > me a little bit to set this zero. :-)
> 
> The change is necessary. The tqma53 comes with 512MiB or 1GiB. During
> barebox startup the SDRAM first gets registered by the devicetree
> information, but this is wrong for the 512MiB boards. The correct
> SDRAM size is derived from the SDRAM controller settings later from
> arch/arm/mach-imx/esdctl.c. This only works as long as the devicetree
> parser hasn't registered conflicting SDRAM earlier.

I added a comment to the commit log before applying it.

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
