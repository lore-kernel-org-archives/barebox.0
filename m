Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x231.google.com ([2607:f8b0:4001:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bF4xn-0003ce-TO
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 19:34:28 +0000
Received: by mail-io0-x231.google.com with SMTP id t74so132176997ioi.0
 for <barebox@lists.infradead.org>; Mon, 20 Jun 2016 12:34:07 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 20 Jun 2016 15:34:06 -0400
Message-ID: <CAO6XYUs7ytpWZyTnp04Fo-Ee_D2PYAJ36fg_tC8M20KHLc59TA@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: Early access I2C and/or clock for iMX6?
To: barebox@lists.infradead.org

In a quest to support the new Variscite SOM's EEPROM based DDR
configuration, I am continuing to try to get all the pieces together.

Now that I have the SOM actually booting from IRAM, I am actually
trying to get the "real" DDR configuration values out of the EEPROM on
the SOM.

Which brings me to the next hurdle -- getting early I2C access up and running.

Thanks to some pointers from Sascha, I have been working with the
fsl_i2c.c code that had already been used for this task on the mpc85xx
PPC platform, and while the I2C controller is essentially the same,
the clock tree  setup, etc. for the iMX6 is quite different.

I also have the fsl_i2c.c implementation that Variscite has used in
their custom U-Boot and have been looking at it as well -- but it has
been changed pretty heavily since U-Boot and barebox diverged.
Additionally, I'm not certain that their modified version is actually
configuring the I2C clock timing correctly anyway.

Finally, I have also been looking at the code in i2c-imx.c to see
what, if any, of it could be used, but, unless I am mistaken, it
appears that almost everything it depends upon would not yet be
available this early in the boot process.

So, before I go to a lot more effort, has anyone else created an early
access I2C driver for the iMX6, or simple early access clock functions
for it (e.g. get_ticks(), get_timebase_clock(), etc.)?

I figured it would be worth asking to see if anyone else had ever
already dealt with this (before I spent a lot of time potentially
recreating something).

Thanks in advance,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
