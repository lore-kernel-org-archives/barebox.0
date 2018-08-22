Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNH7-0007qi-VJ
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:09:55 +0000
Date: Wed, 22 Aug 2018 09:09:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822070940.2bgr6uraeoeewy7h@pengutronix.de>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-20-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062603.17393-20-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 19/22] bbu: Remove logical negation in
 barebox_update_handler_exists()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:26:00PM -0700, Andrey Smirnov wrote:
> Returning !bbu_find_handler() from barebox_update_handler_exists()
> would return the opposite result from what the name of that funciton
> implies. Drop the "!" to make it behave as expected.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/bbu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 11e44f4a7..69ccac68a 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -151,7 +151,7 @@ bool barebox_update_handler_exists(struct bbu_data *data)
>  	if (!data->handler_name)
>  		return false;
>  
> -	return !bbu_find_handler(data->handler_name);
> +	return bbu_find_handler(data->handler_name);

As bbu_find_handler() returns a pointer maybe better '!!' or
bbu_find_handler() != NULL?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
