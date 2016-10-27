Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzeel-0003mH-F9
 for barebox@lists.infradead.org; Thu, 27 Oct 2016 06:59:20 +0000
Date: Thu, 27 Oct 2016 08:58:56 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20161027065856.tn4tdwtev5aexxyg@pengutronix.de>
References: <20161017075052.30802-1-s.trumtrar@pengutronix.de>
 <20161017075052.30802-3-s.trumtrar@pengutronix.de>
 <1477512729.14501.14.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1477512729.14501.14.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH v3 3/3] ARM: socfpga: dtsi: add dw-wdt reset lines
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Oct 26, 2016 at 08:12:07PM +0000, Trent Piepho wrote:
> On Mon, 2016-10-17 at 09:50 +0200, Steffen Trumtrar wrote:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/dts/socfpga.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> > index d16758fdab46..66d7f21dc6a3 100644
> > --- a/arch/arm/dts/socfpga.dtsi
> > +++ b/arch/arm/dts/socfpga.dtsi
> > @@ -49,3 +49,13 @@
> >  &f2s_sdram_ref_clk {
> >  	clock-frequency = <0>;
> >  };
> > +
> > +&watchdog0 {
> > +	resets = <&rst L4WD0_RESET>;
> > +	reset-names = "dw-wdt";
> 
> This is the official binding?  The reset-names property is supposed to
> be the name of the reset from the perspective of the device being
> described, e.g. the watchdog.  Not the name from the perspective of the
> reset controller.  Rather than "dw-wdt", the name should something like
> "reset", which clearly doesn't add much information, which is why the
> reset-names property is supposed to be optional.
> 

There is no "official" binding. I wasn't really sure about this property
and just tried to derive from other bindings. I don't care for this one,
so I'm okay with removing it.

Thanks,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
