Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uao8W-0007LJ-CM
 for barebox@lists.infradead.org; Fri, 10 May 2013 14:17:29 +0000
Received: from mail98.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 082BBFFA030
 for <barebox@lists.infradead.org>; Fri, 10 May 2013 16:17:04 +0200 (CEST)
Date: Fri, 10 May 2013 16:12:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130510141240.GD19265@game.jcrosoft.org>
References: <1368194658-2961-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368194658-2961-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] GPIO: Add gpio_to_desc helper
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 18:04 Fri 10 May     , Alexander Shiyan wrote:
> Patch adds gpio_to_desc helper for validate GPIO.
> A bit optimization is performed (about -250 bytes on ARM).
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/gpio/gpiolib.c | 97 ++++++++++++++++++++++++++------------------------
>  1 file changed, 51 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 6398268..d7aa094 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -32,20 +32,30 @@ static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
>  	return gpio_request(gpio, "gpio");
>  }
>  
> +static struct gpio_info *gpio_to_desc(unsigned gpio)
> +{
> +	if (!gpio_is_valid(gpio))
put the WARN too as we need to known a gpio_xxx is used on a non valid gpio
> +		return NULL;
> +
> +	if (!gpio_desc[gpio].chip)
> +		return NULL;
> +
> +	return &gpio_desc[gpio];
> +}
> +

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
