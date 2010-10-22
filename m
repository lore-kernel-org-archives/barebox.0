Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9BnF-0005jQ-Ne
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 07:12:03 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 09:11:41 +0200
References: <201010181843.39263.jbe@pengutronix.de>
	<20101021200902.GB22139@pengutronix.de>
In-Reply-To: <20101021200902.GB22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010220911.41518.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Add GPIO support and GPIO setup features to the S3C
	processors
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> On Mon, Oct 18, 2010 at 06:43:39PM +0200, Juergen Beisert wrote:
> > From: Juergen Beisert <juergen@kreuzholzen.de>
> > Subject: Add GPIO support and GPIO setup features to the S3C processors
> >
> > This patch adds genetic GPIO support to all S3C2440 processor based
> > systems. Also it adds definitions to setup the pin multiplexer in a way
> > the other architectures do.
> >
> > Note: Tested on a S3C2440 based system only. But should work on an
> > S3C2410, too.
> >
> > Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
> >
> > ---
> >  arch/arm/Kconfig                                   |    1
> >  arch/arm/mach-s3c24xx/Makefile                     |    2
> >  arch/arm/mach-s3c24xx/gpio-s3c24x0.c               |  170 ++++++++
> >  arch/arm/mach-s3c24xx/include/mach/gpio.h          |   31 +
> >  arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h |  426
> > +++++++++++++++++++++ 5 files changed, 629 insertions(+), 1 deletion(-)
> >
> > Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> > ===================================================================
> > --- /dev/null
> > +++ barebox-2010.10.0/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> > @@ -0,0 +1,170 @@
> > +/*
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +#include <common.h>
> > +#include <errno.h>
> > +#include <asm/io.h>
> > +#include <mach/s3c24x0-iomap.h>
> > +#include <mach/gpio.h>
> > +
> > +static const unsigned char group_offset[] =
> > +{
> > +	0x00,	/* GPA */
> > +	0x10,	/* GPB */
> > +	0x20,	/* GPC */
> > +	0x30,	/* GPD */
> > +	0x40,	/* GPE */
> > +	0x50,	/* GPF */
> > +	0x60,	/* GPG */
> > +	0x70,	/* GPH */
> > +#ifdef CONFIG_CPU_S3C2440
> > +	0xd0,	/* GPJ */
> > +#endif
> > +};
> > +
> > +void gpio_set_value(unsigned gpio, int value)
> > +{
> > +	unsigned group = gpio >> 5;
> > +	unsigned bit = gpio % 32;
> > +	unsigned offset;
> > +	uint32_t reg;
> > +
> > +	offset = group_offset[group];
> > +
> > +	reg = readl(GPADAT + offset);
> > +	reg &= ~(1 << bit);
> > +	reg |= (!!value) << bit;
> > +	writel(reg, GPADAT + offset);
> > +}
> > +
> > +int gpio_direction_input(unsigned gpio)
> > +{
> > +	unsigned group = gpio >> 5;
> > +	unsigned bit = gpio % 32;
> > +	unsigned offset;
> > +	uint32_t reg;
> > +
> > +	offset = group_offset[group];
> > +
> > +	reg = readl(GPACON + offset);
> > +	reg &= ~(0x3 << (bit << 1));
> > +	writel(reg, GPACON + offset);
> > +
> > +	return 0;
> > +}
> > +
> > +
> > +int gpio_direction_output(unsigned gpio, int value)
> > +{
> > +	unsigned group = gpio >> 5;
> > +	unsigned bit = gpio % 32;
> > +	unsigned offset;
> > +	uint32_t reg;
> > +
> > +	offset = group_offset[group];
> > +
> > +	/* value */
> > +	reg = readl(GPADAT + offset);
> > +	reg &= ~(1 << bit);
> > +	reg |= (!!value) << bit;
> > +	writel(reg, GPADAT + offset);
>
> You can call gpio_set_value here.

Hmm, right. Will change it.

> > +
> > +	/* direction */
> > +	if (group == 0) {	/* GPA is special */
> > +		reg = readl(GPACON);
> > +		reg &= ~(1 << bit);
> > +		writel(reg, GPACON);
> > +	} else {
>
> gpio_direction_input does not have this special handling. Is this
> correct?

The GPA pin group can only be GPIO outputs *or* their native feature enabled 
(addressbus lines for example). But you are right, I should catch this error 
if someone tries to read from a GPA group pin.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
