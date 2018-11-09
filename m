Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL19V-0007WL-L6
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 07:24:27 +0000
Date: Fri, 9 Nov 2018 08:24:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181109072413.q56x43nwlpfjmjz3@pengutronix.de>
References: <20181106174254.21371-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181106174254.21371-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: nxp-imx8mq-evk: remove SDRAM reservation for ATF
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 06, 2018 at 06:42:53PM +0100, Lucas Stach wrote:
> Recent versions of the i.MX8MQ ATF (like the one shipped with Barebox)
> reside in a part of OCRAM, so there is no need to reserve any part of
> SDRAM anymore.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/board.c | 11 -----------
>  1 file changed, 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
> index 764eadb766a9..7918b5fb3e36 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
> @@ -45,17 +45,6 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
>  	return 0;
>  }
>  
> -static int imx8mq_evk_mem_init(void)
> -{
> -	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
> -		return 0;
> -
> -	request_sdram_region("ATF", 0x40000000, SZ_128K);
> -
> -	return 0;
> -}
> -mem_initcall(imx8mq_evk_mem_init);
> -
>  static int nxp_imx8mq_evk_init(void)
>  {
>  	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
> -- 
> 2.19.1
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
