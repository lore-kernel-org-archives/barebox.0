Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f345.mail.ru ([217.69.140.241])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UanFP-0006Qi-Ev
 for barebox@lists.infradead.org; Fri, 10 May 2013 13:20:34 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 10 May 2013 17:20:06 +0400
Message-ID: <1368192006.902657520@f345.mail.ru>
In-Reply-To: <20130510124125.GC19265@game.jcrosoft.org>
References: <1368170834-28657-1-git-send-email-shc_work@mail.ru>
 <20130510124125.GC19265@game.jcrosoft.org>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzJdIEdQSU86IENoZWNrIGZvciAiZ3Bpb19pc192?=
 =?UTF-8?B?YWxpZCIgZmlyc3Q=?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> HI,
> 
> 	do as in linux
> 
> 	introduce
> 
> 	static struct gpio_desc *gpio_to_desc(unsigned gpio)
> 
> 	and we need to check the gpio is valid before calling _free/ser/get
> 	etc..

Indeed.

> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/gpio/gpiolib.c | 181 ++++++++++++++++++++++++++-----------------------
> >  1 file changed, 95 insertions(+), 86 deletions(-)
> > 
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index 6398268..1662dcd 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -34,117 +34,126 @@ static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
> >  
> >  int gpio_request(unsigned gpio, const char *label)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -	int ret;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return -EINVAL;
> > -	if (!chip)
> > -		return -EINVAL;
> > -	if (gi->requested)
> > -		return -EBUSY;
> > -	if (chip->ops->request) {
> > -		ret = chip->ops->request(chip, gpio - chip->base);
> > -		if (ret)
> > -			return ret;
> > -	}
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +		int ret;
> > +
> > +		if (!chip)
> > +			return -EINVAL;
> > +		if (gi->requested)
> > +			return -EBUSY;
> > +		if (chip->ops->request) {
> > +			ret = chip->ops->request(chip, gpio - chip->base);
> > +			if (ret)
> > +				return ret;
> > +		}
> >  
> > -	gi->requested = true;
> > -	gi->label = xstrdup(label);
> > +		gi->requested = true;
> > +		gi->label = xstrdup(label);
> >  
> > -	return 0;
> > +		return 0;
> > +	}
> > +
> > +	return -EINVAL;
> >  }
> >  
> >  void gpio_free(unsigned gpio)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return;
> > -	if (!chip)
> > -		return;
> > -	if (!gi->requested)
> > -		return;
> > -	if (chip->ops->free)
> > -		chip->ops->free(chip, gpio - chip->base);
> > -
> > -	gi->requested = false;
> > -	free(gi->label);
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +
> > +		if (!chip)
> > +			return;
> > +		if (!gi->requested)
> > +			return;
> > +		if (chip->ops->free)
> > +			chip->ops->free(chip, gpio - chip->base);
> > +
> > +		gi->requested = false;
> > +		free(gi->label);
> > +	}
> >  }
> >  
> >  void gpio_set_value(unsigned gpio, int value)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return;
> > -	if (!chip)
> > -		return;
> > -	if (gpio_ensure_requested(gi, gpio))
> > -		return;
> > -	if (!chip->ops->set)
> > -		return;
> > -	chip->ops->set(chip, gpio - chip->base, value);
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +
> > +		if (!chip)
> > +			return;
> > +		if (gpio_ensure_requested(gi, gpio))
> > +			return;
> > +		if (!chip->ops->set)
> > +			return;
> > +		chip->ops->set(chip, gpio - chip->base, value);
> > +	}
> >  }
> >  EXPORT_SYMBOL(gpio_set_value);
> >  
> >  int gpio_get_value(unsigned gpio)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -	int ret;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return -EINVAL;
> > -	if (!chip)
> > -		return -ENODEV;
> > -	ret = gpio_ensure_requested(gi, gpio);
> > -	if (ret)
> > -		return ret;
> > -	if (!chip->ops->get)
> > -		return -ENOSYS;
> > -	return chip->ops->get(chip, gpio - chip->base);
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +		int ret;
> > +
> > +		if (!chip)
> > +			return -ENODEV;
> > +		ret = gpio_ensure_requested(gi, gpio);
> > +		if (ret)
> > +			return ret;
> > +		if (!chip->ops->get)
> > +			return -ENOSYS;
> > +		return chip->ops->get(chip, gpio - chip->base);
> > +	}
> > +
> > +	return -EINVAL;
> >  }
> >  EXPORT_SYMBOL(gpio_get_value);
> >  
> >  int gpio_direction_output(unsigned gpio, int value)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -	int ret;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return -EINVAL;
> > -	if (!chip)
> > -		return -ENODEV;
> > -	ret = gpio_ensure_requested(gi, gpio);
> > -	if (ret)
> > -		return ret;
> > -	if (!chip->ops->direction_output)
> > -		return -ENOSYS;
> > -	return chip->ops->direction_output(chip, gpio - chip->base, value);
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +		int ret;
> > +
> > +		if (!chip)
> > +			return -ENODEV;
> > +		ret = gpio_ensure_requested(gi, gpio);
> > +		if (ret)
> > +			return ret;
> > +		if (!chip->ops->direction_output)
> > +			return -ENOSYS;
> > +		return chip->ops->direction_output(chip, gpio - chip->base,
> > +						   value);
> > +	}
> > +
> > +	return -EINVAL;
> >  }
> >  EXPORT_SYMBOL(gpio_direction_output);
> >  
> >  int gpio_direction_input(unsigned gpio)
> >  {
> > -	struct gpio_info *gi = &gpio_desc[gpio];
> > -	struct gpio_chip *chip = gi->chip;
> > -	int ret;
> > -
> > -	if (!gpio_is_valid(gpio))
> > -		return -EINVAL;
> > -	if (!chip)
> > -		return -ENODEV;
> > -	ret = gpio_ensure_requested(gi, gpio);
> > -	if (ret)
> > -		return ret;
> > -	if (!chip->ops->direction_input)
> > -		return -ENOSYS;
> > -	return chip->ops->direction_input(chip, gpio - chip->base);
> > +	if (gpio_is_valid(gpio)) {
> > +		struct gpio_info *gi = &gpio_desc[gpio];
> > +		struct gpio_chip *chip = gi->chip;
> > +		int ret;
> > +
> > +		if (!chip)
> > +			return -ENODEV;
> > +		ret = gpio_ensure_requested(gi, gpio);
> > +		if (ret)
> > +			return ret;
> > +		if (!chip->ops->direction_input)
> > +			return -ENOSYS;
> > +		return chip->ops->direction_input(chip, gpio - chip->base);
> > +	}
> > +
> > +	return -EINVAL;
> >  }
> >  EXPORT_SYMBOL(gpio_direction_input);

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
