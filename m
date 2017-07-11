Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x243.google.com ([2607:f8b0:400c:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUzA5-0002ZG-Kn
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 17:41:27 +0000
Received: by mail-vk0-x243.google.com with SMTP id p193so493350vkd.2
 for <barebox@lists.infradead.org>; Tue, 11 Jul 2017 10:41:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170711093050.23278-1-p.zabel@pengutronix.de>
References: <20170711093050.23278-1-p.zabel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 11 Jul 2017 12:41:03 -0500
Message-ID: <CAHQ1cqFqxy5WPcRtmeq5WSxNQqWdPBS_e901L9+yEp8NiKGG+w@mail.gmail.com>
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
Subject: Re: [PATCH] i.MX: clk-pllv3: Initially disable PLL_BYPASS bit
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jul 11, 2017 at 4:30 AM, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> Commit cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> overreached a bit by removing the code that disables the PLL_BYPASS bit
> for all architectures instead of making an exception for Vybrid and
> i.MX6SL. This causes the USB controller on i.MX6Q to run at bypass
> frequency and fail:
>
>     barebox@Boundary Devices i.MX6 Quad Nitrogen6x Board:/ usb
>     usb: USB: scanning bus for devices...
>     usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>     imx-usb 2184200.usb: port(0) reset error
>
> Also, the linux clk-pllv3 driver never looks at or touches the
> PLL_BYPASS bit, but expects the bootloader to set it up correctly.
>

Hmm, wouldn't this code:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/imx/clk-imx6q.c?h=v4.12#n469

alter the state of BYPASS bit?

> This patch adds code to unconditionally disable the PLL_BYPASS bit
> initially, when the PLL clocks are registered.
>

The reason I didn't make that patch as a exception for Vybrid and
i.MX6SL was because any other i.MX6 clock trees didn't reference that
clock mux, so I incorrectly assumed it not to be present in the
hardware. IMHO, if this is not the case, a better fix for this would
be to change the clock tree to include PLL_BYPASS related mux and call
clk_set_parent() explicitly.

And having looked at i.MX6Q clock tree code in the kerenel it seems
like Barebox version got out of sync and kernel code does create such
clock tree node, so maybe we should do that as well?

Thanks,
Andrey Smirnov

> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Fixes: cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/clk/imx/clk-pllv3.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index 0e55a63e9..44642e88f 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -370,6 +370,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
>         struct clk_pllv3 *pll;
>         const struct clk_ops *ops;
>         int ret;
> +       u32 val;
>
>         pll = xzalloc(sizeof(*pll));
>
> @@ -414,6 +415,10 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
>         pll->clk.parent_names = &pll->parent;
>         pll->clk.num_parents = 1;
>
> +       val = readl(pll->base);
> +       val &= ~BM_PLL_BYPASS;
> +       writel(val, pll->base);
> +
>         ret = clk_register(&pll->clk);
>         if (ret) {
>                 free(pll);
> --
> 2.11.0
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
