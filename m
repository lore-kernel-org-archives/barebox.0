Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF7t3-000184-2B
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:55:54 +0000
Date: Mon, 11 Mar 2013 19:55:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130311185551.GA22366@pengutronix.de>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-7-git-send-email-s.trumtrar@pengutronix.de>
 <20130311182925.GO16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130311182925.GO16050@kryptos>
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
Subject: Re: [PATCH 6/9] ARM: zynq: clk: replace define with header
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 01:29:25PM -0500, Josh Cartwright wrote:
> On Mon, Mar 11, 2013 at 10:15:03AM +0100, Steffen Trumtrar wrote:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/mach-zynq/clk-zynq7000.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
> > index 8dbde2b..5a8a12a 100644
> > --- a/arch/arm/mach-zynq/clk-zynq7000.c
> > +++ b/arch/arm/mach-zynq/clk-zynq7000.c
> > @@ -25,10 +25,9 @@
> >  #include <linux/clk.h>
> >  #include <linux/clkdev.h>
> >  #include <linux/err.h>
> > +#include <mach/zynq7000-regs.h>
> >  #include <malloc.h>
> >  
> > -#define ZYNQ_SLCR_BASE 0xF8000000
> > -
> >  enum zynq_clks {
> >  	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
> >  	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max
> 
> Again, this is one of those intermediate state things that could be
> cleaned up with a rebase.
> 

I wanted to keep the series bisectable, but Sascha already told me that it
is unnecessary. So, I will squash it all down a little.

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
