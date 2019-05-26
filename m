Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV17Q-0003B0-9R
 for barebox@lists.infradead.org; Sun, 26 May 2019 21:55:53 +0000
Received: by mail-it1-x141.google.com with SMTP id i63so21463463ita.3
 for <barebox@lists.infradead.org>; Sun, 26 May 2019 14:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-2-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 26 May 2019 14:55:36 -0700
Message-ID: <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/5] clk: imx6: remove quirky
 clk_set_parent(LDB_diN_sel, pll5_video_div)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Raphael Poggi <poggi.raph@gmail.com>, pza@pengutronix.de

On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> barebox has inherited the clk_set_parent(ldb_diN_sel, pll5_video_div)
> from upstream kernel commit 32f3b8da22 ("ARM i.MX6q: set the LDB serial
> clock parent to the video PLL"), where it was enabled for all i.MX6Q
> revisions after 1.0. It was applied whenever CONFIG_DRIVER_VIDEO_IMX_IPUV3
> was defined.
>
> The kernel removed this reparenting again as a preventive measure
> against ERR009219 in 03d576f202 ("clk: imx6: Make the LDB_DI0 and
> LDB_DI1 clocks read-only").
>
> As the kernel used the device tree compatible, which is the same
> for e.g. i.MX6Solo and DualLite, but barebox queried ANATOP which
> lists different CPU types for i.MX6Solo and DualLite and because
> i.MX6QuadPlus wasn't supported at first, barebox grew to do
> the reparenting on the odd set of:
>   - Quad and Dual rev >1.0
>   - DualLite
>   - Solo rev >1.0
>   - QuadPlus and DualPlus rev >1.0
>
> On all of these, except for the QuadPlus and the DualPlus, this
> reparenting may glitch the LDB so that it permanently locks up.
>
> By removing the reparenting in this commit, producing this glitch is
> avoided, unless the device tree[1] reinstates the old behavior:
>
>         &clks {
>                 assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
>                                   <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
>                 assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
>                                          <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
>         };
>
> Follow-up patches will explicitly check for this and do the reparenting
> in a glitch-free manner.
>
> As of v2019.03.0, following mainline boards are potentially broken
> by this (i.e. they're supported by barebox, are in the list above,
> had a LDB enabled and might be defining CONFIG_DRIVER_VIDEO_IMX_IPUV3):
>   - imx6qdl-zii-rdu2.dtsi

This particular patch does break a non 6Q+ version of RDU2,  but the
follow up ones in the series fix it, so it seems that no action is
really necessary on my part.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
