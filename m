Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfmXG-0007h4-34
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 08:07:50 +0000
Date: Mon, 11 Nov 2013 09:07:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111080727.GD24559@pengutronix.de>
References: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1384003450-21001-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20131111013019.GA16967@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131111013019.GA16967@x61s.Speedport_W_921V_1_24_000>
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
Subject: Re: [PATCH 3/4] gpiolib: make gpiolib command more verbose
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 11, 2013 at 02:30:20AM +0100, Alexander Aring wrote:
> Hi Sebastian,
> 
> On Sat, Nov 09, 2013 at 02:24:08PM +0100, Sebastian Hesselbarth wrote:
> > This adds some more printf information to gpiolib command, like the
> > gpiochip handling a specific gpio. Also, current direction and value
> > of the gpio are printed, if the gpiochip provides the corresponding
> > callbacks.
> > 
> > Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > ---
> > Cc: barebox@lists.infradead.org
> > ---
> >  drivers/gpio/gpiolib.c | 24 +++++++++++++++++++++---
> >  1 file changed, 21 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index ca6e8ad..c12ebe6 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -228,16 +228,34 @@ static int do_gpiolib(int argc, char *argv[])
> >  	int i;
> >  
> >  	printf("gpiolib: gpio lists\n");
> > -	printf("%*crequested  label\n", 11, ' ');
> >  
> >  	for (i = 0; i < ARCH_NR_GPIOS; i++) {
> >  		struct gpio_info *gi = &gpio_desc[i];
> > +		int val = -1, dir = -1;
> >  
> >  		if (!gi->chip)
> >  			continue;
> >  
> > -		printf("gpio %*d: %*s  %s\n", 4,
> > -			i, 9, gi->requested ? "true" : "false",
> > +		/* print chip information and header on first gpio */
> > +		if (gi->chip->base == i) {
> > +			printf("\ngpios %u-%u, chip %s:\n",
> > +				gi->chip->base,
> > +				gi->chip->base + gi->chip->ngpio,
> 
> I think this should be "gi->chip->base + gi->chip->ngpio - 1", because
> we starting at zero on base.

Indeed. Otherwise I get the following for my 32bit gpio bank:

gpios 0-31, chip 209c000.gpio:
             dir val requested  label
  gpio    0: unk  lo     false  
  gpio    1: unk  lo     false  
...

Fixed this while applying.

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
