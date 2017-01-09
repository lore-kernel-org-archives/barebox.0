Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQYfq-00063i-E6
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 12:03:45 +0000
Date: Mon, 9 Jan 2017 13:03:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109120316.agzguqvlak2ramud@pengutronix.de>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
 <1481565788-9115-20-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1481565788-9115-20-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 19/21] i.MX: Default CONFI_USB_IMX_PHY to 'y' on Vybrid
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

In the subject:

s/CONFI_USB_IMX_PHY/CONFIG_USB_IMX_PHY/

On Mon, Dec 12, 2016 at 10:03:06AM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/usb/imx/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
> index b0c6a41..8e6f315 100644
> --- a/drivers/usb/imx/Kconfig
> +++ b/drivers/usb/imx/Kconfig
> @@ -16,4 +16,4 @@ config USB_IMX_CHIPIDEA
>  
>  config USB_IMX_PHY
>  	bool
> -	default y if ARCH_IMX6 && GENERIC_PHY
> +	default y if (ARCH_IMX6 || ARCH_VF610) && GENERIC_PHY
> -- 
> 2.5.5
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
