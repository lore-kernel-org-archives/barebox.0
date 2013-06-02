Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj4SL-0001T1-Tc
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 09:20:07 +0000
Date: Sun, 2 Jun 2013 11:19:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130602091937.GQ32299@pengutronix.de>
References: <1370095522-63657-1-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370095522-63657-1-git-send-email-monaka@monami-ya.com>
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
Subject: Re: [PATCH] [x86] Avoid build error on "config SPI" is y
To: monaka@monami-ya.jp
Cc: barebox@lists.infradead.org

On Sat, Jun 01, 2013 at 11:05:22PM +0900, monaka@monami-ya.jp wrote:
> From: Masaki Muranaka <monaka@monami-ya.com>
> 
> In case he configures with make ARCH=x85 menuconfig,
> config SPI will be set to "y". And he will got an error on spi.h.
> 
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>

Applied, thanks

Sascha

> ---
>  arch/x86/include/asm/types.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
> index b0218d2..d473405 100644
> --- a/arch/x86/include/asm/types.h
> +++ b/arch/x86/include/asm/types.h
> @@ -29,12 +29,16 @@ typedef unsigned int __u32;
>  typedef __signed__ long long __s64;
>  typedef unsigned long long __u64;
>  
> +typedef signed char s8;
>  typedef unsigned char u8;
>  
> +typedef signed short s16;
>  typedef unsigned short u16;
>  
> +typedef signed int s32;
>  typedef unsigned int u32;
>  
> +typedef signed long long s64;
>  typedef unsigned long long u64;
>  
>  #endif /* __ASSEMBLY__ */
> -- 
> 1.8.3
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
