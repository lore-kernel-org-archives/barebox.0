Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBLUE-0002oD-DL
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 08:06:23 +0000
Date: Tue, 11 Sep 2012 10:06:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911080620.GN18243@pengutronix.de>
References: <1347276084-20145-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347276084-20145-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fsl TSEC: register map boundary
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 10, 2012 at 12:21:24PM +0100, Renaud Barbier wrote:
> The end boundary of each registers set may overlap with the start
> of the next register set. Subtract 1 to the end boundary.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/mach-mpc85xx/eth-devices.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
> index 02a3722..c6e8f36 100644
> --- a/arch/ppc/mach-mpc85xx/eth-devices.c
> +++ b/arch/ppc/mach-mpc85xx/eth-devices.c
> @@ -32,15 +32,15 @@ int fsl_eth_init(int num, struct gfar_info_struct *gf)
>  	res = xzalloc(3 * sizeof(struct resource));
>  	/* TSEC interface registers */
>  	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
> -	res[0].end = res[0].start + 0x1000;
> +	res[0].end = res[0].start + 0x1000 - 1;
>  	res[0].flags = IORESOURCE_MEM;
>  	/* External PHY access always through eTSEC1 */
>  	res[1].start = MDIO_BASE_ADDR;
> -	res[1].end = res[1].start + 0x1000;
> +	res[1].end = res[1].start + 0x1000 - 1;
>  	res[1].flags = IORESOURCE_MEM;
>  	/* Access to TBI/RTBI interface. */
>  	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
> -	res[2].end = res[2].start + 0x1000;
> +	res[2].end = res[2].start + 0x1000 - 1;
>  	res[2].flags = IORESOURCE_MEM;
>  
>  	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
> -- 
> 1.7.1
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
