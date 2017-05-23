Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD3gL-0003B1-61
 for barebox@lists.infradead.org; Tue, 23 May 2017 06:52:38 +0000
Received: by mail-lf0-x232.google.com with SMTP id a5so29263341lfh.2
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 23:52:16 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-3-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <46762e56-b2a0-4afd-6967-99b36af1e6fb@cogentembedded.com>
Date: Tue, 23 May 2017 09:52:13 +0300
MIME-Version: 1.0
In-Reply-To: <20170522152420.14443-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/4] gpiolib: Add support for GPIO "hog" nodes
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: cphealy@gmail.com

> +	ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
> +	if (ret)
> +		return ret;
> +
> +	if (WARN_ON(gpio_cells != 2))
> +		return -ENOTSUPP;
> +
> +	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
> +					 &gpio_num);
> +	if (ret)
> +		return ret;
> +
> +	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
> +					 &gpio_flags);
> +	if (ret)
> +		return ret;

Doesn't this hardcode interpretation of device tree words in gpio
specification - while this is intended to be gpio-provider specific and
that's why #gpio-cells exist?


> +static int of_gpiochip_scan_gpios(struct gpio_chip *chip)

Not best choice of name for routine that scans hogs?

(although I understand that it comes from linux counterpart)

> -	return 0;
> +	return of_gpiochip_scan_gpios(chip);

Should we fail gpiochip registration on failure to claim hogs?
I don't know.

Nikita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
