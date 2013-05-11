Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f336.mail.ru ([217.69.140.232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbB4t-0003Nr-6e
 for barebox@lists.infradead.org; Sat, 11 May 2013 14:47:16 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 11 May 2013 18:46:48 +0400
Message-ID: <1368283608.730392767@f336.mail.ru>
In-Reply-To: <20130511143817.GF19265@game.jcrosoft.org>
References: <1368194658-2961-1-git-send-email-shc_work@mail.ru>
 <1368273956.326411741@f386.i.mail.ru>
 <20130511143817.GF19265@game.jcrosoft.org>
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

> > > > > On 18:04 Fri 10 May     , Alexander Shiyan wrote:
> > > > > > Patch adds gpio_to_desc helper for validate GPIO.
> > > > > > A bit optimization is performed (about -250 bytes on ARM).
> > > > > > 
> > > > > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > > > > ---
> > > > > >  drivers/gpio/gpiolib.c | 97 ++++++++++++++++++++++++++------------------------
> > > > > >  1 file changed, 51 insertions(+), 46 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > > > > > index 6398268..d7aa094 100644
> > > > > > --- a/drivers/gpio/gpiolib.c
> > > > > > +++ b/drivers/gpio/gpiolib.c
> > > > > > @@ -32,20 +32,30 @@ static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
> > > > > >  	return gpio_request(gpio, "gpio");
> > > > > >  }
> > > > > >  
> > > > > > +static struct gpio_info *gpio_to_desc(unsigned gpio)
> > > > > > +{
> > > > > > +	if (!gpio_is_valid(gpio))
> > > > > put the WARN too as we need to known a gpio_xxx is used on a non valid gpio
> > > > 
> > > > Original bb code does not contain any warnings here. So if it really
> > > > necessary it can be added later.
> > > 
> > > put it as we keep the code inline with the kernel a key point for sync
> > 
> > And this warning avoid my second patch to remove checks when we are
> > call gpio_free/set/get etc... with non existent (optional) gpios.
> 
> yes as this patch break the compatibility with the kernel sorry NACK on it
> 
> > I strongly do not want to add it.
> 
> if you can gpio_xxx with an invalid gpio it's wrong
> and as we keep the same API as in linux we need to WARN
> as you DO need to check the gpio is valid before calling the gpio lib
> 
> we keep api in sync to simplify maintainance between barebox and the kernel

I prefer to add one warning to gpio_request only. It can be useful for debug
and not annoy if gpio is really is optional. OK?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
