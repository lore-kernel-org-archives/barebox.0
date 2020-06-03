Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNa8-0002w1-7j
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 07:13:01 +0000
Date: Wed, 3 Jun 2020 09:12:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603071258.GR11869@pengutronix.de>
References: <20200602075757.4734-1-a.fatoum@pengutronix.de>
 <20200602075757.4734-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602075757.4734-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/3] restart: give all restart handlers a descriptive name
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2020 at 09:57:56AM +0200, Ahmad Fatoum wrote:
> diff --git a/common/restart.c b/common/restart.c
> index dd15c8d5c362..66131c262938 100644
> --- a/common/restart.c
> +++ b/common/restart.c
> @@ -47,6 +47,7 @@ int restart_handler_register(struct restart_handler *rst)
>  
>  /**
>   * restart_handler_register_fn() - register a handler function
> + * @name:	restart method name or NULL if name should be auto-generated
>   * @restart_fn:	The restart function
>   *
>   * convenience wrapper for restart_handler_register() to register a handler
> @@ -54,13 +55,15 @@ int restart_handler_register(struct restart_handler *rst)
>   *
>   * return: 0 for success or negative error code
>   */
> -int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *))
> +int restart_handler_register_fn(const char *name,
> +				void (*restart_fn)(struct restart_handler *))
>  {
>  	struct restart_handler *rst;
>  	int ret;
>  
>  	rst = xzalloc(sizeof(*rst));
>  
> +	rst->name = name;

Please allocate the name in case someone passes an array from the stack
here.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
