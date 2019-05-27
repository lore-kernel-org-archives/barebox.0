Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9dN-00036k-2C
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:01:26 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so7543331iod.6
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 00:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-3-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 00:01:12 -0700
Message-ID: <CAHQ1cqHCTcGXkZrzzeijctFrvme-6kofQUb-P3b9yzDx-4ewsg@mail.gmail.com>
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
Subject: Re: [PATCH v2 2/5] clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks
 read-only
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, pza@pengutronix.de

On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> From: Philipp Zabel <p.zabel@pengutronix.de>
>
> Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
> tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
> enter the ldb_di_ipu_div divider. If the divider gets locked up, no
> ldb_di[x]_clk is generated, and the LVDS display will hang when the
> ipu_di_clk is sourced from ldb_di_clk.
>
> To fix the problem, both the new and current parent of the ldb_di_clk
> should be disabled before the switch. As this can not be guaranteed by
> the clock framework during runtime, make the ldb_di[x]_sel muxes read-only.
> A workaround to set the muxes once during boot could be added to the
> kernel or bootloader.
>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> [afa: ported from Linux kernel commit 03d576f202]
> [afa: added exception for i.MX6QP, see kernel commit f4a0a6c309]
> [afa: added cpu_has_err009219 helper function]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx6.c | 17 +++++++++++++++--
>  drivers/clk/imx/clk.h      |  8 ++++++++
>  2 files changed, 23 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index 319485f8521c..01b649ebbd26 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -64,6 +64,12 @@ static inline int cpu_is_plus(void)
>         return cpu_is_mx6qp() || cpu_is_mx6dp();
>  }
>
> +/* i.MX6 Quad/Dual/DualLite/Solo are all affected */
> +static inline int cpu_has_err009219(void) {

That { should really be on a separate line.

> +       return cpu_is_mx6d() || cpu_is_mx6q() ||
> +               cpu_is_mx6dl() || cpu_is_mx6s();
> +}

Hmm, imx_init() is executed at "postcore" and this function will be
called at "core" init-level. All of the cpu_is_mx6*() functions will
call cpu_is_mx6() which won't work right until imx_init() is called.
Are you sure this is working as intended? I think cpu_mx6_is_imx6*()
functions should be used instead. That's what I had to do on my board
at least. It looks that there's other unrelated code in this file that
might have this problem as well.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
