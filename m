Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOp16-0000qQ-Dg
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:43:45 +0000
Date: Mon, 30 Apr 2012 13:43:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120430114341.GG4141@pengutronix.de>
References: <1335628990-12019-1-git-send-email-jaccon.bastiaansen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335628990-12019-1-git-send-email-jaccon.bastiaansen@gmail.com>
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
Subject: Re: [PATCH] Increase heapsize for i.MX21ADS board again.
To: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 28, 2012 at 06:03:10PM +0200, Jaccon Bastiaansen wrote:
> Barebox cannot boot the recent mainline Linux kernels for the
> i.MX21ADS board anymore when using TFTP, because the heap is too
> small.
> 
> Signed-off-by: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/configs/mx21ads_defconfig |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
> index 175c229..e63a386 100644
> --- a/arch/arm/configs/mx21ads_defconfig
> +++ b/arch/arm/configs/mx21ads_defconfig
> @@ -2,8 +2,8 @@ CONFIG_ARCH_IMX=y
>  CONFIG_ARCH_IMX21=y
>  CONFIG_IMX_CLKO=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> -CONFIG_TEXT_BASE=0xc1000000
> -CONFIG_MALLOC_SIZE=0x500000
> +CONFIG_TEXT_BASE=0xc3000000
> +CONFIG_MALLOC_SIZE=0x2000000
>  CONFIG_LONGHELP=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
> -- 
> 1.7.1
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
