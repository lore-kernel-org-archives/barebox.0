Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVDI-0004jB-CN
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:21:58 +0000
Date: Mon, 9 Jan 2017 09:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109082134.wh2xnlrx46rfjcb6@pengutronix.de>
References: <20170106100642.31002-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170106100642.31002-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: remove unused entry from Makefile
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 06, 2017 at 11:06:42AM +0100, Steffen Trumtrar wrote:
> There is no fpga.c file.
> Remove the entry.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-socfpga/Makefile | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
> index b81d57da26fd..dea0e075d145 100644
> --- a/arch/arm/mach-socfpga/Makefile
> +++ b/arch/arm/mach-socfpga/Makefile
> @@ -2,4 +2,3 @@ obj-y += generic.o nic301.o bootsource.o reset-manager.o
>  pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
>  pbl-y += clock-manager.o
>  obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
> -obj-$(CONFIG_ARCH_SOCFPGA_FPGA) += fpga.o
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
