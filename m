Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ3YE-0001wh-5d
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 07:07:51 +0000
Date: Wed, 7 Oct 2020 09:07:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007070748.GI11648@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
 <20201005095346.27957-7-s.hauer@pengutronix.de>
 <7fded9e8f5d18fd638f7d93e1bfdb95356372b0a.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fded9e8f5d18fd638f7d93e1bfdb95356372b0a.camel@pengutronix.de>
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
Subject: Re: [PATCH 6/7] ARM: dts: i.MX8MQ: Add Cortex-M4 Coprocessor node
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 05, 2020 at 02:05:47PM +0200, Rouven Czerwinski wrote:
> On Mon, 2020-10-05 at 11:53 +0200, Sascha Hauer wrote:
> > The i.MX8MQ has a Cortex-M7 Coprocessor. Add a node for controlling 
> Copy paste error from MX8MP ^ schould be Cortex-M4.

Ok, fixed.

Sascha

> 
> > it.
> > To make use of it the board has to provide the reserved memory nodes,
> > for example:
> > 
> > reserved-memory {
> > 	#address-cells = <2>;
> > 	#size-cells = <2>;
> > 	ranges;
> > 
> > 	m4_reserved: m7@0x40000000 {
> > 		no-map;
> > 		reg = <0 0x40000000 0 0x1000000>;
> > 	};
> > 
> > 	m4_reserved_sysmem3: rproc@80000000 {
> > 		reg = <0 0x80000000 0 0x800000>;
> > 		no-map;
> > 	};
> > };
> > 
> > &remoteproc_cm4 {
> > 	memory-region = <&m4_reserved>, <&m4_reserved_sysmem3>;
> > };
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/imx8mq.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
> > index 5f2df35bc9..ec8347f38f 100644
> > --- a/arch/arm/dts/imx8mq.dtsi
> > +++ b/arch/arm/dts/imx8mq.dtsi
> > @@ -4,6 +4,14 @@
> >   * Copyright (C) 2017 Pengutronix, Lucas Stach <
> > kernel@pengutronix.de>
> >   */
> >  
> > +/ {
> > +	remoteproc_cm4: remoteproc-cm4 {
> > +		compatible = "fsl,imx8mq-cm4";
> > +		clocks = <&clk IMX8MQ_CLK_M4_CORE>;
> > +		syscon = <&src>;
> > +	};
> > +};
> > +
> >  &clk {
> >  	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>,
> >  			  <&clk IMX8MQ_CLK_USDHC2>,
> 
> Regards,
> Rouven
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
