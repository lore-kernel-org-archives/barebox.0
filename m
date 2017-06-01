Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGWnS-00084E-4S
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 20:34:19 +0000
Received: by mail-pf0-x243.google.com with SMTP id u26so8785978pfd.2
 for <barebox@lists.infradead.org>; Thu, 01 Jun 2017 13:33:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170601071934.oxscwirivn7c2a4b@pengutronix.de>
References: <20170530145228.18655-1-andrew.smirnov@gmail.com>
 <20170530145228.18655-3-andrew.smirnov@gmail.com>
 <20170601071934.oxscwirivn7c2a4b@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 1 Jun 2017 13:33:55 -0700
Message-ID: <CAHQ1cqFnvA3NuO0oDLuhD_O1Ro71tv0ZwdaEPdhb5NK=N6in4A@mail.gmail.com>
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
Subject: Re: [PATCH v2 2/4] gpiolib: Add code to support "active low" GPIOs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Thu, Jun 1, 2017 at 12:19 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, May 30, 2017 at 07:52:26AM -0700, Andrey Smirnov wrote:
>> So far this particular aspect of various DT-bindings has been handled
>> on a per-driver basis. With this change, hopefully, we'll have a
>> single place to handle necessary logic inversions and eventually
>> would be able to migrate existing users as well as avoiding adding
>> redundant code to new drivers.
>>
>> Cc: cphealy@gmail.com
>> Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/gpio/gpiolib.c | 42 ++++++++++++++++++++++++++++++++++++++++--
>>  include/gpio.h         | 20 ++++++++++++++++++++
>>  2 files changed, 60 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
>> index 1f57c76..36d8874 100644
>> --- a/drivers/gpio/gpiolib.c
>> +++ b/drivers/gpio/gpiolib.c
>> @@ -13,6 +13,7 @@ static LIST_HEAD(chip_list);
>>  struct gpio_info {
>>       struct gpio_chip *chip;
>>       bool requested;
>> +     bool active_low;
>>       char *label;
>>  };
>>
>> @@ -45,6 +46,15 @@ static struct gpio_info *gpio_to_desc(unsigned gpio)
>>       return NULL;
>>  }
>>
>> +static int gpio_adjust_value(struct gpio_info *gi,
>> +                          int value)
>> +{
>> +     if (value < 0)
>> +             return value;
>> +
>> +     return !!value ^ gi->active_low;
>> +}
>> +
>>  int gpio_request(unsigned gpio, const char *label)
>>  {
>>       struct gpio_info *gi = gpio_to_desc(gpio);
>> @@ -69,6 +79,7 @@ int gpio_request(unsigned gpio, const char *label)
>>       }
>>
>>       gi->requested = true;
>> +     gi->active_low = false;
>>       gi->label = xstrdup(label);
>>
>>  done:
>> @@ -93,6 +104,7 @@ void gpio_free(unsigned gpio)
>>               gi->chip->ops->free(gi->chip, gpio - gi->chip->base);
>>
>>       gi->requested = false;
>> +     gi->active_low = false;
>>       free(gi->label);
>>       gi->label = NULL;
>>  }
>> @@ -111,10 +123,15 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
>>       if (err)
>>               return err;
>>
>> +     if (flags & GPIOF_ACTIVE_LOW) {
>> +             struct gpio_info *gi = gpio_to_desc(gpio);
>> +             gi->active_low = true;
>> +     }
>> +
>>       if (flags & GPIOF_DIR_IN)
>>               err = gpio_direction_input(gpio);
>>       else
>> -             err = gpio_direction_output(gpio,
>> +             err = gpio_direction_active(gpio,
>>                               (flags & GPIOF_INIT_HIGH) ? 1 : 0);
>
> And here things get messy.
>
> For me 'high' and 'low' represent the physical values of a GPIO whereas
> "active" and "inactive" represent the logical values of a GPIO. The flag
> is named GPIOF_INIT_*HIGH*, not GPIOF_INIT_*ACTIVE*, which means a GPIO
> with this flag should get the physical 'high' value, not the logical
> 'active' value.
>
> They goofed the binding in the kernel, so I'm afraid there's nothing we
> can do about this :(

So do we want to:

a) Keep things as is in v2(I am assuming that is not really an option)
b) Improve the optics by introducing GPIOF_INIT_ACTIVE, but keeping
the behavior of hog nodes consistent with Linux kernel
c) Drop this particular chunk of code, not support keep using
gpio_direciton_output(), and print a warning when we encounter a hog
with 'active low' set
d) Drop active low API patch and handle that aspect inside of code of
the driver that needs it
e) Something else

?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
