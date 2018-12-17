Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYpVY-0002PP-Dl
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 09:48:18 +0000
Date: Mon, 17 Dec 2018 10:48:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217094802.dsb2whfrmf5eokjd@pengutronix.de>
References: <20181214152305.30412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181214152305.30412-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] include/linux/time.h: define USEC_PER_SEC and friends
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 14, 2018 at 04:23:05PM +0100, Ahmad Fatoum wrote:
> Linux has them in include/linux/time64.h and they are useful for
> making (especially microsecond) use readable such as in read*_poll_timeout.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/time.h | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/time.h b/include/linux/time.h
> index 3a1bb50020fd..7903139a65b2 100644
> --- a/include/linux/time.h
> +++ b/include/linux/time.h
> @@ -3,7 +3,13 @@
>  
>  #include <linux/types.h>
>  
> +#define MSEC_PER_SEC	1000L
> +#define USEC_PER_MSEC	1000L
> +#define NSEC_PER_USEC	1000L
> +#define NSEC_PER_MSEC	1000000L
> +#define USEC_PER_SEC	1000000L
>  #define NSEC_PER_SEC	1000000000L
> +#define FSEC_PER_SEC	1000000000000000LL
>  
>  struct timespec {
>  	time_t	tv_sec;		/* seconds */
> -- 
> 2.19.1
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
