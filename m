Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from la-in-x0229.1e100.net ([2a00:1450:4010:c03::229]
 helo=mail-la0-x229.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1MD7-0007N2-Sg
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 19:23:42 +0000
Received: by mail-la0-f41.google.com with SMTP id fo12so3129586lab.0
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2013 11:23:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130201182607.GB18068@game.jcrosoft.org>
References: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
 <1359742941-30516-3-git-send-email-antonynpavlov@gmail.com>
 <20130201182607.GB18068@game.jcrosoft.org>
Date: Fri, 1 Feb 2013 23:23:38 +0400
Message-ID: <CAA4bVAFxGFtfb_eud8UP5nwdEnLOj1bcp2fHAXiUsfxt6=QgPQ@mail.gmail.com>
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
Subject: Re: [PATCH v3 2/4] gpiolib: add gpio_request_{in,out}put support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

I just examined http://www.kernel.org/doc/Documentation/gpio.txt

I think, that I can drop my "homegrown" gpio_direction_{in,out}put functions
in favour of gpio_request_one() and int gpio_request_array() functions.

On 1 February 2013 22:26, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 22:22 Fri 01 Feb     , Antony Pavlov wrote:
>> gpio_request() followed by gpio_direction_{in,out}put
>> is a gpio usage pattern (e.g. the similar functions
>> are used in a ARM boards code).
> NACK again
>
> NO PRINT ERROR in generic code
>
> this MUST be handled by the board code
>
> I DO wand duplicated code
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  drivers/gpio/gpio.c |   40 ++++++++++++++++++++++++++++++++++++++++
>>  include/gpio.h      |   13 +++++++++++++
>>  2 files changed, 53 insertions(+)
>>
>> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
>> index d37f5a0..c0c66ae 100644
>> --- a/drivers/gpio/gpio.c
>> +++ b/drivers/gpio/gpio.c
>> @@ -47,6 +47,46 @@ int gpio_request(unsigned gpio, const char *label)
>>       return 0;
>>  }
>>
>> +int gpio_request_input(unsigned gpio, const char *label)
>> +{
>> +     int ret;
>> +
>> +     ret = gpio_request(gpio, label);
>> +     if (ret) {
>> +             pr_err("can't request gpio %d as %s (%d)\n",
>> +                     gpio, label, ret);
>> +             return ret;
>> +     }
>> +
>> +     ret = gpio_direction_input(gpio);
>> +     if (ret) {
>> +             pr_err("can't configure gpio %d (%s) as input (%d)\n",
>> +                     gpio, label, ret);
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>> +int gpio_request_output(unsigned gpio, const char *label, int value)
>> +{
>> +     int ret;
>> +
>> +     ret = gpio_request(gpio, label);
>> +     if (ret) {
>> +             pr_err("can't request gpio %d as %s (%d)\n",
>> +                     gpio, label, ret);
>> +             return ret;
>> +     }
>> +
>> +     ret = gpio_direction_output(gpio, value);
>> +     if (ret) {
>> +             pr_err("can't configure gpio %d (%s) as output (%d)\n",
>> +                     gpio, label, ret);
>> +     }
>> +
>> +     return ret;
>> +}
>> +
>>  void gpio_free(unsigned gpio)
>>  {
>>       struct gpio_info *gi = &gpio_desc[gpio];
>> diff --git a/include/gpio.h b/include/gpio.h
>> index 794d959..309c1c5 100644
>> --- a/include/gpio.h
>> +++ b/include/gpio.h
>> @@ -9,11 +9,24 @@ static inline int gpio_request(unsigned gpio, const char *label)
>>       return 0;
>>  }
>>
>> +static inline int gpio_request_input(unsigned gpio, const char *label)
>> +{
>> +     return 0;
>> +}
>> +
>> +static inline int gpio_request_output(unsigned gpio, const char *label,
>> +             int value)
>> +{
>> +     return 0;
>> +}
>> +
>>  static inline void gpio_free(unsigned gpio)
>>  {
>>  }
>>  #else
>>  int gpio_request(unsigned gpio, const char *label);
>> +int gpio_request_input(unsigned gpio, const char *label);
>> +int gpio_request_output(unsigned gpio, const char *label, int value);
>>  void gpio_free(unsigned gpio);
>>  #endif
>>
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
