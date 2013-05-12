Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTYq-0001jG-GA
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:31:24 +0000
Date: Sun, 12 May 2013 12:31:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512103107.GX32299@pengutronix.de>
References: <1368341836-19152-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368341836-19152-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] gpio: fix typos
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 10:57:16AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/asm-generic/gpio.h |    1 -
>  include/gpio.h             |    2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
> index c2e7a5d..95fdd05 100644
> --- a/include/asm-generic/gpio.h
> +++ b/include/asm-generic/gpio.h
> @@ -18,4 +18,3 @@ int gpio_direction_output(unsigned gpio, int value);
>  int gpio_direction_input(unsigned gpio);
>  
>  #endif /* __ASM_GENERIC_GPIO_H */
> -
> diff --git a/include/gpio.h b/include/gpio.h
> index c2fb9f7..140d53c 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -6,7 +6,7 @@
>  #ifndef CONFIG_GPIOLIB
>  static inline int gpio_request(unsigned gpio, const char *label)
>  {
> -       return 0;
> +	return 0;
>  }
>  
>  static inline void gpio_free(unsigned gpio)
> -- 
> 1.7.10.4
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
