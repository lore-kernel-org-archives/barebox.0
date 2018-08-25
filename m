Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x242.google.com ([2607:f8b0:4001:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfhF-00060S-6H
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:02:15 +0000
Received: by mail-io0-x242.google.com with SMTP id r196-v6so9847893iod.0
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20180824123800.4927-1-m.grzeschik@pengutronix.de>
In-Reply-To: <20180824123800.4927-1-m.grzeschik@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:01:49 -0700
Message-ID: <CAHQ1cqEbvDoenFLPyNr+LjMdfx39cG5vADtUGBtBshXg0u9AUw@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX5 clock: add clock provider support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 24, 2018 at 7:59 AM Michael Grzeschik
<m.grzeschik@pengutronix.de> wrote:
>
> Currently it is impossible to get clks with clk_get(&clk, "name");
> on the mx5 platform. Change that by adding clk-imx5 as clk_provider.
>

I had to come up with a fix for this exact problem a week or so ago,
and I went a little bit further than this patch and ported Linux clock
code for i.MX51/53 which already has code to create a clock provider.
I'll post the series shortly and we can compare notes and pick a way
to go forward. I am obviously biased toward having the same (almost)
code as Linux does, but this patch is less invasive, so I'll be happy
to pick it up if that's the direction we decide to go.

Thanks,
Andrey Smirnov

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx5.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
> index edebd25a38..3840122419 100644
> --- a/drivers/clk/imx/clk-imx5.c
> +++ b/drivers/clk/imx/clk-imx5.c
> @@ -60,6 +60,7 @@
>  #define CCM_CMEOR      0x84
>
>  static struct clk *clks[IMX5_CLK_END];
> +static struct clk_onecell_data clk_data;
>
>  /* This is used multiple times */
>  static const char *standard_pll_sel[] = {
> @@ -411,6 +412,10 @@ static int imx51_ccm_probe(struct device_d *dev)
>
>         mx51_clocks_init(dev, regs);
>
> +       clk_data.clks = clks;
> +       clk_data.clk_num = IMX5_CLK_END;
> +       of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
> +
>         return 0;
>  }
>
> @@ -503,6 +508,10 @@ static int imx53_ccm_probe(struct device_d *dev)
>
>         mx53_clocks_init(dev, regs);
>
> +       clk_data.clks = clks;
> +       clk_data.clk_num = IMX5_CLK_END;
> +       of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
> +
>         return 0;
>  }
>
> --
> 2.18.0
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
