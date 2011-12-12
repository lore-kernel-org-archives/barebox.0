Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra2Lh-0000ba-6t
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 09:39:07 +0000
Date: Mon, 12 Dec 2011 10:38:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111212093857.GP27267@pengutronix.de>
References: <1323424372-8142-1-git-send-email-a.aring@phytec.de>
 <1323424372-8142-4-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323424372-8142-4-git-send-email-a.aring@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] twlcore: rename twl4030 to twlcore driver
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 10:52:49AM +0100, Alexander Aring wrote:
> Abstract a general twl device driver twlcore to call i2c send/write
> functions.
> Renamed mfd/twl4030.c to mfd/twlcore.c.
> Rewrote twl4030-otg to use twlcore driver instead of old twl4030
> driver.
> 
> Rename patch to use twlcore instead twl4030 in beagleboard.
> 
> Fixed some code-styling issues pointed out by checkpatch.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  arch/arm/boards/omap/board-beagle.c |    2 +-
>  drivers/mfd/Kconfig                 |    4 +-
>  drivers/mfd/Makefile                |    2 +-
>  drivers/mfd/twl-core.c              |  190 ++++++++++++++
>  drivers/mfd/twl4030.c               |  186 --------------
>  drivers/usb/otg/twl4030.c           |   52 ++--
>  include/mfd/twl-core.h              |  461 +++++++++++++++++++++++++++++++++++
>  include/mfd/twl4030.h               |  461 -----------------------------------
>  8 files changed, 681 insertions(+), 677 deletions(-)
>  create mode 100644 drivers/mfd/twl-core.c
>  delete mode 100644 drivers/mfd/twl4030.c
>  create mode 100644 include/mfd/twl-core.h
>  delete mode 100644 include/mfd/twl4030.h
> 
> diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
> index bfb08f7..4dd782f 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -275,7 +275,7 @@ static struct ehci_platform_data ehci_pdata = {
>  
>  static struct i2c_board_info i2c_devices[] = {
>  	{
> -		I2C_BOARD_INFO("twl4030", 0x48),
> +		I2C_BOARD_INFO("twlcore", 0x48),

The name should stay "twl4030" because that's what it is. You could
make the driver match for both twl4030 and twl6030 instead.

>  	},
>  };
>  
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 96440d8..1677e2f 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -16,9 +16,9 @@ config I2C_LP3972
>  	depends on I2C
>  	bool "LP3972 driver"
>  
> -config I2C_TWL4030
> +config I2C_TWLCORE
>  	depends on I2C
> -	bool "TWL4030 driver"
> +	bool "TWLCORE driver"

I think we should rather prompt the user for twl4030/twl6030 instead.

>  	select GPIO
>  
>  config DRIVER_SPI_MC13783
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index d411f23..c54a6a1 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -2,5 +2,5 @@ obj-$(CONFIG_I2C_MC13892) += mc13892.o
>  obj-$(CONFIG_I2C_MC34704) += mc34704.o
>  obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
>  obj-$(CONFIG_I2C_LP3972) += lp3972.o
> -obj-$(CONFIG_I2C_TWL4030) += twl4030.o
> +obj-$(CONFIG_I2C_TWLCORE) += twl-core.o
>  obj-$(CONFIG_DRIVER_SPI_MC13783) += mc13783.o
> diff --git a/drivers/mfd/twl-core.c b/drivers/mfd/twl-core.c

Please generate patches with file renames with git format-patch -M

From looking at the register layout the twl4030 and the twl6030 do
not have much in common. What can be shared between both seems to
be the core driver. I suggest that you do something like this:

struct twl_core {
	struct cdev		cdev;
	struct i2c_client	*client;
};

struct twl4030 {
	struct twl_core core;
};

struct twl6030 {
	struct twl_core core;
};

Then you can rename the twl4030_reg_* functions to twlcore_reg_* and
create wrapper static inline functions with the twl4030_reg_* names
which call twlcore_reg_*

The rationale is that the twl4030 otg driver should still work with
struct twl4030 and the twl4030 register accessors as this won't work
with the twl6030.


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
