Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U65KZ-0007XM-Qn
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 20:22:56 +0000
Date: Thu, 14 Feb 2013 21:22:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214202253.GC1906@pengutronix.de>
References: <1360835962-14789-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360835962-14789-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Add missing SZ_xx defines
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2013 at 01:59:22PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  include/sizes.h |   12 ++++++++++++
>  1 files changed, 12 insertions(+), 0 deletions(-)
> 
> diff --git a/include/sizes.h b/include/sizes.h
> index c47f906..321d40c 100644
> --- a/include/sizes.h
> +++ b/include/sizes.h
> @@ -17,7 +17,19 @@
>  #define __sizes_h			1
>  
>  /* handy sizes */
> +#define SZ_1				0x00000001
> +#define SZ_2				0x00000002
> +#define SZ_4				0x00000004
> +#define SZ_8				0x00000008
> +#define SZ_16				0x00000010
> +#define SZ_32				0x00008020
> +#define SZ_64				0x00000040
> +#define SZ_128				0x00000080
> +#define SZ_256				0x00000100
> +#define SZ_512				0x00000200
> +
>  #define SZ_1K				0x00000400
> +#define SZ_2K				0x00000800
>  #define SZ_4K				0x00001000
>  #define SZ_8K				0x00002000
>  #define SZ_16K				0x00004000
> -- 
> 1.7.3.4
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
