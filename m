Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brJgQ-0000p9-0J
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:58:34 +0000
Date: Tue, 4 Oct 2016 08:58:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004065811.vsvvya5csazebcfg@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-12-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475505657-898-12-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 11/20] i.MX: Add VF610 clock tree initialization code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 03, 2016 at 07:40:48AM -0700, Andrey Smirnov wrote:
> Based on analogous code from Linux kernel
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/imx/Makefile    |    1 +
>  drivers/clk/imx/clk-vf610.c | 1224 +++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 1225 insertions(+)
>  create mode 100644 drivers/clk/imx/clk-vf610.c
> 
> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
> index 0303c0b..2665f49 100644
> --- a/drivers/clk/imx/Makefile
> +++ b/drivers/clk/imx/Makefile
> @@ -1 +1,2 @@
>  obj-y += clk.o
> +obj-$(CONFIG_ARCH_VF610) += clk-vf610.o
> +static struct clk *clk[VF610_CLK_END];
> +struct clk_onecell_data clk_data;
> +
> +static struct clk * __init vf610_get_fixed_clock(struct device_node *np,
> +						 const char *name)
> +{
> +	struct clk *clk = of_clk_get_by_name(np, name);
> +
> +	/* Backward compatibility if device tree is missing clks assignments */
> +	if (IS_ERR(clk))
> +		clk = imx_obtain_fixed_clock(name, 0);

Ah, that explains it. No, we don't need this since we are compiling the
device trees into barebox and can make sure they are compatible with our
code.

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
