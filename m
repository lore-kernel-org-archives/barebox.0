Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbC0W-0003oL-Sb
 for barebox@lists.infradead.org; Sat, 11 May 2013 15:46:49 +0000
Date: Sat, 11 May 2013 17:46:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130511154626.GS32299@pengutronix.de>
References: <1368210589-21434-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368210589-21434-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] arm: properly init alignment trap bit
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, May 10, 2013 at 08:29:49PM +0200, Lucas Stach wrote:
> On ARMv7 the intention is to disable the alignment trap to be able to
> use hardware assisted unaligned load/stores. Fix the init to do the
> right thing.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks.

Although this fixes a bug I applied it to -next for now since this was
around for longer and everything appeared to work.
(Though I really wonder how this could ever work)

Sascha

> ---
>  arch/arm/include/asm/barebox-arm-head.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index 9385415..9a8cc87 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -22,7 +22,7 @@ static inline void arm_cpu_lowlevel_init(void)
>  
>  #if __LINUX_ARM_ARCH__ >= 6
>  	r |= CR_U;
> -	r &= CR_A;
> +	r &= ~CR_A;
>  #else
>  	r |= CR_A;
>  #endif
> -- 
> 1.8.1.4
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
