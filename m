Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5Uhc-0006Lr-4S
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 11:44:05 +0000
Date: Thu, 27 Sep 2018 13:42:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180927114255.GY4097@pengutronix.de>
References: <20180927041129.29584-1-andrew.smirnov@gmail.com>
 <20180927041129.29584-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180927041129.29584-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/3] bbu: command: Make sure specified update handler
 exists
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, Sep 26, 2018 at 09:11:28PM -0700, Andrey Smirnov wrote:
> @@ -57,6 +62,30 @@ static int do_barebox_update(int argc, char *argv[])
>  		}
>  	}
>  
> +	if (data.handler_name && data.devicefile) {
> +		printf("Both TARGET and DEVICE are provided. "
> +		       "Ignoring the latter\n");
> +
> +		data.devicefile = NULL;
> +	}
> +
> +	if (data.handler_name &&
> +	    !bbu_find_handler_by_name(data.handler_name)) {
> +		printf("handler '%s' does not exist\n",
> +		       data.handler_name);
> +		goto error;
> +	} else if (data.devicefile &&
> +		   !bbu_find_handler_by_device(data.devicefile)) {
> +		printf("handler for '%s' does not exist\n",
> +		       data.devicefile);
> +		goto error;
> +	} if (!data.handler_name &&
> +	      !data.devicefile &&
> +	      !bbu_find_handler_by_name(NULL)) {
> +		printf("default handler does not exist\n");
> +		goto error;
> +	}

There should be a linebreak before the last if().

Maybe it should be rewritten as:

	if (data.handler_name)
		handler = bbu_find_handler_by_name();
	else if (data.devicefile)
		handler = bbu_find_handler_by_device();
	else
		handler = bbu_find_handler_by_name();

barebox_update() currently repeats these steps, so I think it would be a
next logical step to pass this handler to barebox_update() instead of
searching it there again.

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
