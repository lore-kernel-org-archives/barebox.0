Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xqz0L-0000HU-V9
 for barebox@lists.infradead.org; Wed, 19 Nov 2014 06:44:42 +0000
Date: Wed, 19 Nov 2014 07:44:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141119064415.GJ14482@pengutronix.de>
References: <1416175114-3132-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416175114-3132-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: Re: [PATCH] mtd: nand-mxs: Gate ENFC_CLK_ROOT clock off before
 changing nand clock rate
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 17, 2014 at 12:58:34AM +0300, Dmitry Lavnikevich wrote:
> This fixes NAND initialization issue which appears occasionally on
> some i.MX6 SoCs (particulary was observed on phyCARD-i.MX6 with
> i.MX6Solo).
> 
> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

I had to revert this one. It breaks compilation on i.MX28. Looking
closer at it reveals this is the wrong approach.

>  	if (mxs_nand_is_imx6(nand_info)) {
> +		val = readl(MXC_CCM_CCGR2);
> +		val &= ~MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
> +		writel(val, MXC_CCM_CCGR2);
> +
>  		clk_set_rate(nand_info->clk, 96000000);
> +
> +		val = readl(MXC_CCM_CCGR2);
> +		val |= MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
> +		writel(val, MXC_CCM_CCGR2);
> +
>  		clk_enable(nand_info->clk);

First of all please look at the kernel driver. It uses a clock of 22MHz
normally and 100 or 80MHz for EDO mode, which seems to require setup of
other registers. So it might be that there's something else that makes
trouble here.

The clk API is for abstracting the clock providers from its consumers.
It's unnecessary to directly fiddle with the clock registers in the nand
driver. Instead of passing the enfc_podf to the nand controller
arch/arm/mach-imx/clk-imx6.c should be changed to pass the gate to the
controller and here. In the final enabling of all the gates in
clk-imx6.c clear MXC_CCM_CCGR2[14..15] and enable the clock here after
setting the rate.

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
