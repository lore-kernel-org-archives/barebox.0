Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yqaaz-0007qZ-48
 for barebox@lists.infradead.org; Fri, 08 May 2015 05:13:10 +0000
Date: Fri, 8 May 2015 07:12:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150508051242.GV6325@pengutronix.de>
References: <5548DA0A.3050408@elfin.de> <20150505155450.GB6325@pengutronix.de>
 <20150506071228.GQ25193@pengutronix.de> <554B4B63.7020301@elfin.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <554B4B63.7020301@elfin.de>
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
Subject: Re: Usage of i2c_-Tools in Barebox
To: Marcel Behlau <marcel.behlau@elfin.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Thu, May 07, 2015 at 01:24:19PM +0200, Marcel Behlau wrote:
> Hi,
> 
> many thanks for your help. I activated the i2c devices in the device
> tree, the pinctrl is already done in the imx6q.dtsi, which is
> included. The used pins are identically with the used pins on the
> SBC. devinfo told me, that the driver "i2c-fsl" is loaded. After
> rebuild barebox, it's possible to probe the bus, but the command
> only answered with an timeout:
> 
> barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ i2c_probe 1 83 83
> probing i2c range 0x53 - 0x53 :
> i2c2: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy

I *think* this means that the levels on the bus do not properly follow
what the controller wants to do. Maybe pullup missing? An oscilloscope
might help here.

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
