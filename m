Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8QeC-0003b2-2g
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 07:00:37 +0000
Date: Mon, 3 Sep 2012 09:00:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903070032.GT26594@pengutronix.de>
References: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346403272-24446-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346403272-24446-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 01/10] add gpiolib support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

On Fri, Aug 31, 2012 at 10:54:23AM +0200, Steffen Trumtrar wrote:
> diff --git a/include/gpio.h b/include/gpio.h
> index b7d8402..903fa06 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -3,12 +3,28 @@
>  
>  #include <asm/gpio.h>
>  
> -static inline int gpio_request(unsigned gpio, const char *label)
> -{
> -	return 0;
> -}
> -
> -static inline void gpio_free(unsigned gpio)
> -{
> -}

We have to keep these. They are used by some code.


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
