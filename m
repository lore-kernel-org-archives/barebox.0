Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot0-x244.google.com ([2607:f8b0:4003:c0f::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGps5-0000CA-KK
 for barebox@lists.infradead.org; Thu, 10 May 2018 18:00:55 +0000
Received: by mail-ot0-x244.google.com with SMTP id m11-v6so3300620otf.3
 for <barebox@lists.infradead.org>; Thu, 10 May 2018 11:00:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180510174959.14933-1-nikita.yoush@cogentembedded.com>
References: <20180510174959.14933-1-nikita.yoush@cogentembedded.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 10 May 2018 15:00:41 -0300
Message-ID: <CAOMZO5BZuq1RCY=834M7ENhJ9f+eEFYS6niW9trnYamX0YURuQ@mail.gmail.com>
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
Subject: Re: [PATCH] IMX gpio: use DR register to get gpio value
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>, Chris Healy <cphealy@gmail.com>, Sascha Hauer <sha@pengutronix.de>

Hi Nikita,

On Thu, May 10, 2018 at 2:49 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
> From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
>
> Reading PSR register report wrong value for pins
> configured as output.
> According DS: While the GPIO direction is set to input
> (GPIO_GDIR = 0), a read access to GPIO_DR does not return
> GPIO_DR data. Instead, it returns the GPIO_PSR data, which
> is the corresponding input signal value.
>
> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> ---
>  drivers/gpio/gpio-imx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index d8bcea223..a9d44d4e6 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -108,9 +108,9 @@ static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
>         void __iomem *base = imxgpio->base;
>         u32 val;
>
> -       val = readl(base + imxgpio->regs->psr);
> +       val = readl(base + imxgpio->regs->dr);

Current code is correct.

What you need to do when you want to be able to read a pin configured
as output is to set the SION bit on that pin.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
