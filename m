Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7DD-0004Rw-Fy
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:34:08 +0000
Date: Sat, 11 Jul 2020 06:34:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711043404.GM15485@pengutronix.de>
References: <20200706062805.26278-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200706062805.26278-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] sandbox: include: <asm/types.h>: don't define
 INTERNAL_SIZE_T
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 06, 2020 at 08:28:03AM +0200, Ahmad Fatoum wrote:
> The INTERNAL_SIZE_T default is size_t, which already is 64-bit on 64-bit
> platforms and 32-bit on 32-bit ones. We can thus drop the #define and go
> back to the minimal <asm/types.h>.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/include/asm/types.h | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
> index 28046670f4e2..7b356a99eb66 100644
> --- a/arch/sandbox/include/asm/types.h
> +++ b/arch/sandbox/include/asm/types.h
> @@ -1,15 +1,6 @@
> -#ifndef __ASM_I386_TYPES_H
> -#define __ASM_I386_TYPES_H
> +#ifndef __ASM_SANDBOX_TYPES_H
> +#define __ASM_SANDBOX_TYPES_H
>  
>  #include <asm-generic/int-ll64.h>
>  
> -#ifdef __x86_64__
> -/*
> - * This is used in dlmalloc. On X86_64 we need it to be
> - * 64 bit
> - */
> -#define INTERNAL_SIZE_T unsigned long
> -
> -#endif
> -
>  #endif
> -- 
> 2.27.0
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
