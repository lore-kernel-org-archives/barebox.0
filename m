Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGab-0007bQ-BF
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:34:55 +0000
Date: Thu, 16 Feb 2017 08:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
References: <20170215071227.31183-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170215071227.31183-1-antonynpavlov@gmail.com>
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

Hi Antony,

On Wed, Feb 15, 2017 at 10:12:25AM +0300, Antony Pavlov wrote:
> This patch series makes it possible to use FT2232H ACBUS[7:0]
> pins as gpio pins from sandbox barebox.
> 
> I have tested output gpio functionality by connecting
> a LED to ACBUS[0] and lightening it with gpio_direction_output
> and gpio_set_value barebox commands.
> 
> Also I have performed input test with ACBUS[0] -> ACBUS[1] loopback.
> 
> The main goal of adding gpio functionality to sandbox barebox
> is using it for connecting real i2c and spi devices to sandbox barebox
> (not tested yet).

I just read that the FT2232H can even do native I2C and SPI, so no gpio
bitbanging would be necessary. Would it be possible to use this mode
instead?

Otherwise I think there should be a possibility to specify which, if
any, FT2232H chip barebox uses.

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
