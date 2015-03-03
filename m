Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YShcL-0007Bk-Ms
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 07:51:52 +0000
Date: Tue, 3 Mar 2015 08:51:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303075127.GQ11010@pengutronix.de>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
 <1425327722-28232-4-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425327722-28232-4-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH 03/18] CLK: Add fractional divider clock support from
 Linux kernel.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 02, 2015 at 11:21:47PM +0300, Andrey Panov wrote:
> Arch Kconfig should select CLK_NEED_FDIV to have this support
> compiled in.
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  drivers/clk/Kconfig                  |   3 +
>  drivers/clk/Makefile                 |   1 +
>  drivers/clk/clk-fractional-divider.c | 156 +++++++++++++++++++++++++++++++++++
>  include/linux/clk.h                  |   9 ++
>  4 files changed, 169 insertions(+)
>  create mode 100644 drivers/clk/clk-fractional-divider.c
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 6db1f33..e82b566 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -11,6 +11,9 @@ config COMMON_CLK
>  config CLK_NEED_COMPOSITE
>  	bool
>  
> +config CLK_NEED_FDIV
> +	bool
> +

No separate option needed.


> +struct clk *clk_fractional_divider_alloc(
> +		const char *name, const char *parent_name, unsigned long flags,
> +		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
> +		u8 clk_divider_flags)
> +{
> +	struct clk_fractional_divider *fd;
> +
> +	fd = kzalloc(sizeof(*fd), GFP_KERNEL);
> +	if (!fd) {
> +		pr_err("could not allocate fractional divider clk %s\n", name);
> +		return ERR_PTR(-ENOMEM);
> +	}

xzalloc

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
