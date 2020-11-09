Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc1rd-0002YR-2W
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 07:45:22 +0000
Date: Mon, 9 Nov 2020 08:45:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109074516.GC29830@pengutronix.de>
References: <20201105141015.1695515-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105141015.1695515-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ddr: imx8m: correct the pwrctl setting of selfref_en
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 05, 2020 at 03:10:13PM +0100, Lucas Stach wrote:
> Port of upstream U-Boot commit: 1eb325af16e2
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddr_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
> index d4efee613343..bc64e7c17e1a 100644
> --- a/drivers/ddr/imx8m/ddr_init.c
> +++ b/drivers/ddr/imx8m/ddr_init.c
> @@ -156,7 +156,7 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
>  	/* Step26: Set back register in Step4 to the original values if desired */
>  	reg32_write(DDRC_RFSHCTL3(0), 0x0000000);
>  	/* enable selfref_en by default */
> -	setbits_le32(DDRC_PWRCTL(0), 0x1 << 3);
> +	setbits_le32(DDRC_PWRCTL(0), 0x1);
>  
>  	/* enable port 0 */
>  	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
