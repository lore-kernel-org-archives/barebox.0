Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiC4M-00035G-6a
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 06:15:11 +0000
Date: Tue, 2 Jul 2019 08:15:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190702061507.yc73ctrscptogvll@pengutronix.de>
References: <20190628153350.16250-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628153350.16250-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH 1/3] clk: divider: Remove unused variable in
 clk_divider_recalc_rate
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 28, 2019 at 05:33:48PM +0200, Marcin Niestroj wrote:
> commit "clk: add divider_recalc_rate helper" reworked
> clk_divider_recalc_rate() function and as part of that left one variable
> assignment, which is not used later.
> 
> Fixes: e27c0b64db01 ("clk: add divider_recalc_rate helper")
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
>  drivers/clk/clk-divider.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

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
