Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBLG4-0000hZ-J2
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:51:46 +0000
Date: Tue, 11 Sep 2012 09:51:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911075141.GJ18243@pengutronix.de>
References: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/3] sandbox-unaligned: better usement of ifdef
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 07:30:43AM +0200, Alexander Aring wrote:
> GCC versions below 4.6 don't set __BYTE_ORDER__
> with __ORDER_LITTLE_ENDIAN__. So it's better to use
> __BYTE_ORDER and __LITTLE_ENDIAN instead.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

These fix some warnings on a 32bit sandbox build also for me.

Thanks, applied.

Sascha

> ---
>  arch/sandbox/include/asm/unaligned.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/sandbox/include/asm/unaligned.h b/arch/sandbox/include/asm/unaligned.h
> index 07c1ae4..d02da6e 100644
> --- a/arch/sandbox/include/asm/unaligned.h
> +++ b/arch/sandbox/include/asm/unaligned.h
> @@ -8,7 +8,7 @@
>  #include <linux/unaligned/access_ok.h>
>  #include <linux/unaligned/generic.h>
>  
> -#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
> +#if __BYTE_ORDER == __LITTLE_ENDIAN
>  #define get_unaligned __get_unaligned_le
>  #define put_unaligned __put_unaligned_le
>  #else
> -- 
> 1.7.12
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
