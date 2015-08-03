Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMBvQ-0007rb-1q
 for barebox@lists.infradead.org; Mon, 03 Aug 2015 09:20:52 +0000
Date: Mon, 3 Aug 2015 11:20:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150803092029.GO5161@pengutronix.de>
References: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
 <20150731072921.GS18700@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150731072921.GS18700@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] i2c: add bus recovery infrastructure
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Fri, Jul 31, 2015 at 09:29:21AM +0200, Sascha Hauer wrote:
> On Thu, Jul 30, 2015 at 04:52:05PM +0200, Jan Luebbe wrote:
> > This series ports the kernel's i2c bus recovery support to barebox.
> > 
> > Bus recovery is necessary when a slave device pulls the SDA line low because it
> > is in a wrong state. The fix is to toggle the SCL line, which move the slaves
> > into the idle state. Using the same structure and callbacks as the kernel makes
> > it easy to port the per-driver code to barebox.
> > 
> > Changes from v1:
> >   - Let the driver configure the function pointers to avoid linking in
> >     i2c_generic_gpio_recovery when it is not actually needed.
> >   - Add recovery support to i2c-gpio.
> > 
> > Jan Luebbe (6):
> >   i2c: add bus recovery infrastructure
> >   i2c-omap: clear ARDY twice
> >   i2c-omap: add bus recovery support
> >   i2c: algo-bit: fix debug code
> >   i2c: algo-bit: check if the bus is busy
> >   i2c: gpio: add bus recovery support
> 
> Applied, thanks

Unfortunately I had to drop this branch. It adds a dependency from the
I2C core to GPIO so compilation for example on PPC breaks with:

In file included from drivers/i2c/i2c.c:26:0:
include/gpio.h:4:22: fatal error: asm/gpio.h: No such file or directory
 #include <asm/gpio.h>

We'll need either some #ifdefery in the I2C core or some static inline
wrappers in include/gpio.h for !CONFIG_GENERIC_GPIO.

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
