Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbWjD-0003Ki-Pj
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:54:20 +0000
Received: from mail644.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A2632FF932C
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 15:53:58 +0200 (CEST)
Date: Sun, 12 May 2013 15:49:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130512134940.GI19265@game.jcrosoft.org>
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

this is not typos it's coding style

Best Regards,
J.
On 10:57 Sun 12 May     , Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/asm-generic/gpio.h |    1 -
>  include/gpio.h             |    2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
