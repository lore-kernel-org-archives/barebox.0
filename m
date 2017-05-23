Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD2zg-0003ZK-PU
 for barebox@lists.infradead.org; Tue, 23 May 2017 06:08:34 +0000
Received: by mail-lf0-x230.google.com with SMTP id m18so42295279lfj.0
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 23:08:12 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <b28071c7-b945-49c8-715b-6b237e4e4c04@cogentembedded.com>
Date: Tue, 23 May 2017 09:08:09 +0300
MIME-Version: 1.0
In-Reply-To: <20170522152420.14443-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/4] gpio-imx: Do not use gpio_set_value()
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: cphealy@gmail.com

> Do not use gpio_set_value() in imx_gpio_direction_output() for two
> reasons:
> 
> 	- Since we don't check gpio_set_value's result, using it
>           instead of imx_gpio_set_value doesn't seem to have any
>           advantages
> 
> 	- Using gpiolib's function at this level makes it hard to
>           implement 'active low' support (commit that follows) since
>           gpio driver is dealing with physical GPIO levels, whereas
>           gpiolib is explected to accept logical levels.
> 
> As a remedy swithch imx_gpio_direction_output() to using
> imx_gpio_set_value().

I'd say calling back into subsystem from driver is generally invalid
pattern, and this patch fixes that.

Acked-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
