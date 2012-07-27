Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufFF-0003zY-Tl
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 07:46:02 +0000
Date: Fri, 27 Jul 2012 09:45:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727074553.GT30009@pengutronix.de>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
 <1343232061-1789-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343232061-1789-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 3/3] ppc: P2020RDB Ethernet configuration
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2012 at 05:01:01PM +0100, Renaud Barbier wrote:
> Minimal support of the Ethernet interface on the P2020RDB board. Only
> the eTSEC3 interface is supported.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   38 +++++++++++++++++++++++++
>  arch/ppc/configs/p2020rdb_defconfig           |    6 ++++
>  2 files changed, 44 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> index 20897cb..201220f 100644
> --- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> +++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> @@ -35,6 +35,7 @@
>  #include <mach/mmu.h>
>  #include <mach/immap_85xx.h>
>  #include <mach/clocks.h>
> +#include <mach/gianfar.h>
>  #include <mach/early_udelay.h>
>  
>  #define VSC7385_RST_SET		0x00080000
> @@ -61,10 +62,47 @@
>  #define SYSCLK_50	50000000
>  #define SYSCLK_100	100000000
>  
> +/* Ethernet. Use eTSEC3 */
> +static struct gfar_info_struct gfar_info[] = {
> +	{
> +	.phyaddr = 1,
> +	.tbiana = 0,
> +	.tbicr = 0,
> +	.flags = 0,
> +	},

Please use tabs for indention.

> +};
> +
> +static int board_eth_init(int num, int idx)
> +{
> +	struct resource *res;
> +
> +	res = xzalloc(3 * sizeof(struct resource));
> +	/* TSEC interface registers */
> +	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
> +	res[0].end = res[0].start + 0x1000;
> +	res[0].flags = IORESOURCE_MEM;
> +	/* External PHY access always through eTSEC1 */
> +	res[1].start = MDIO_BASE_ADDR;
> +	res[1].end = res[1].start + 0x1000;
> +	res[1].flags = IORESOURCE_MEM;
> +	/* Access to TBI/RTBI interface. */
> +	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
> +	res[2].end = res[2].start + 0x1000;
> +	res[2].flags = IORESOURCE_MEM;
> +
> +	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3,
> +				&gfar_info[idx]);
> +
> +	return 0;
> +}

It's probably worth to make this a SoC specific function somewhere. It
could be used by other boards aswell, right?

Sascha

> +
>  static int devices_init(void)
>  {
>  	add_cfi_flash_device(-1, CFG_FLASH_BASE, 16 << 20, 0);
>  
> +	/* eTSEC3 */
> +	board_eth_init(3, 0);
> +
>  	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
>  			    "self0");
>  	return 0;
> diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
> index f8a0687..d025a40 100644
> --- a/arch/ppc/configs/p2020rdb_defconfig
> +++ b/arch/ppc/configs/p2020rdb_defconfig
> @@ -21,3 +21,9 @@ CONFIG_MALLOC_SIZE=0x200000
>  CONFIG_BAUDRATE=115200
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_RELOCATABLE=y
> +CONFIG_DRIVER_NET_GIANFAR=y
> +CONFIG_NET=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_TFTP=y
> +CONFIG_PING=y
> +CONFIG_TFTP=y
> -- 
> 1.7.1
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
