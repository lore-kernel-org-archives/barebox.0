Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiIwW-0000X9-Vp
 for barebox@lists.infradead.org; Fri, 31 May 2013 06:36:06 +0000
Date: Fri, 31 May 2013 08:35:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130531063540.GE32299@pengutronix.de>
References: <1369915889-30767-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369915889-30767-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: asm/mipsregs.h: remove unused stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 30, 2013 at 04:11:29PM +0400, Antony Pavlov wrote:
> In barebox we have no CONFIG_MIPS_MT_SMTC Kconfig option.
> So remove the code under this macro.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/include/asm/mipsregs.h |    8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
> index 608f19b..f923860 100644
> --- a/arch/mips/include/asm/mipsregs.h
> +++ b/arch/mips/include/asm/mipsregs.h
> @@ -673,19 +673,11 @@ do {									\
>  #define write_c0_compare3(val)	__write_32bit_c0_register($11, 7, val)
>  
>  #define read_c0_status()	__read_32bit_c0_register($12, 0)
> -#ifdef CONFIG_MIPS_MT_SMTC
> -#define write_c0_status(val)						\
> -do {									\
> -	__write_32bit_c0_register($12, 0, val);				\
> -	__ehb();							\
> -} while (0)
> -#else
>  /*
>   * Legacy non-SMTC code, which may be hazardous
>   * but which might not support EHB
>   */
>  #define write_c0_status(val)	__write_32bit_c0_register($12, 0, val)
> -#endif /* CONFIG_MIPS_MT_SMTC */
>  
>  #define read_c0_cause()		__read_32bit_c0_register($13, 0)
>  #define write_c0_cause(val)	__write_32bit_c0_register($13, 0, val)
> -- 
> 1.7.10.4
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
