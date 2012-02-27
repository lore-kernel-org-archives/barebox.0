Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S25jN-0004X4-Sd
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 18:55:30 +0000
Date: Mon, 27 Feb 2012 19:55:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120227185520.GE3852@pengutronix.de>
References: <1330354647-13944-1-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330354647-13944-1-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH] Typo fix in pm9261 init file
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2012 at 04:57:27PM +0200, Asen Chavdarov Dimov wrote:
> Fixing this typo lets the barebox for pm9261 to be build.
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>

Applied, thanks

  Sascha

> ---
>  arch/arm/boards/pm9261/init.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
> index 23ed44e..f7f2928 100644
> --- a/arch/arm/boards/pm9261/init.c
> +++ b/arch/arm/boards/pm9261/init.c
> @@ -123,7 +123,7 @@ static void __init pm_add_device_dm9000(void)
>  			  IORESOURCE_MEM_16BIT, &dm9000_data);
>  }
>  #else
> -static void __init ek_add_device_dm9000(void) {}
> +static void __init pm_add_device_dm9000(void) {}
>  #endif /* CONFIG_DRIVER_NET_DM9K */
>  
>  static int pm9261_mem_init(void)
> -- 
> 1.7.4.4
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
