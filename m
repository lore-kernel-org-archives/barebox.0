Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f345.mail.ru ([217.69.140.241])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ub7Rp-0001MD-Mq
 for barebox@lists.infradead.org; Sat, 11 May 2013 10:54:43 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 11 May 2013 14:54:16 +0400
Message-ID: <1368269656.44400096@f345.mail.ru>
In-Reply-To: <20130510141240.GD19265@game.jcrosoft.org>
References: <1368194658-2961-1-git-send-email-shc_work@mail.ru>
 <20130510141240.GD19265@game.jcrosoft.org>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gR1BJTzogQWRkIGdwaW9fdG9fZGVzYyBoZWxwZXI=?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> On 18:04 Fri 10 May     , Alexander Shiyan wrote:
> > Patch adds gpio_to_desc helper for validate GPIO.
> > A bit optimization is performed (about -250 bytes on ARM).
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/gpio/gpiolib.c | 97 ++++++++++++++++++++++++++------------------------
> >  1 file changed, 51 insertions(+), 46 deletions(-)
> > 
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index 6398268..d7aa094 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -32,20 +32,30 @@ static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
> >  	return gpio_request(gpio, "gpio");
> >  }
> >  
> > +static struct gpio_info *gpio_to_desc(unsigned gpio)
> > +{
> > +	if (!gpio_is_valid(gpio))
> put the WARN too as we need to known a gpio_xxx is used on a non valid gpio

Original bb code does not contain any warnings here. So if it really
necessary it can be added later.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
