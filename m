Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZE0p-0006z7-V4
 for barebox@lists.infradead.org; Mon, 15 Aug 2016 09:17:08 +0000
Date: Mon, 15 Aug 2016 11:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160815091634.GW20657@pengutronix.de>
References: <20160808113143.8048-1-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160808113143.8048-1-vicencb@gmail.com>
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
Subject: Re: [PATCH 1/1] [PATCH] fix ARMv8 interference with ARMv7
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 08, 2016 at 01:31:43PM +0200, Vicente Bergas wrote:
> CONFIG_CPU_V8 is checked against 'y' and 'n', but the case when the
> variable is unset is not considered.
> This patch only checks the variable against a single value 'y' so the
> logic is always coherent even when the variable is unset.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> Tested-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9fc3cd3..1ab35b9 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -21,7 +21,7 @@ endif
>  # at least some of the code would be executed with MMU off, lets be
>  # conservative and instruct the compiler not to generate any unaligned
>  # accesses
> -ifeq ($(CONFIG_CPU_V8),n)
> +ifneq ($(CONFIG_CPU_V8),y)
>  CFLAGS += -mno-unaligned-access
>  endif
>  
> -- 
> 2.9.2
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
