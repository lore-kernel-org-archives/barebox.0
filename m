Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS41H-0000Bc-0e
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:07:11 +0000
Date: Wed, 19 Aug 2015 16:06:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819140648.GA18700@pengutronix.de>
References: <1439208453-20375-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439208453-20375-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] clk: socfpga: don't register fixed clocks
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 10, 2015 at 02:07:33PM +0200, Steffen Trumtrar wrote:
> The fixed clocks are registered from devicetree. Therefore the code path is
> not needed, but would instead register the clocks twice, which leads to the
> error message:
> 
> 	clk_register clk f2s_periph_ref_clk is already registered, skipping!
> 	of_clk_init: failed to init clock for /soc/clkmgr@ffd04000/clocks/f2s_periph_ref_clk: 1
> 	clk_register clk osc1 is already registered, skipping!
> 	of_clk_init: failed to init clock for /soc/clkmgr@ffd04000/clocks/osc1: 1
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/clk/socfpga.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)

Applied, thanks

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
