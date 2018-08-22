Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNcQ-0001BU-Bl
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:31:55 +0000
Date: Wed, 22 Aug 2018 09:31:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822073142.7qdg427bwklqdt5r@pengutronix.de>
References: <20180821062853.18301-1-andrew.smirnov@gmail.com>
 <20180821062853.18301-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062853.18301-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/2] clk: clk-sccg-pll: Drop prepare/unprepare for
 SCCG_PLL2
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:28:53PM -0700, Andrey Smirnov wrote:
> A number of PLL pairs (e.g. "sys1_pll1" and "sys1_pll2") share the
> same configuration register, so touching PD bit, as is done for
> SCCG_PLL2 in its prepare/unprepare methods will result in shut down of
> both PLLs. This is very undesireable, since attempting to re-parent a
> clock to "sys1_pll2" might result in complete system shutdown due to
> "sys1_pll1" being shut-down as a part of re-parenting process.

I can imagine that there are problems with the way it is currently
handled, but the scenario you describe shouldn't happen. "sys1_pll1"
will never be shut down because it doesn't have a disable hook:

static const struct clk_ops clk_sccg_pll1_ops = {
        .is_enabled     = clk_pll1_is_prepared,
        .recalc_rate    = clk_pll1_recalc_rate,
        .round_rate     = clk_pll1_round_rate,
        .set_rate       = clk_pll1_set_rate,
};

static const struct clk_ops clk_sccg_pll2_ops = {
        .enable         = clk_pll1_prepare,
        .disable        = clk_pll1_unprepare,
        .recalc_rate    = clk_pll2_recalc_rate,
        .round_rate     = clk_pll2_round_rate,
        .set_rate       = clk_pll2_set_rate,
};

Have I missed something?

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
