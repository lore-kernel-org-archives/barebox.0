Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8lBx-0007NA-WC
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 06:01:22 +0000
Date: Mon, 12 Aug 2013 08:01:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130812060100.GH26614@pengutronix.de>
References: <dab4bd27cb87dade31bafdaa3a59da2e9a5834b5.1376220958.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dab4bd27cb87dade31bafdaa3a59da2e9a5834b5.1376220958.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] fs: tftp: don't duplicate timeout information
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Sun, Aug 11, 2013 at 02:36:40PM +0300, Baruch Siach wrote:
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied, thanks

Sascha

> ---
> Untested.
> 
>  fs/tftp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 50efe0d..b641faf 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -40,7 +40,7 @@
>  #define TFTP_RESEND_TIMEOUT	SECOND
>  
>  /* After this time without progress we will bail out */
> -#define TFTP_TIMEOUT		(5 * SECOND)
> +#define TFTP_TIMEOUT		(TIMEOUT * SECOND)
>  
>  /*
>   *	TFTP operations.
> -- 
> 1.8.4.rc2
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
