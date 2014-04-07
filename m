Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4He-00070a-BN
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:47:59 +0000
Date: Mon, 7 Apr 2014 09:47:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140407074736.GL27055@pengutronix.de>
References: <1396777600-647-1-git-send-email-shc_work@mail.ru>
 <1396777600-647-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396777600-647-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH RFC 2/2] ARM: PCM038: Switch to devicetree probe
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 06, 2014 at 01:46:40PM +0400, Alexander Shiyan wrote:
> This patch removes non-DT support for PCM-038/PCM-970 and switch
> to devicetree probe for these targets.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/phytec-phycore-imx27/Makefile      |   5 +-
>  arch/arm/boards/phytec-phycore-imx27/env/boot/nor  |   9 +
>  .../boards/phytec-phycore-imx27/env/config-board   |   7 +-
>  .../phytec-phycore-imx27/env/init/mtdparts-nand    |  11 -
>  .../phytec-phycore-imx27/env/init/mtdparts-nor     |  11 -
>  arch/arm/boards/phytec-phycore-imx27/pcm038.c      | 358 +++------------------
>  arch/arm/boards/phytec-phycore-imx27/pcm970.c      | 201 ++++--------
>  arch/arm/configs/phytec-phycore-imx27_defconfig    |  62 ++--
>  arch/arm/mach-imx/Kconfig                          |  14 +-
>  9 files changed, 161 insertions(+), 517 deletions(-)
>  create mode 100644 arch/arm/boards/phytec-phycore-imx27/env/boot/nor
>  delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
>  delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
> 
> diff --git a/arch/arm/boards/phytec-phycore-imx27/Makefile b/arch/arm/boards/phytec-phycore-imx27/Makefile
> index bfb55d3..eb82f0d 100644
> --- a/arch/arm/boards/phytec-phycore-imx27/Makefile
> +++ b/arch/arm/boards/phytec-phycore-imx27/Makefile
> @@ -1,3 +1,2 @@
> -obj-y					+= pcm038.o
> -lwl-y				+= lowlevel.o
> -obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
> +obj-y	+= pcm038.o pcm970.o
> +lwl-y	+= lowlevel.o
> diff --git a/arch/arm/boards/phytec-phycore-imx27/env/boot/nor b/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
> new file mode 100644
> index 0000000..0d10584
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "nor"
> +	exit
> +fi
> +
> +global.bootm.image="/dev/nor0.kernel"
> +global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
> diff --git a/arch/arm/boards/phytec-phycore-imx27/env/config-board b/arch/arm/boards/phytec-phycore-imx27/env/config-board
> index e8e8378..9fec434 100644
> --- a/arch/arm/boards/phytec-phycore-imx27/env/config-board
> +++ b/arch/arm/boards/phytec-phycore-imx27/env/config-board
> @@ -1,6 +1,7 @@
>  #!/bin/sh
>  
> -# board defaults, do not change in running system. Change /env/config
> -# instead
> +# Default boot entry (one of /env/boot/*)
> +global.boot.default=nor
>  
> -global.linux.bootargs.base="console=ttymxc0,115200"
> +# Board bootargs
> +global.linux.bootargs.base="earlyprintk"
> diff --git a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
> deleted file mode 100644
> index 84220b7..0000000
> --- a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -#!/bin/sh
> -
> -if [ "$1" = menu ]; then
> -	init-menu-add-entry "$0" "NAND partitions"
> -	exit
> -fi
> -
> -mtdparts="512k(nand0.barebox)ro,128k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
> -kernelname="mxc_nand"
> -
> -mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
> diff --git a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
> deleted file mode 100644
> index c2c4065..0000000
> --- a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -#!/bin/sh
> -
> -if [ "$1" = menu ]; then
> -	init-menu-add-entry "$0" "NOR partitions"
> -	exit
> -fi
> -
> -mtdparts="512k(nor0.barebox)ro,128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
> -kernelname="physmap-flash.0"
> -
> -mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
> diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
> index 7df0ddc..6f74322 100644
> --- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
> +++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
> @@ -10,79 +10,27 @@
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
> - *
> - *
>   */
> +
>  #define pr_fmt(fmt) "pcm038: " fmt
>  
>  #include <common.h>
> -#include <bootsource.h>
> -#include <net.h>
> -#include <init.h>
> -#include <environment.h>
> -#include <mach/imx27-regs.h>
> -#include <fec.h>
> -#include <sizes.h>
> -#include <notifier.h>
>  #include <gpio.h>
> -#include <asm/armlinux.h>
> -#include <generated/mach-types.h>
> -#include <partition.h>
> -#include <fs.h>
> -#include <nand.h>
> -#include <spi/spi.h>
> +#include <init.h>
>  #include <io.h>
> -#include <mach/imx-nand.h>
> +#include <notifier.h>
> +#include <sizes.h>
> +#include <mach/devices-imx27.h>
>  #include <mach/imx-pll.h>
> -#include <mach/weim.h>
> +#include <mach/imx27-regs.h>
>  #include <mach/imxfb.h>
> -#include <i2c/i2c.h>
> -#include <mach/spi.h>
>  #include <mach/iomux-mx27.h>
> -#include <mach/devices-imx27.h>
> -#include <mach/iim.h>
>  #include <mfd/mc13xxx.h>
> -#include <mach/generic.h>
>  
>  #include "pll.h"
>  
> -#define PCM038_GPIO_PMIC_IRQ	(GPIO_PORTB + 23)
> -#define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
> -#define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
> -#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
>  #define PCM038_GPIO_OTG_STP	(GPIO_PORTE + 1)
>  
> -static struct fec_platform_data fec_info = {
> -	.xcv_type = PHY_INTERFACE_MODE_MII,
> -	.phy_addr = 1,
> -};
> -
> -static int pcm038_spi_cs[] = {
> -	PCM038_GPIO_SPI_CS0,
> -#ifdef CONFIG_MACH_PCM970_BASEBOARD
> -	PCM970_GPIO_SPI_CS1,
> -#endif
> -};
> -
> -static struct spi_imx_master pcm038_spi_0_data = {
> -	.chipselect = pcm038_spi_cs,
> -	.num_chipselect = ARRAY_SIZE(pcm038_spi_cs),
> -};
> -
> -static struct spi_board_info pcm038_spi_board_info[] = {
> -	{
> -		.name = "mc13783",
> -		.bus_num = 0,
> -		.chip_select = 0,
> -	}
> -};
> -
> -static struct imx_nand_platform_data nand_info = {
> -	.width		= 1,
> -	.hw_ecc		= 1,
> -	.flash_bbt	= 1,
> -};
> -
>  static struct imx_fb_videomode imxfb_mode = {
>  	.mode = {
>  		.name		= "Sharp-LQ035Q7",
> @@ -106,51 +54,44 @@ static struct imx_fb_videomode imxfb_mode = {
>  	 * - data enable low active
>  	 * - enable sharp mode
>  	 */
> -	.pcr		= 0xF00080C0,
> +	.pcr		= 0xf00080c0,
>  	.bpp		= 16,
>  };
>  
>  static struct imx_fb_platform_data pcm038_fb_data = {
>  	.mode	= &imxfb_mode,
>  	.num_modes = 1,
> -	.pwmr	= 0x00A903FF,
> +	.pwmr	= 0x00a903ff,
>  	.lscr1	= 0x00120300,
>  	.dmacr	= 0x00020010,
>  };
>  
> -/**
> - * The spctl0 register is a beast: Seems you can read it
> - * only one times without writing it again.
> - */
> -static inline uint32_t get_pll_spctl10(void)
> +static int pcm038_init(void)
>  {
> -	uint32_t reg;
> +	struct mc13xxx *mc13xxx = mc13xxx_get();
>  
> -	reg = readl(MX27_CCM_BASE_ADDR + MX27_SPCTL0);
> -	writel(reg, MX27_CCM_BASE_ADDR + MX27_SPCTL0);
> +	if (!of_machine_is_compatible("phytec,imx27-pcm038"))
> +		return -ENOSYS;

Please return successfully here. Otherwise we get errors here each time
on multiboard images.

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
