Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFFEb-0005X7-AH
 for barebox@lists.infradead.org; Tue, 21 Jun 2016 06:32:30 +0000
Date: Tue, 21 Jun 2016 08:32:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160621063205.GW9677@pengutronix.de>
References: <CAO6XYUs7ytpWZyTnp04Fo-Ee_D2PYAJ36fg_tC8M20KHLc59TA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUs7ytpWZyTnp04Fo-Ee_D2PYAJ36fg_tC8M20KHLc59TA@mail.gmail.com>
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
Subject: Re: Early access I2C and/or clock for iMX6?
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 20, 2016 at 03:34:06PM -0400, Michael D. Burkey wrote:
> In a quest to support the new Variscite SOM's EEPROM based DDR
> configuration, I am continuing to try to get all the pieces together.
> 
> Now that I have the SOM actually booting from IRAM, I am actually
> trying to get the "real" DDR configuration values out of the EEPROM on
> the SOM.
> 
> Which brings me to the next hurdle -- getting early I2C access up and running.
> 
> Thanks to some pointers from Sascha, I have been working with the
> fsl_i2c.c code that had already been used for this task on the mpc85xx
> PPC platform, and while the I2C controller is essentially the same,
> the clock tree  setup, etc. for the iMX6 is quite different.

The fsl_i2c.c driver as currently in arch/ppc/ needs the input clock
frequency and some timer for a timeout loop. The timeout could be
dropped from the loop which is ok for a early bringup driver. For the
input clock frequency you can pass in the reset default value,
statically compiled into the binary; no need to calculate it during
runtime. I still think fsl_i2c.c is the way to go, but you could also
you whatever else "early" variant of the driver, I wouldn't start from a
driver implementing the Linux I2C API though.

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
