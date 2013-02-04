Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2HZ2-00014R-07
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 08:38:09 +0000
Date: Mon, 4 Feb 2013 09:37:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204083759.GB1906@pengutronix.de>
References: <1359918977-1932-1-git-send-email-antonynpavlov@gmail.com>
 <20130203211352.GH18068@game.jcrosoft.org>
 <CAA4bVAGyMJN4ML0xjotrcEtKyVExxmOiZjzodhxCspuwECcZZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGyMJN4ML0xjotrcEtKyVExxmOiZjzodhxCspuwECcZZw@mail.gmail.com>
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
Subject: Re: [RFC] gpiolib: import gpio_request_array() from linux 3.7
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 04, 2013 at 01:22:39AM +0400, Antony Pavlov wrote:
> On 4 February 2013 01:13, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 23:16 Sun 03 Feb     , Antony Pavlov wrote:
> >> Also import related functions gpio_request_one() and
> >> gpio_free_array().
> >>
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >>  drivers/gpio/gpio.c |   66 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >>  include/gpio.h      |   43 +++++++++++++++++++++++++++++++++
> >>  2 files changed, 109 insertions(+)
> >>
> >> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> >> index d37f5a0..631168d 100644
> >> --- a/drivers/gpio/gpio.c
> >> +++ b/drivers/gpio/gpio.c
> >> @@ -65,6 +65,72 @@ void gpio_free(unsigned gpio)
> >>       free(gi->label);
> >>  }
> >>
> >> +/**
> >> + * gpio_request_one - request a single GPIO with initial configuration
> >> + * @gpio:    the GPIO number
> >> + * @flags:   GPIO configuration as specified by GPIOF_*
> >> + * @label:   a literal description string of this GPIO
> >> + */
> >> +int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
> >> +{
> >> +     int err;
> >> +
> >> +     err = gpio_request(gpio, label);
> >> +     if (err)
> >> +             return err;
> >> +
> >> +     if (flags & GPIOF_DIR_IN)
> >> +             err = gpio_direction_input(gpio);
> >> +     else
> >> +             err = gpio_direction_output(gpio,
> >> +                             (flags & GPIOF_INIT_HIGH) ? 1 : 0);
> >> +
> >> +     if (err)
> >> +             goto free_gpio;
> >> +
> >> +     return 0;
> >> +
> >> +free_gpio:
> >> +     gpio_free(gpio);
> >> +     return err;
> >> +}
> >> +EXPORT_SYMBOL(gpio_request_one);
> >> +
> >> +/**
> >> + * gpio_request_array - request multiple GPIOs in a single call
> >> + * @array:   array of the 'struct gpio'
> >> + * @num:     how many GPIOs in the array
> >> + */
> >> +int gpio_request_array(const struct gpio *array, size_t num)
> >> +{
> >> +     int i, err;
> >> +
> >> +     for (i = 0; i < num; i++, array++) {
> >> +             err = gpio_request_one(array->gpio, array->flags, array->label);
> >> +             if (err)
> >> +                     goto err_free;
> >> +     }
> >> +     return 0;
> >> +
> >> +err_free:
> >> +     while (i--)
> >> +             gpio_free((--array)->gpio);
> >> +     return err;
> >> +}
> >> +EXPORT_SYMBOL(gpio_request_array);
> >> +
> >> +/**
> >> + * gpio_free_array - release multiple GPIOs in a single call
> >> + * @array:   array of the 'struct gpio'
> >> + * @num:     how many GPIOs in the array
> >> + */
> >> +void gpio_free_array(const struct gpio *array, size_t num)
> >> +{
> >> +     while (num--)
> >> +             gpio_free((array++)->gpio);
> >> +}
> >> +EXPORT_SYMBOL(gpio_free_array);
> >> +
> >>  void gpio_set_value(unsigned gpio, int value)
> >>  {
> >>       struct gpio_info *gi = &gpio_desc[gpio];
> >> diff --git a/include/gpio.h b/include/gpio.h
> >> index eedb980..37c151d 100644
> >> --- a/include/gpio.h
> >> +++ b/include/gpio.h
> >> @@ -3,6 +3,29 @@
> >>
> >>  #include <asm/gpio.h>
> >>
> >> +/* make these flag values available regardless of GPIO kconfig options */
> >> +#define GPIOF_DIR_OUT        (0 << 0)
> >> +#define GPIOF_DIR_IN (1 << 0)
> >> +
> >> +#define GPIOF_INIT_LOW       (0 << 1)
> >> +#define GPIOF_INIT_HIGH      (1 << 1)
> >> +
> >> +#define GPIOF_IN             (GPIOF_DIR_IN)
> >> +#define GPIOF_OUT_INIT_LOW   (GPIOF_DIR_OUT | GPIOF_INIT_LOW)
> >> +#define GPIOF_OUT_INIT_HIGH  (GPIOF_DIR_OUT | GPIOF_INIT_HIGH)
> >> +
> >> +/**
> >> + * struct gpio - a structure describing a GPIO with configuration
> >> + * @gpio:    the GPIO number
> >> + * @flags:   GPIO configuration as specified by GPIOF_*
> >> + * @label:   a literal description string of this GPIO
> >> + */
> >> +struct gpio {
> >> +     unsigned        gpio;
> >> +     unsigned long   flags;
> >> +     const char      *label;
> >> +};
> >> +
> >>  #ifndef CONFIG_GPIOLIB
> >>  static inline int gpio_request(unsigned gpio, const char *label)
> >>  {
> >> @@ -12,9 +35,29 @@ static inline int gpio_request(unsigned gpio, const char *label)
> >>  static inline void gpio_free(unsigned gpio)
> >>  {
> >>  }
> >> +
> >> +static inline int gpio_request_one(unsigned gpio,
> >> +                                     unsigned long flags, const char *label)
> >> +{
> >> +     return 0;
> >> +}
> >> +
> >> +static inline int gpio_request_array(const struct gpio *array, size_t num)
> >> +{
> >> +     return 0;
> >> +}
> > you can not do this
> >
> > as if we start to use this in generic driver where gpio_direction_input/output
> > work
> >
> > we will endup with no configuration
> 
> But now in include/gpio.h we have this:
> 
> static inline int gpio_request(unsigned gpio, const char *label)
> {
>     return 0;
> }
> 
> Can you explain the difference?

gpio_request is not implemented without gpiolib, still you have to
configure the direction and value.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
