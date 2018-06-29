Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYsoL-00055W-FL
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 12:47:39 +0000
Date: Fri, 29 Jun 2018 14:47:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180629124725.2jcoyd6dip5ge2ob@pengutronix.de>
References: <20180628162905.11053-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180628162905.11053-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx6qp: fix NoC QoS passthrough for new cpu type
 functions.
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2018 at 06:29:05PM +0200, Philipp Zabel wrote:
> On i.MX6QP/DP cpu_mx6_is_mx6q/d do not return true anymore.
> Use the new cpu_mx6_is_mx6qp/dp to reenable NoC regulator bypass.
> 
> Fixes: d4c05d29d484 ("ARM: i.MX6: Add cpu type for 'plus' variants")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks


Sascha

> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index eaf9f2e4130e..3d95c9e3749c 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -140,8 +140,7 @@ static void imx6_setup_ipu_qos(void)
>  	 * On i.MX6 QP/DP the NoC regulator for the IPU ports needs to be in
>  	 * bypass mode for the above settings to take effect.
>  	 */
> -	if ((cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) &&
> -	    imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
> +	if (cpu_mx6_is_mx6qp() || cpu_mx6_is_mx6dp()) {
>  		writel(0x2, fast2 + 0xb048c);
>  		writel(0x2, fast2 + 0xb050c);
>  	}
> -- 
> 2.17.1
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
