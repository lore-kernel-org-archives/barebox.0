Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcWtR-0000Uc-CR
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 12:02:54 +0000
Date: Wed, 24 Aug 2016 14:02:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160824120231.GG20657@pengutronix.de>
References: <1472003222-9478-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472003222-9478-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] arm: Add both .lds files to CLEAN_FILES unconditionally
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 23, 2016 at 06:47:02PM -0700, Andrey Smirnov wrote:
> 'clean' target is listed on 'no-dot-config-targets' list in main
> Makefile so that conditional statement would yeild the same result
> every time. Given how CLEAN_FILES are rm'ed with -f there should be no
> harm in specifying them both unconditionally.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/Makefile | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 55f7248..96ec588 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -314,9 +314,5 @@ endif
>  common- += $(patsubst %,arch/arm/boards/%/,$(board-))
>  
>  CLEAN_FILES += include/generated/mach-types.h barebox-flash-image
> -
> -ifeq ($(CONFIG_CPU_V8), y)
>  CLEAN_FILES += arch/arm/lib64/barebox.lds
> -else
>  CLEAN_FILES += arch/arm/lib32/barebox.lds
> -endif
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
