Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7k9Z-000630-2Z
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 11:47:14 +0000
Received: by mail-lb0-f174.google.com with SMTP id c11so1614205lbj.19
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 04:46:48 -0700 (PDT)
Date: Thu, 17 Jul 2014 15:59:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140717155916.64f4883aa00804098683c222@gmail.com>
In-Reply-To: <53C79869.4010000@gmail.com>
References: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
 <1405545909-9855-2-git-send-email-antonynpavlov@gmail.com>
 <53C79869.4010000@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: add Marvell 64xxx driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, 17 Jul 2014 11:33:29 +0200
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:

> On 07/16/2014 11:25 PM, Antony Pavlov wrote:
> > This driver is also used for Allwinner SoCs I2C controllers.
> >
> > Ported from linux-3.15.
> >
> > The most notable barebox driver version changes:
> >
> >    * drop message offloading support;
> >    * add reg-io-width parameter to use driver with byte-oriented
> >      controller versions.
> >
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> [...]
> > diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-=
mv64xxx.c
> > new file mode 100644
> > index 0000000..324796a
> > --- /dev/null
> > +++ b/drivers/i2c/busses/i2c-mv64xxx.c
> > @@ -0,0 +1,687 @@
> > +/*
> > + * Driver for the i2c controller on the Marvell line of host bridges
> > + * (e.g, gt642[46]0, mv643[46]0, mv644[46]0, and Orion SoC family).
> > + *
> > + * This code was ported from linux-3.15 kernel by Antony Pavlov.
> > + *
> > + * Author: Mark A. Greer <mgreer@mvista.com>
> > + *
> > + * 2005 (c) MontaVista, Software, Inc.  This file is licensed under
> > + * the terms of the GNU General Public License version 2.  This program
> > + * is licensed "as is" without any warranty of any kind, whether expre=
ss
> > + * or implied.
> > + */
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <init.h>
> > +#include <of.h>
> > +#include <malloc.h>
> > +#include <types.h>
> > +#include <xfuncs.h>
> > +#include <clock.h>
> > +#include <linux/clk.h>
> > +#include <linux/err.h>
> > +
> > +#include <io.h>
> > +#include <i2c/i2c.h>
> > +#include <printk.h>
> > +
> > +#define MV64XXX_I2C_ADDR_ADDR(val)			((val & 0x7f) << 1)
> > +#define MV64XXX_I2C_BAUD_DIV_N(val)			(val & 0x7)
> > +#define MV64XXX_I2C_BAUD_DIV_M(val)			((val & 0xf) << 3)
> > +
> > +#define	MV64XXX_I2C_REG_CONTROL_ACK			0x00000004
> > +#define	MV64XXX_I2C_REG_CONTROL_IFLG			0x00000008
> > +#define	MV64XXX_I2C_REG_CONTROL_STOP			0x00000010
> > +#define	MV64XXX_I2C_REG_CONTROL_START			0x00000020
> > +#define	MV64XXX_I2C_REG_CONTROL_TWSIEN			0x00000040
> > +#define	MV64XXX_I2C_REG_CONTROL_INTEN			0x00000080
> =

> Antony,
> =

> I'll have a look at the driver itself later, but your patch is full
> of superfluous tabs like above between '#define' and 'MV64XXX_foo'.

I have kept original linux driver formatting.

Please see it with any interactive two panels diff tool (e.g. vimdiff):

   vimdiff barebox.git/drivers/i2c/busses/i2c-mv64xxx.c linux.git/drivers/i=
2c/busses/i2c-mv64xxx.c

> =

> Isn't checkpatch.pl complaining about it?

On the one hand I need to change all writel/readl to mv64xxx_write/mv64xxx_=
read, so
some lines become 'over 80 characters'.

But on the other hand I'm trying to keep formatting compatibility with orig=
inal linux driver;
I decided to keep original formatting even if lines become 'over 80 charact=
ers'.

Moreover Sascha said that there is no problem with 'line over 80 characters=
' warnings :)
see http://lists.infradead.org/pipermail/barebox/2014-June/019484.html


> Anyway, no need to resend before I have tested the driver itself.

 Great! The driver needs addition tests.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
