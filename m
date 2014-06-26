Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0FIM-0005rt-2k
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:25:18 +0000
Date: Thu, 26 Jun 2014 21:24:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626192456.GI14257@pengutronix.de>
References: <1403772557-28482-4-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403772557-28482-4-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 3/4] sandbox: add bit manipulation stuff
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 10:49:16AM +0200, Holger Schurig wrote:
> The functions are already in the sandbox, just the #defines are
> missing.
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>

Applied this one, thanks

Sascha

> ---
>  arch/sandbox/include/asm/bitops.h |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/sandbox/include/asm/bitops.h b/arch/sandbox/include/asm/bitops.h
> index 94646d4..447023d 100644
> --- a/arch/sandbox/include/asm/bitops.h
> +++ b/arch/sandbox/include/asm/bitops.h
> @@ -12,4 +12,11 @@
>  #include <asm-generic/bitops/hweight.h>
>  #include <asm-generic/bitops/ops.h>
>  
> +#define set_bit(x, y)			__set_bit(x, y)
> +#define clear_bit(x, y)			__clear_bit(x, y)
> +#define change_bit(x, y)		__change_bit(x, y)
> +#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
> +#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
> +#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
> +
>  #endif
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
