Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYtF-0007Vi-RV
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:53:48 +0000
Date: Wed, 20 Sep 2017 08:53:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920065323.nyk4p37ttam5du6q@pengutronix.de>
References: <20170919213641.28512-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170919213641.28512-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] lib,ratp: avoid too verbose info messages
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Sep 19, 2017 at 02:36:41PM -0700, Aleksander Morgado wrote:
> When using a cli-based RATP that opens and closes the RATP channel for
> each command sent/received, it gets annoying to get the "Closed"
> message printed all the time in console after each RATP channel close
> operation. Just demote it to debug level.
> 
> E.g.:
>     barebox@barebox sandbox:/ ratp: Closed
>     ratp: Closed
>     ratp: Closed
>     ratp: Closed
>     ...
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  lib/ratp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/ratp.c b/lib/ratp.c
> index e7fbf640a..4c5c748b4 100644
> --- a/lib/ratp.c
> +++ b/lib/ratp.c
> @@ -1717,7 +1717,7 @@ void ratp_close(struct ratp *ratp)
>  	free(ri);
>  	ratp->internal = NULL;
>  
> -	pr_info("Closed\n");
> +	pr_debug("Closed\n");
>  }
>  
>  /**
> -- 
> 2.14.1
> 
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
