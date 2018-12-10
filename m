Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHMh-0002sT-0T
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 08:56:35 +0000
Date: Mon, 10 Dec 2018 09:56:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210085623.qglnfnosorawhicc@pengutronix.de>
References: <20181207073204.3358-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207073204.3358-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] nvmem: ocotp: Make use of postcore_platform_driver macro
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:32:04PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/nvmem/ocotp.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index e0cf35f0b..2952988f8 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -697,11 +697,4 @@ static struct driver_d imx_ocotp_driver = {
>  	.probe	= imx_ocotp_probe,
>  	.of_compatible = DRV_OF_COMPAT(imx_ocotp_dt_ids),
>  };
> -
> -static int imx_ocotp_init(void)
> -{
> -	platform_driver_register(&imx_ocotp_driver);
> -
> -	return 0;
> -}
> -postcore_initcall(imx_ocotp_init);
> +postcore_platform_driver(imx_ocotp_driver);
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
