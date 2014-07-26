Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAxDO-0007yq-1O
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 08:20:28 +0000
Received: by mail-wg0-f48.google.com with SMTP id x13so5147352wgg.19
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 01:20:00 -0700 (PDT)
Message-ID: <53D364AD.1040002@gmail.com>
Date: Sat, 26 Jul 2014 10:19:57 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406333464-16863-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406333464-16863-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] led: try to get LED's label from the 'label' property
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org

On 07/26/2014 02:11 AM, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/led/led-gpio.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index 7bb3b49..31ae627 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
>  			continue;
>  
>  		gled = xzalloc(sizeof(*gled));
> -		gled->led.name = xstrdup(child->name);
> +		gled->led.name = of_get_property(child, "label", NULL);

IIRC, back the days this was introduced, there was no "label" property.

Anyway, of_get_property gives you the reference to something that can
change, i.e. if you remove/modify the corresponding node or property
you'll end up with a gleg->led.name pointing to something old or gone.

Sebastian

> +		if (!gled->led.name)
> +			gled->led.name = xstrdup(child->name);
>  		gled->gpio = gpio;
>  		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
>  
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
