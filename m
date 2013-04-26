Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqXQ-0005uk-Ep
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 21:50:41 +0000
Date: Fri, 26 Apr 2013 23:50:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426215038.GZ32299@pengutronix.de>
References: <1366967553-23985-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366967553-23985-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: ccxmx51: Fix OTG Host USB mode
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 01:12:33PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/ccxmx51/ccxmx51.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> index a14c9bc..df565d9 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -196,7 +196,8 @@ static const struct spi_board_info ccxmx51_spi_board_info[] = {
>  };
>  
>  static struct imxusb_platformdata ccxmx51_otg_pdata = {
> -	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_POWER_PINS_ENABLED,
> +	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_INTERNAL_PHY |
> +		  MXC_EHCI_POWER_PINS_ENABLED,
>  	.mode	= IMX_USB_MODE_HOST,
>  };
>  
> -- 
> 1.8.1.5
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
