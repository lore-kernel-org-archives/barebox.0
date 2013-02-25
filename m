Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9suX-0007kJ-0B
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 07:55:45 +0000
Date: Mon, 25 Feb 2013 08:55:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130225075543.GK1906@pengutronix.de>
References: <1361716974-17999-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361716974-17999-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: pcm038: Remove duplicate imx27_barebox_entry() call
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Feb 24, 2013 at 06:42:54PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm038/lowlevel.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
> index 85b9391..77b7bf5 100644
> --- a/arch/arm/boards/pcm038/lowlevel.c
> +++ b/arch/arm/boards/pcm038/lowlevel.c
> @@ -98,8 +98,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
>  	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
>  
>  	imx27_barebox_boot_nand_external();
> -#else
> -	imx27_barebox_entry(0);
>  #endif
>  out:
>  	imx27_barebox_entry(0);
> -- 
> 1.7.12.4
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
