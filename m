Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzKrN-0005M4-JY
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 07:09:42 +0000
Date: Tue, 24 Jun 2014 09:09:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140624070918.GC15686@pengutronix.de>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/7] MIPS: malta: enable gpio & i2c stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 01:21:06AM +0400, Antony Pavlov wrote:
> Antony Pavlov (7):
>   gpio: add Malta CBUS FPGA I2C driver
>   MIPS: add <asm/gpio.h> header file
>   MIPS: malta: enable gpiolib
>   MIPS: dts: qemu-malta.dts: enable CBUS FPGA I2C gpio driver
>   i2c: i2c_gpio: add devicetree support
>   MIPS: dts: qemu-malta.dts: use i2c-gpio for accessing CBUS FPGA I2C
>     bus
>   MIPS: qemu-malta_defconfig: enable gpio & i2c stuff

Just fixed up the patches myself and applied the series.

Sascha

> 
>  .../devicetree/bindings/gpio/gpio_i2c.txt          |  32 ++++
>  arch/mips/Kconfig                                  |   1 +
>  arch/mips/configs/qemu-malta_defconfig             |  60 +++----
>  arch/mips/dts/qemu-malta.dts                       |  23 +++
>  arch/mips/include/asm/gpio.h                       |   6 +
>  drivers/gpio/Kconfig                               |  10 ++
>  drivers/gpio/Makefile                              |   1 +
>  drivers/gpio/gpio-malta-fpga-i2c.c                 | 186 +++++++++++++++++++++
>  drivers/i2c/busses/i2c-gpio.c                      |  54 +++++-
>  include/of_gpio.h                                  |  55 ++++++
>  10 files changed, 397 insertions(+), 31 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio_i2c.txt
>  create mode 100644 arch/mips/include/asm/gpio.h
>  create mode 100644 drivers/gpio/gpio-malta-fpga-i2c.c
> 
> -- 
> 1.9.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
