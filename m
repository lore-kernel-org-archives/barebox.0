Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUEWi-0005nh-S2
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 10:31:02 +0000
Date: Fri, 2 Nov 2012 11:30:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102103059.GL1641@pengutronix.de>
References: <1351763567-6641-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351763567-6641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [For next PATCH 1/1] versatilepb: add i2c support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 10:52:47AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> apply over next
> 
> depends on verstile i2c driver send via i2c algo-bit series

Applied, thanks

Sascha

> 
> Best Regards,
> J.
>  arch/arm/boards/versatile/versatilepb.c     |    1 +
>  arch/arm/configs/versatilepb_defconfig      |    3 +++
>  arch/arm/mach-versatile/core.c              |    7 +++++++
>  arch/arm/mach-versatile/include/mach/init.h |    1 +
>  4 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
> index 5a9c0b6..2eb7473 100644
> --- a/arch/arm/boards/versatile/versatilepb.c
> +++ b/arch/arm/boards/versatile/versatilepb.c
> @@ -47,6 +47,7 @@ mem_initcall(vpb_mem_init);
>  static int vpb_devices_init(void)
>  {
>  	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
> +	versatile_register_i2c();
>  	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
>  	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
>  
> diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
> index 4c71c3c..f6fa454 100644
> --- a/arch/arm/configs/versatilepb_defconfig
> +++ b/arch/arm/configs/versatilepb_defconfig
> @@ -34,6 +34,7 @@ CONFIG_CMD_TIMEOUT=y
>  CONFIG_CMD_PARTITION=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_I2C=y
>  CONFIG_NET=y
>  CONFIG_NET_DHCP=y
>  CONFIG_NET_NFS=y
> @@ -44,6 +45,8 @@ CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_SERIAL_AMBA_PL011=y
>  CONFIG_DRIVER_NET_SMC91111=y
> +CONFIG_I2C=y
> +CONFIG_I2C_VERSATILE=y
>  CONFIG_GPIO_PL061=y
>  CONFIG_FS_CRAMFS=y
>  CONFIG_SHA1=y
> diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
> index 6e913df..8aca2a1 100644
> --- a/arch/arm/mach-versatile/core.c
> +++ b/arch/arm/mach-versatile/core.c
> @@ -26,6 +26,7 @@
>  #include <init.h>
>  #include <clock.h>
>  #include <debug_ll.h>
> +#include <sizes.h>
>  
>  #include <linux/clkdev.h>
>  #include <linux/clk.h>
> @@ -182,6 +183,12 @@ void versatile_register_uart(unsigned id)
>  	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
>  }
>  
> +void versatile_register_i2c(void)
> +{
> +	add_generic_device("versatile-i2c", DEVICE_ID_DYNAMIC, NULL,
> +			VERSATILE_I2C_BASE, SZ_4K, IORESOURCE_MEM, NULL);
> +}
> +
>  void __noreturn reset_cpu (unsigned long ignored)
>  {
>  	u32 val;
> diff --git a/arch/arm/mach-versatile/include/mach/init.h b/arch/arm/mach-versatile/include/mach/init.h
> index 878cde0..b40e4f9 100644
> --- a/arch/arm/mach-versatile/include/mach/init.h
> +++ b/arch/arm/mach-versatile/include/mach/init.h
> @@ -4,5 +4,6 @@
>  
>  void versatile_add_sdram(u32 size);
>  void versatile_register_uart(unsigned id);
> +void versatile_register_i2c(void);
>  
>  #endif
> -- 
> 1.7.10.4
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
