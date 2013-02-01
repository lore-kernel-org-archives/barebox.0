Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1L3V-0002Jb-Jv
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:09:42 +0000
Received: by mail-lb0-f169.google.com with SMTP id m4so4873461lbo.0
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2013 10:09:39 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130201081351.GK26329@game.jcrosoft.org>
References: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
 <1359668796-22835-4-git-send-email-antonynpavlov@gmail.com>
 <20130201081351.GK26329@game.jcrosoft.org>
Date: Fri, 1 Feb 2013 22:09:39 +0400
Message-ID: <CAA4bVAEDnY4JCr6OGYo4hY8o3n6DrZ6sRSHTVfX+VBq_L2v=ng@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/5] gpiolib: gpio_request(): add error message
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 1 February 2013 12:13, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> Nack the is need to handle by the caller not here

You want to get duplicated code? Ok, you will get in the "patch v3" series! :)))

>
> Best Regards,
> J.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  drivers/gpio/gpio.c |   29 ++++++++++++++++++++++-------
>>  1 file changed, 22 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
>> index 5876454..179fc7b 100644
>> --- a/drivers/gpio/gpio.c
>> +++ b/drivers/gpio/gpio.c
>> @@ -29,22 +29,37 @@ int gpio_request(unsigned gpio, const char *label)
>>       struct gpio_chip *chip = gi->chip;
>>       int ret;
>>
>> -     if (!gpio_is_valid(gpio))
>> -             return -EINVAL;
>> -     if (!chip)
>> -             return -EINVAL;
>> -     if (gi->requested)
>> -             return -EBUSY;
>> +     if (!gpio_is_valid(gpio)) {
>> +             ret = -EINVAL;
>> +             goto err;
>> +     }
>> +
>> +     if (!chip) {
>> +             ret = -EINVAL;
>> +             goto err;
>> +     }
>> +
>> +     if (gi->requested) {
>> +             ret = -EBUSY;
>> +             goto err;
>> +     }
>> +
>>       if (chip->ops->request) {
>>               ret = chip->ops->request(chip, gpio - chip->base);
>>               if (ret)
>> -                     return ret;
>> +                     goto err;
>>       }
>>
>>       gi->requested = true;
>>       gi->label = xstrdup(label);
>>
>>       return 0;
>> +
>> +err:
>> +     pr_err("can't request gpio %d as %s (%d)\n",
>> +             gpio, label, ret);
>> +
>> +     return ret;
>>  }
>>
>>  int gpio_request_input(unsigned gpio, const char *label)
>> --
>> 1.7.10.4
>>



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
