Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw1Nm-0003Ik-Dy
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 09:08:09 +0000
Date: Tue, 19 Feb 2019 10:08:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190219090804.5dzgbchfawyyq7td@pengutronix.de>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH v2 0/8] Fixing MMC access on Raspberry Pi CM3
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Mon, Feb 18, 2019 at 12:32:12PM +0100, Tomaz Solc wrote:
> Changes from the first patch series:
> 
>  - Base Compute Module 3 device tree off upstream device tree for CM3 + IO3
>    dev board, instead of R. Pi 3B.
>  - Keep Makefile.bcm283x without a newline at the end of file.
>  - Make mci init before pinctrl by moving mci-bcm2835 to device_initcall()
>    instead of changing link order.
>  - Add CONFIG_PINCTRL to rpi_defconfig.
> 
> Best regards
> Tomaz
> 
> Tomaz Solc (8):
>   ARM: rpi: switch emmc from sdhost to sdhci
>   Kconfig: add pin controllers submenu.
>   pinctrl: bcm2835: move existing code from gpio.
>   pinctrl: bcm2835: register the pin controller.
>   mci: bcm2835: use device_initcall(), not coredev.
>   mci: bcm2835: parse other device tree properties.
>   ARM: rpi: Add device tree for Compute Module 3.
>   ARM: rpi: add CONFIG_PINCTRL to rpi_defconfig.

Applied, thanks

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
