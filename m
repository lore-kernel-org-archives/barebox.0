Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDJB7-0006cp-NN
 for barebox@lists.infradead.org; Tue, 23 May 2017 23:25:27 +0000
Received: by mail-pf0-x242.google.com with SMTP id n23so30476833pfb.3
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 16:25:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <46762e56-b2a0-4afd-6967-99b36af1e6fb@cogentembedded.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-3-andrew.smirnov@gmail.com>
 <46762e56-b2a0-4afd-6967-99b36af1e6fb@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 16:25:03 -0700
Message-ID: <CAHQ1cqE+CmNAAFcwvHZ6KLR0h=7X6GNV_8gYx0HbwcwNf65x3A@mail.gmail.com>
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
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Sascha Hauer <kernel@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, May 22, 2017 at 11:52 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>> +     ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
>> +     if (ret)
>> +             return ret;
>> +
>> +     if (WARN_ON(gpio_cells != 2))
>> +             return -ENOTSUPP;
>> +
>> +     ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
>> +                                      &gpio_num);
>> +     if (ret)
>> +             return ret;
>> +
>> +     ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
>> +                                      &gpio_flags);
>> +     if (ret)
>> +             return ret;
>
> Doesn't this hardcode interpretation of device tree words in gpio
> specification - while this is intended to be gpio-provider specific and
> that's why #gpio-cells exist?
>

It does and yes that's my understanding of the purpose of #gpio-cells
as well. The reason I did in such a primitive way was because
Barebox's GPIO subsystem doesn't have any translation plumbing to be
able to handle anything more than a simple one dimensional offset.
Given the fact that of_get_named_gpio_flags() make similar assumption
I thought that there are no real consumers of that functionality and
left proper implementation as a future improvement that can be made
once the need arises.

>
>> +static int of_gpiochip_scan_gpios(struct gpio_chip *chip)
>
> Not best choice of name for routine that scans hogs?
>
> (although I understand that it comes from linux counterpart)
>

Eh, I don't have any strong opinion on this one, I am more than happy
to rename it if you think there are better alternatives.

>> -     return 0;
>> +     return of_gpiochip_scan_gpios(chip);
>
> Should we fail gpiochip registration on failure to claim hogs?
> I don't know.

I couldn't think of a use-case where it wasn't basically all or
nothing: either I get everything working or I need to go back and fix
my DT. Sascha, do you have an opinion on this one?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
