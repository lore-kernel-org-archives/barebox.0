Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgeB-0002SE-BJ
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:41:31 +0000
Date: Fri, 22 May 2015 08:41:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150522064108.GS6325@pengutronix.de>
References: <5548DA0A.3050408@elfin.de> <20150505155450.GB6325@pengutronix.de>
 <20150506071228.GQ25193@pengutronix.de> <554B4B63.7020301@elfin.de>
 <20150508051242.GV6325@pengutronix.de> <555C2AEF.206@elfin.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <555C2AEF.206@elfin.de>
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

On Wed, May 20, 2015 at 08:34:23AM +0200, Marcel Behlau wrote:
> Hi,
> 
> i found the problem. The Pad Mux Register (0x20E008C and 0x20E0090)
> are not initialised. In both registers is a 0x00000005 (reset
> value), instead of 0x00000016. I think, i must specify the value of
> the mux register in the device tree, too. How can i do this?

You have to add a pinctrl node, like this:

&iomuxc {
	imx6s-riotboard {
		pinctrl_i2c1_2: i2c1grp-2 {
			fsl,pins = <
				MX6QDL_PAD_EIM_EB2__I2C2_SCL 0x4001b8b1
				MX6QDL_PAD_EIM_D16__I2C2_SDA 0x4001b8b1
			>;
		};
	};
};

...

&i2c1 {
	pinctrl-0 = <&pinctrl_i2c1_2>;
};

See dts/Bindings/pinctrl/fsl,imx-pinctrl.txt and
dts/Bindings/pinctrl/fsl,imx6q-pinctrl.txt for a documentation what the
0x4001b8b1 value means. In short bit30 is for the SION bit and the
remaing bits are for the PAD_CTL register.

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
