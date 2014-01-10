Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1YtF-00050f-1M
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 10:00:34 +0000
Date: Fri, 10 Jan 2014 11:00:10 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20140110100010.GC371@pengutronix.de>
References: <1389278408-13112-1-git-send-email-s.trumtrar@pengutronix.de>
 <1389278408-13112-2-git-send-email-s.trumtrar@pengutronix.de>
 <20140110093656.GC6750@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140110093656.GC6750@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: i.MX53: dts: add support for MCIMX53-START-R
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 10, 2014 at 10:36:56AM +0100, Sascha Hauer wrote:
> On Thu, Jan 09, 2014 at 03:40:08PM +0100, Steffen Trumtrar wrote:
> > The start-r QSB has a different pmic than the older start QSB.
> > Add a new dts for the QSRB and let barebox generate two images when
> > LOCO is selected.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/boards/freescale-mx53-loco/lowlevel.c |  13 +++
> >  arch/arm/dts/Makefile                          |   3 +-
> >  arch/arm/dts/imx53-qsrb.dts                    | 141 +++++++++++++++++++++++++
> >  images/Makefile.imx                            |   5 +
> >  4 files changed, 161 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/dts/imx53-qsrb.dts
> > 
> > diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> > index 7556a2e..c9e057a 100644
> > --- a/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> > +++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> > @@ -15,3 +15,16 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
> >  
> >  	imx53_barebox_entry(fdt);
> >  }
> > +
> > +extern char __dtb_imx53_qsrb_start[];
> > +
> > +ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
> > +{
> > +	uint32_t fdt;
> > +
> > +	arm_cpu_lowlevel_init();
> > +
> > +	fdt = (uint32_t)__dtb_imx53_qsrb_start - get_runtime_offset();
> > +
> > +	imx53_barebox_entry(fdt);
> > +}
> 
> For the record: This introduces a new image for the r board. Should we
> want to later we could use the code from arch/ppc/mach-mpc85xx/fsl_i2c.c
> to detect the board version and merge both images into one again.
> 
> > +	pmic: ripley@8 {
> > +		compatible = "fsl,mc34708";
> > +		reg = <0x08>;
> > +		interrupt-parent = <&gpio5>;
> > +		interrupts = <23 0x8>;
> > +		regulators {
> > +			mc34708__sw1a {
> > +				regulator-name = "SW1";
> > +				regulator-min-microvolt = <650000>;
> > +				regulator-max-microvolt = <1437500>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +			mc34708__sw1b {
> 
> There should be a blank line between the end of a node and the beginning
> of a new one.
> 

Oops...you are right :-(
Will fix.

str

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
