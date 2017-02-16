Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceHOQ-0005k2-2L
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 08:26:24 +0000
Date: Thu, 16 Feb 2017 09:25:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170216082557.lj5uzkq23ssgc2f3@pengutronix.de>
References: <20170215071227.31183-1-antonynpavlov@gmail.com>
 <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
 <20170216112835.e13918c2dc0499e64e1366a2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170216112835.e13918c2dc0499e64e1366a2@gmail.com>
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
Subject: Re: [RFC 0/2] sandbox: add gpio support with libftdi1
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 16, 2017 at 11:28:35AM +0300, Antony Pavlov wrote:
> On Thu, 16 Feb 2017 08:34:30 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Wed, Feb 15, 2017 at 10:12:25AM +0300, Antony Pavlov wrote:
> > > This patch series makes it possible to use FT2232H ACBUS[7:0]
> > > pins as gpio pins from sandbox barebox.
> > > 
> > > I have tested output gpio functionality by connecting
> > > a LED to ACBUS[0] and lightening it with gpio_direction_output
> > > and gpio_set_value barebox commands.
> > > 
> > > Also I have performed input test with ACBUS[0] -> ACBUS[1] loopback.
> > > 
> > > The main goal of adding gpio functionality to sandbox barebox
> > > is using it for connecting real i2c and spi devices to sandbox barebox
> > > (not tested yet).
> > 
> > I just read that the FT2232H can even do native I2C and SPI, so no gpio
> > bitbanging would be necessary.
> 
> I suppose that gpio support itself is valuable.
> 
> > Would it be possible to use this mode instead?
> 
> Yes, FT2232H has MPSSE acellerator.
> Using MPSSE one can increase FT2232 I2C/SPI performance dramatically.
> I have compared two FT2232 I2C realizations (bitbang and libmpsse,
> see https://github.com/frantony/mprog/tree/master/i2c_access).
> on reading of 8 KiB data block from I2C eeprom. libmpsse's bandwidth is 6 KiB per second,
> bitbang's bandwidth is only 73 bytes per second (nearly 100 times worse).
> 
> Alas, I have no time to realize ftdi fast i2c/spi support for barebox in the nearest future

Don't worry, I was only curious.

> 
> > Otherwise I think there should be a possibility to specify which, if
> > any, FT2232H chip barebox uses.
> 
> I'll add cmdline options to select FT2232H chips on USB bus in v2 patchseries.
> Also I'll check i2c bitbang support. I can connect ds1307 rtc or at24 eeprom).

Ok.

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
