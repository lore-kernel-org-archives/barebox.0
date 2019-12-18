Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTmJ-00081g-Ra
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 07:29:53 +0000
Date: Wed, 18 Dec 2019 08:29:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191218072941.zpe4uwivucjzdc3h@pengutronix.de>
References: <20191217111854.3164-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217111854.3164-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: zii-imx8mq-dev: make eMMC update target the
 default
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 17, 2019 at 12:18:52PM +0100, Lucas Stach wrote:
> We only have a single update target, so make it the default.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/zii-imx8mq-dev/board.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
> index 144adb9cef18..dcf945db495a 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/board.c
> +++ b/arch/arm/boards/zii-imx8mq-dev/board.c
> @@ -19,7 +19,8 @@ static int zii_imx8mq_dev_init(void)
>  
>  	barebox_set_hostname("imx8mq-zii-rdu3");
>  
> -	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
> +	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0",
> +						     BBU_HANDLER_FLAG_DEFAULT);
>  
>  	if (bootsource_get_instance() == 0)
>  		of_device_enable_path("/chosen/environment-emmc");
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
