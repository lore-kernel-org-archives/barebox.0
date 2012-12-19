Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlQvn-0002El-2k
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:12:00 +0000
Date: Wed, 19 Dec 2012 22:11:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121219211156.GJ26326@pengutronix.de>
References: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
 <1355840561-11552-20-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355840561-11552-20-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 19/19] drivers: net: add driver for TI CPSW
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 18, 2012 at 03:22:41PM +0100, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/beaglebone/board.c     |   80 +++
>  arch/arm/mach-omap/include/mach/cpsw.h |   49 ++
>  drivers/net/Kconfig                    |    4 +
>  drivers/net/Makefile                   |    1 +
>  drivers/net/cpsw.c                     | 1021 ++++++++++++++++++++++++++++++++
>  5 files changed, 1155 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/cpsw.h
>  create mode 100644 drivers/net/cpsw.c
> 
> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
> index d139e94..20b4bdd 100644
> --- a/arch/arm/boards/beaglebone/board.c
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -31,6 +31,7 @@
>  #include <sizes.h>
>  #include <io.h>
>  #include <ns16550.h>
> +#include <net.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
>  #include <mach/am33xx-silicon.h>
> @@ -42,6 +43,7 @@
>  #include <mach/ehci.h>
>  #include <i2c/i2c.h>
>  #include <linux/err.h>
> +#include <linux/phy.h>
>  #include <usb/ehci.h>
>  #include <mach/xload.h>
>  #include <mach/am33xx-devices.h>
> @@ -306,6 +308,84 @@ static int beaglebone_console_init(void)
>  console_initcall(beaglebone_console_init);
>  #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
>  
> +#ifdef CONFIG_DRIVER_NET_CPSW
> +static void cpsw_control(int enabled)
> +{
> +	return;
> +}
> +
> +static struct cpsw_slave_data cpsw_slaves[] = {
> +	{
> +		.slave_reg_ofs	= 0x208,
> +		.sliver_reg_ofs	= 0xd80,
> +		.phy_id		= 0,
> +		.phy_if		= PHY_INTERFACE_MODE_MII,
> +	},
> +	{
> +		.slave_reg_ofs	= 0x308,
> +		.sliver_reg_ofs	= 0xdc0,
> +		.phy_id		= 1,
> +		.phy_if		= PHY_INTERFACE_MODE_MII,
> +	},
> +};
> +
> +static struct cpsw_platform_data cpsw_data = {
> +	.mdio_base		= AM335X_CPSW_MDIO_BASE,
> +	.cpsw_base		= AM335X_CPSW_BASE,
> +	.mdio_div		= 0xff,
> +	.channels		= 8,
> +	.cpdma_reg_ofs		= 0x800,
> +	.slaves			= 2,
> +	.slave_data		= cpsw_slaves,
> +	.ale_reg_ofs		= 0xd00,
> +	.ale_entries		= 1024,
> +	.host_port_reg_ofs	= 0x108,
> +	.hw_stats_reg_ofs	= 0x900,
> +	.mac_control		= (1 << 5) /* MIIEN */,
> +	.control		= cpsw_control,
> +	.host_port_num		= 0,
> +	.version		= CPSW_CTRL_VERSION_2,
> +};

Most of this looks SoC specific, not board specific. You should use the
platform_device_id mechanism for this.

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
