Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHwhT-000656-Ks
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 13:35:36 +0000
Date: Tue, 19 Mar 2013 14:35:33 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130319133533.GC29295@pengutronix.de>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363684920-3034-4-git-send-email-s.trumtrar@pengutronix.de>
 <20130319132954.GY16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130319132954.GY16050@kryptos>
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
Subject: Re: [PATCH v2 3/5] ARM: zynq: add clk support for zynq7000
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 08:29:54AM -0500, Josh Cartwright wrote:
> On Tue, Mar 19, 2013 at 10:21:58AM +0100, Steffen Trumtrar wrote:
> > This adds support for the clocktree on zynq7000 SoCs.
> > The patch is based on clocks.c from the larger patch
> > 	ARM: zynq: add suppport for Zynq 7000 SoC
> > by Josh Cartwright.
> > 
> > The driver in that patch is converted to a platform_driver and code to
> > enable plls was added.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> [..]
> > +
> > +static int zynq_clock_probe(struct device_d *dev)
> > +{
> > +	void __iomem *slcr_base;
> > +	unsigned long ps_clk_rate = 33333330;
> 
> My version of the patchset had this ^ configurable, since it's possible
> a different osc could be used on the board.  Any reason why you've
> hardcoded this instead?
> 

Hm, not really any good reason. But the plan is to get this from the
devicetree instead. I didn't get around to actually doing that.
Do your boards have another osc or would a hardcoded value suffice for
the moment?

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
