Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1LIw-0007GT-CD
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:25:39 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C3714FF8E60
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 19:39:49 +0100 (CET)
Date: Fri, 1 Feb 2013 19:24:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201182421.GA18068@game.jcrosoft.org>
References: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
 <1359668796-22835-4-git-send-email-antonynpavlov@gmail.com>
 <20130201081351.GK26329@game.jcrosoft.org>
 <CAA4bVAEDnY4JCr6OGYo4hY8o3n6DrZ6sRSHTVfX+VBq_L2v=ng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEDnY4JCr6OGYo4hY8o3n6DrZ6sRSHTVfX+VBq_L2v=ng@mail.gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 22:09 Fri 01 Feb     , Antony Pavlov wrote:
> On 1 February 2013 12:13, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > Nack the is need to handle by the caller not here
> 
> You want to get duplicated code? Ok, you will get in the "patch v3" series! :)))
this is not duplicated code the caller known the dev or the part of the code
that fault

and we do auto request which is silent or other par of the code report the
erroor at higher level to yet I do not want the generic API to print something

Best Regards,
J.
> 
> >
> > Best Regards,
> > J.
> >>
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >>  drivers/gpio/gpio.c |   29 ++++++++++++++++++++++-------
> >>  1 file changed, 22 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> >> index 5876454..179fc7b 100644
> >> --- a/drivers/gpio/gpio.c
> >> +++ b/drivers/gpio/gpio.c
> >> @@ -29,22 +29,37 @@ int gpio_request(unsigned gpio, const char *label)
> >>       struct gpio_chip *chip = gi->chip;
> >>       int ret;
> >>
> >> -     if (!gpio_is_valid(gpio))
> >> -             return -EINVAL;
> >> -     if (!chip)
> >> -             return -EINVAL;
> >> -     if (gi->requested)
> >> -             return -EBUSY;
> >> +     if (!gpio_is_valid(gpio)) {
> >> +             ret = -EINVAL;
> >> +             goto err;
> >> +     }
> >> +
> >> +     if (!chip) {
> >> +             ret = -EINVAL;
> >> +             goto err;
> >> +     }
> >> +
> >> +     if (gi->requested) {
> >> +             ret = -EBUSY;
> >> +             goto err;
> >> +     }
> >> +
> >>       if (chip->ops->request) {
> >>               ret = chip->ops->request(chip, gpio - chip->base);
> >>               if (ret)
> >> -                     return ret;
> >> +                     goto err;
> >>       }
> >>
> >>       gi->requested = true;
> >>       gi->label = xstrdup(label);
> >>
> >>       return 0;
> >> +
> >> +err:
> >> +     pr_err("can't request gpio %d as %s (%d)\n",
> >> +             gpio, label, ret);
> >> +
> >> +     return ret;
> >>  }
> >>
> >>  int gpio_request_input(unsigned gpio, const char *label)
> >> --
> >> 1.7.10.4
> >>
> 
> 
> 
> -- 
> Best regards,
>   Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
