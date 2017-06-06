Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7S6-0006I0-6L
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 05:54:51 +0000
Date: Tue, 6 Jun 2017 07:54:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606055428.25unjole6ygcskrl@pengutronix.de>
References: <20170602154828.4429-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170602154828.4429-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] ratp: avoid using already freed memory
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Fri, Jun 02, 2017 at 05:48:28PM +0200, Aleksander Morgado wrote:
> If ratp_establish() fails we would be accessing the ratp_internal
> struct after having disposed it.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  lib/ratp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/ratp.c b/lib/ratp.c
> index d596a0e8b..22e83636f 100644
> --- a/lib/ratp.c
> +++ b/lib/ratp.c
> @@ -1658,6 +1658,8 @@ int ratp_establish(struct ratp *ratp, bool active, int timeout_ms)
>  	}
>  
>  out:
> +	ri->in_ratp--;
> +
>  	if (ret) {
>  		free(ri->recvbuf);
>  		free(ri->sendbuf);
> @@ -1665,8 +1667,6 @@ out:
>  		ratp->internal = NULL;
>  	}
>  
> -	ri->in_ratp--;
> -
>  	return ret;
>  }
>  
> -- 
> 2.13.0
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
