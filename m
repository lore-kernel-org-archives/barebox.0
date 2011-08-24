Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qw8x3-0006wC-0X
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 08:36:46 +0000
Date: Wed, 24 Aug 2011 10:36:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110824083641.GY31404@pengutronix.de>
References: <1314144664-2752-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314144664-2752-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH] ARM: mx53loco: Fix DD3 initialization
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

Hi Fabio,

Welcome to barebox ;)

On Tue, Aug 23, 2011 at 09:11:04PM -0300, Fabio Estevam wrote:
> Updated mx53 ddr3 script in order to align with the latest Freescale version from July 8, 2011:
> 
> -change ESDREF[REF_SEL]=01 (for 32KHz), from incorrect setting of 00 (64KHz)
> 
> -change DDR3 MR0 write to "setmem /32 0x63fd901c = 0x052080b0" from "0x092080b0". 
> 
> This changes write recovery from 8 clocks to 6 clocks(in line with ESDCFG1[tWR])
> 
> Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>

Applied to master.

Sascha

> ---
>  arch/arm/boards/freescale-mx53-loco/flash_header.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
> index d6ff898..490e223 100644
> --- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
> +++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
> @@ -63,14 +63,14 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
> -	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x092080b0), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
> -	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x09208138), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
> -	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00001800), },
> +	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
>  	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
>  	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
>  	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
> -- 
> 1.7.1
> 
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
