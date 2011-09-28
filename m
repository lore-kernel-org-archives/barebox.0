Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8ssl-0001C5-3J
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 12:04:59 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 28 Sep 2011 14:04:55 +0200
References: <201109281208.11561.jbe@pengutronix.de>
	<201109281212.10811.jbe@pengutronix.de>
	<20110928115316.GX31404@pengutronix.de>
In-Reply-To: <20110928115316.GX31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201109281404.56132.jbe@pengutronix.de>
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
Subject: Re: [PATCH] S3C24xx/GPIO: Fix compile time warning
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Wed, Sep 28, 2011 at 12:12:10PM +0200, Juergen Beisert wrote:
> > Without this patch the compiler spits a warning:
> >
> > arch/arm/mach-s3c24xx/gpio-s3c24x0.c: In function 'gpio_is_valid':
> > arch/arm/mach-s3c24xx/gpio-s3c24x0.c:176:11: warning: unused variable
> > 'reg' arch/arm/mach-s3c24xx/gpio-s3c24x0.c:174:11: warning: unused
> > variable 'bit'
> >
> > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> >
> > ---
> >  arch/arm/mach-s3c24xx/gpio-s3c24x0.c |    2 --
> >  1 file changed, 2 deletions(-)
> >
> > Index: barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> > ===================================================================
> > --- barebox-git.orig/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> > +++ barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> > @@ -170,9 +170,7 @@ void s3c_gpio_mode(unsigned gpio_mode)
> >  int gpio_is_valid(int gpio)
> >  {
> >  	unsigned group = gpio >> 5;
> > -	unsigned bit = gpio % 32;
> >  	unsigned offset;
> > -	uint32_t reg;
>
> Both patches do not apply. We do not have a gpio_is_valid() function
> in this file.

Arrghh, you are right. /me should use the correct branch...

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
