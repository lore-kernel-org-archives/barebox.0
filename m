Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVGi-0007N4-2G
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:25:29 +0000
Date: Mon, 9 Jan 2017 09:25:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109082506.crcamszk2j2aeqez@pengutronix.de>
References: <1482995146-19535-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1482995146-19535-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH RESEND] gpio: gpio-74164: Add 74lvc594 ID
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Dec 29, 2016 at 10:05:45AM +0300, Alexander Shiyan wrote:
> The latest kernel gpio-74x164 driver supports 74LVC594 IC ID.
> Patch adds such ID to barebox driver.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---

Applied, thanks

Sascha

>  drivers/gpio/gpio-74164.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
> index 926207a..e4d413b 100644
> --- a/drivers/gpio/gpio-74164.c
> +++ b/drivers/gpio/gpio-74164.c
> @@ -92,6 +92,7 @@ static struct gpio_ops gpio_74164_ops = {
>  
>  static struct platform_device_id gpio_74164_ids[] = {
>  	{ "74hc164" },
> +	{ "74lvc594" },
>  	{ "74hc595" },
>  	{ }
>  };
> -- 
> 2.4.9
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
