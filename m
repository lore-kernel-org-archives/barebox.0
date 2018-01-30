Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egPt8-00064W-3j
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 06:59:27 +0000
Date: Tue, 30 Jan 2018 07:59:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130065913.a2iuhg5e4qpifcqq@pengutronix.de>
References: <20180128213048.14450-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180128213048.14450-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] ratp: remove unused list pointer from ratp_bb_pkt
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Sun, Jan 28, 2018 at 10:30:48PM +0100, Aleksander Morgado wrote:
> This struct type is used in the RATP FS implementation, but was never
> used as a list element anywhere.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  include/ratp_bb.h | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/ratp_bb.h b/include/ratp_bb.h
> index 70fd58a67..f485f7d8a 100644
> --- a/include/ratp_bb.h
> +++ b/include/ratp_bb.h
> @@ -2,8 +2,6 @@
>  #define __RATP_BB_H
>  
>  struct ratp_bb_pkt {
> -	struct list_head list;
> -
>  	unsigned int len;
>  	uint8_t data[];
>  };
> -- 
> 2.15.1
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
