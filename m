Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8eI-0001f6-M2
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:34:55 +0000
Date: Thu, 15 Dec 2011 11:34:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111215103442.GP27267@pengutronix.de>
References: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] usb-a926x: fix mem init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Wed, Dec 14, 2011 at 04:46:12PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> move mem init to mem_initcall
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied this one to master and the other two to next.

Sascha

> ---
>  arch/arm/boards/usb-a926x/init.c |   17 ++++++++++++-----
>  1 files changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
> index 686f638..20af4b0 100644
> --- a/arch/arm/boards/usb-a926x/init.c
> +++ b/arch/arm/boards/usb-a926x/init.c
> @@ -181,6 +181,18 @@ static void __init ek_add_device_udc(void)
>  	at91_add_device_udc(&ek_udc_data);
>  }
>  
> +static int usb_a9260_mem_init(void)
> +{
> +#ifdef CONFIG_AT91_HAVE_SRAM_128M
> +	at91_add_device_sdram(128 * 1024 * 1024);
> +#else
> +	at91_add_device_sdram(64 * 1024 * 1024);
> +#endif
> +
> +	return 0;
> +}
> +mem_initcall(usb_a9260_mem_init);
> +
>  static int usb_a9260_devices_init(void)
>  {
>  	usb_a9260_add_device_nand();
> @@ -190,11 +202,6 @@ static int usb_a9260_devices_init(void)
>  	at91_add_device_usbh_ohci(&ek_usbh_data);
>  	ek_add_device_udc();
>  
> -#ifdef CONFIG_AT91_HAVE_SRAM_128M
> -	at91_add_device_sdram(128 * 1024 * 1024);
> -#else
> -	at91_add_device_sdram(64 * 1024 * 1024);
> -#endif
>  	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
>  	usb_a9260_set_board_type();
>  
> -- 
> 1.7.7
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
