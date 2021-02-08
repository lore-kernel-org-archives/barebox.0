Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l92L0-00087r-Ct
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 08:56:07 +0000
Date: Mon, 8 Feb 2021 09:56:03 +0100
Message-ID: <20210208085603.GF19583@pengutronix.de>
References: <20210207070508.1472524-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207070508.1472524-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: drop no-thumb-interwork in EABI mode
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Sun, Feb 07, 2021 at 08:05:08AM +0100, Ahmad Fatoum wrote:
> From: Stefan Agner <stefan@agner.ch>
> 
> According to GCC documentation -m(no-)thumb-interwork is
> meaningless in AAPCS configurations. Also clang does not
> support the flag:
>   clang-5.0: error: unknown argument: '-mno-thumb-interwork'
> 
> Just drop -mno-thumb-interwork in AEABI configuration.
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> [afa: ported from Linux 22905a24306c ("ARM: 8766/1: drop no-thumb-interwork in EABI mode")]
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Applied, thanks

Sascha

> ---
>  arch/arm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 96613cc5ba72..9dc0897e5833 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -54,7 +54,7 @@ ifeq ($(CONFIG_CPU_V8), y)
>  CFLAGS_ABI	:=-mabi=lp64
>  else
>  ifeq ($(CONFIG_AEABI),y)
> -CFLAGS_ABI	:=-mabi=aapcs-linux -mno-thumb-interwork
> +CFLAGS_ABI	:=-mabi=aapcs-linux
>  else
>  CFLAGS_ABI	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
>  endif
> -- 
> 2.30.0
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
