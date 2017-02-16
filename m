Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceHK7-0003YB-Lg
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 08:21:57 +0000
Received: by mail-lf0-x242.google.com with SMTP id v186so812310lfa.2
 for <barebox@lists.infradead.org>; Thu, 16 Feb 2017 00:21:31 -0800 (PST)
Date: Thu, 16 Feb 2017 11:28:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170216112835.e13918c2dc0499e64e1366a2@gmail.com>
In-Reply-To: <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
References: <20170215071227.31183-1-antonynpavlov@gmail.com>
 <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
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
Subject: Re: [RFC 0/2] sandbox: add gpio support with libftdi1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 16 Feb 2017 08:34:30 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Wed, Feb 15, 2017 at 10:12:25AM +0300, Antony Pavlov wrote:
> > This patch series makes it possible to use FT2232H ACBUS[7:0]
> > pins as gpio pins from sandbox barebox.
> > =

> > I have tested output gpio functionality by connecting
> > a LED to ACBUS[0] and lightening it with gpio_direction_output
> > and gpio_set_value barebox commands.
> > =

> > Also I have performed input test with ACBUS[0] -> ACBUS[1] loopback.
> > =

> > The main goal of adding gpio functionality to sandbox barebox
> > is using it for connecting real i2c and spi devices to sandbox barebox
> > (not tested yet).
> =

> I just read that the FT2232H can even do native I2C and SPI, so no gpio
> bitbanging would be necessary.

I suppose that gpio support itself is valuable.

> Would it be possible to use this mode instead?

Yes, FT2232H has MPSSE acellerator.
Using MPSSE one can increase FT2232 I2C/SPI performance dramatically.
I have compared two FT2232 I2C realizations (bitbang and libmpsse,
see https://github.com/frantony/mprog/tree/master/i2c_access).
on reading of 8 KiB data block from I2C eeprom. libmpsse's bandwidth is 6 K=
iB per second,
bitbang's bandwidth is only 73 bytes per second (nearly 100 times worse).

Alas, I have no time to realize ftdi fast i2c/spi support for barebox in th=
e nearest future

> Otherwise I think there should be a possibility to specify which, if
> any, FT2232H chip barebox uses.

I'll add cmdline options to select FT2232H chips on USB bus in v2 patchseri=
es.
Also I'll check i2c bitbang support. I can connect ds1307 rtc or at24 eepro=
m).

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
