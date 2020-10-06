Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPjjb-00029A-Ga
 for barebox@lists.infradead.org; Tue, 06 Oct 2020 09:58:16 +0000
Date: Tue, 6 Oct 2020 11:58:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201006095811.GF11648@pengutronix.de>
References: <005d01d69b15$180b4aa0$4821dfe0$@eletechsrl.it>
 <20201005151759.GE11648@pengutronix.de>
 <8a0d7de81f77b7a2e4a689d7a1464a7617ad4ff2.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a0d7de81f77b7a2e4a689d7a1464a7617ad4ff2.camel@pengutronix.de>
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
Subject: Re: imx6ul: fec: stuck on ifup after ifdown
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Manni Stefano <stefano.manni@eletechsrl.it>, barebox@lists.infradead.org, Aurelio Colosimo <aurelio@aureliocolosimo.it>

On Tue, Oct 06, 2020 at 10:44:24AM +0200, Lucas Stach wrote:
> On Mo, 2020-10-05 at 17:17 +0200, Sascha Hauer wrote:
> > Hi Stefano,
> > 
> > On Mon, Oct 05, 2020 at 02:43:15PM +0200, Manni Stefano wrote:
> > > Hi,
> > > 
> > > on a custom board based on a i.MX6UL using barebox v2020.08.1 'ifup eth0'
> > > invoked after 'ifdown eth0' stucks forever.
> > > 
> > > Have you ever experienced something similar?
> > 
> > I can confirm the same happens here on an i.MX6q board on current
> > master. I don't know what's happening here. The last thing I see is that
> > fec_tx_task_enable() is entered. Strange enough the same works on i.MX53
> > whereas on i.MX8M I get "ERROR: eth0: transmission timeout" on the
> > second ifup.
> > 
> > This is really strange. It seems fec_tx_task_enable() brings down the
> > whole SoC, but on the other hand the FEC works properly in a chainloaded
> > barebox, which should - from the view of the ethernet controller - be
> > the same as a repeated ifup/ifdown sequence.
> 
> There is a crucial difference between the two things: in a chainloaded
> Barebox we go through the FEC driver probe again, before doing the next
> ifup. When going through probe a full reset of the FEC peripheral is
> done.

Actually I thought there is a full FEC reset in fec_halt():

	writel(readl(fec->regs + FEC_X_CNTRL) | FEC_ECNTRL_RESET,
		fec->regs + FEC_X_CNTRL);

I only saw the FEC_ECNTRL_RESET bit but didn't realize this goes to a
completely unrelated register. We should have a FEC_X_CNTRL_GTS define
for this.

Given that, the fec_halt/fec_init path really looks quite different from
the fec_probe/fec_init path.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
