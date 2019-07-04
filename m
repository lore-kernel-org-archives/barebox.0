Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivgn-0003z3-JT
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:57:54 +0000
Date: Thu, 4 Jul 2019 08:57:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190704065751.y5a6vvbtduza5ce4@pengutronix.de>
References: <20190703092756.18476-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703092756.18476-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH] clk: divider: export clk_div_mask() helper
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 03, 2019 at 11:27:56AM +0200, Marcin Niestroj wrote:
> commit e6d3cc7b1fac3d7f1313faf8ac9b23830113e3ec Linux upstream.
> 
>   clk: divider: export clk_div_mask() helper
> 
>   Export clk_div_mask() in clk-provider header so every clock providers
>   derived from the generic clock divider may share the definition instead
>   of redefining it.
> 
>   Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>   Signed-off-by: Michael Turquette <mturquette@baylibre.com>
>   Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> 
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
>  drivers/clk/clk-divider.c | 16 +++++++---------
>  include/linux/clk.h       |  2 ++
>  2 files changed, 9 insertions(+), 9 deletions(-)

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
