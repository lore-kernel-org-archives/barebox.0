Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxezO-00067H-AO
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:38:16 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9A532DC0892
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:47:56 +0100 (CET)
Date: Tue, 22 Jan 2013 15:36:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130122143647.GL26329@game.jcrosoft.org>
References: <1358779081-31836-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358779081-31836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [RFC PATCH 1/1] omap: xload: switch to generic bootstrap
To: barebox@lists.infradead.org

On 15:38 Mon 21 Jan     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
> 	just compiled not tested
Sascha can you test it on panda or beagle?

Best Regards,
J.
>  .../configs/am335x_beaglebone_mlo_small_defconfig  |    2 +
>  arch/arm/configs/archosg9_xload_defconfig          |    2 +
>  arch/arm/configs/omap3530_beagle_xload_defconfig   |    3 +
>  arch/arm/configs/panda_xload_defconfig             |    2 +
>  arch/arm/configs/pcm049_xload_defconfig            |    3 +
>  arch/arm/configs/phycard_a_l1_xload_defconfig      |    3 +
>  arch/arm/configs/phycard_a_xl2_xload_defconfig     |    3 +
>  arch/arm/mach-omap/xload.c                         |  292 +++++---------------
>  8 files changed, 88 insertions(+), 222 deletions(-)
>  rewrite arch/arm/mach-omap/xload.c (70%)
> 
> diff --git a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
> index 886dad9..91c18a5 100644
> --- a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
> +++ b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
> @@ -29,3 +29,5 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_LFN=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
> index 6c6782f..26de57e 100644
> --- a/arch/arm/configs/archosg9_xload_defconfig
> +++ b/arch/arm/configs/archosg9_xload_defconfig
> @@ -22,3 +22,5 @@ CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_OMAP4_USBBOOT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
> index d951b1c..2164208 100644
> --- a/arch/arm/configs/omap3530_beagle_xload_defconfig
> +++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
> @@ -36,3 +36,6 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DEVFS=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
> index fec09ce..84cebbf 100644
> --- a/arch/arm/configs/panda_xload_defconfig
> +++ b/arch/arm/configs/panda_xload_defconfig
> @@ -25,3 +25,5 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/pcm049_xload_defconfig b/arch/arm/configs/pcm049_xload_defconfig
> index b6d3a7a..44f9194 100644
> --- a/arch/arm/configs/pcm049_xload_defconfig
> +++ b/arch/arm/configs/pcm049_xload_defconfig
> @@ -39,3 +39,6 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DEVFS=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/phycard_a_l1_xload_defconfig b/arch/arm/configs/phycard_a_l1_xload_defconfig
> index 30253cb..d1e3bed 100644
> --- a/arch/arm/configs/phycard_a_l1_xload_defconfig
> +++ b/arch/arm/configs/phycard_a_l1_xload_defconfig
> @@ -41,3 +41,6 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DEVFS=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/configs/phycard_a_xl2_xload_defconfig b/arch/arm/configs/phycard_a_xl2_xload_defconfig
> index 7975220..d6b5daa 100644
> --- a/arch/arm/configs/phycard_a_xl2_xload_defconfig
> +++ b/arch/arm/configs/phycard_a_xl2_xload_defconfig
> @@ -39,3 +39,6 @@ CONFIG_MCI_OMAP_HSMMC=y
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
>  CONFIG_FS_FAT=y
> +CONFIG_BOOTSTRAP=y
> +CONFIG_BOOTSTRAP_DEVFS=y
> +CONFIG_BOOTSTRAP_DISK=y
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> dissimilarity index 70%
> index 41533a9..c02e37e 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -1,222 +1,70 @@
> -#include <common.h>
> -#include <partition.h>
> -#include <nand.h>
> -#include <init.h>
> -#include <driver.h>
> -#include <linux/mtd/mtd.h>
> -#include <fs.h>
> -#include <fcntl.h>
> -#include <mach/xload.h>
> -#include <sizes.h>
> -#include <filetype.h>
> -
> -static void *read_image_head(const char *name)
> -{
> -	void *header = xmalloc(ARM_HEAD_SIZE);
> -	struct cdev *cdev;
> -	int ret;
> -
> -	cdev = cdev_open(name, O_RDONLY);
> -	if (!cdev) {
> -		printf("failed to open partition\n");
> -		return NULL;
> -	}
> -
> -	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
> -	cdev_close(cdev);
> -
> -	if (ret != ARM_HEAD_SIZE) {
> -		printf("failed to read from partition\n");
> -		return NULL;
> -	}
> -
> -	return header;
> -}
> -
> -static unsigned int get_image_size(void *head)
> -{
> -	unsigned int ret = 0;
> -	unsigned int *psize = head + ARM_HEAD_SIZE_OFFSET;
> -
> -	if (is_barebox_arm_head(head))
> -		ret = *psize;
> -	debug("Detected barebox image size %u\n", ret);
> -
> -	return ret;
> -}
> -
> -static void *omap_xload_boot_nand(int offset)
> -{
> -	int ret;
> -	int size;
> -	void *to, *header;
> -	struct cdev *cdev;
> -
> -	devfs_add_partition("nand0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
> -	dev_add_bb_dev("x", "bbx");
> -
> -	header = read_image_head("bbx");
> -	if (header == NULL)
> -		return NULL;
> -
> -	size = get_image_size(header);
> -	if (!size) {
> -		printf("failed to get image size\n");
> -		return NULL;
> -	}
> -
> -	to = xmalloc(size);
> -
> -	cdev = cdev_open("bbx", O_RDONLY);
> -	if (!cdev) {
> -		printf("failed to open nand\n");
> -		return NULL;
> -	}
> -
> -	ret = cdev_read(cdev, to, size, 0, 0);
> -	if (ret != size) {
> -		printf("failed to read from nand\n");
> -		return NULL;
> -	}
> -
> -	return to;
> -}
> -
> -static void *omap_xload_boot_mmc(void)
> -{
> -	int ret;
> -	void *buf;
> -	int len;
> -	const char *diskdev = "disk0.0";
> -
> -	ret = mount(diskdev, "fat", "/");
> -	if (ret) {
> -		printf("Unable to mount %s (%d)\n", diskdev, ret);
> -		return NULL;
> -	}
> -
> -	buf = read_file("/barebox.bin", &len);
> -	if (!buf) {
> -		printf("could not read barebox.bin from sd card\n");
> -		return NULL;
> -	}
> -
> -	return buf;
> -}
> -
> -static void *omap_xload_boot_spi(int offset)
> -{
> -	int ret;
> -	int size;
> -	void *to, *header;
> -	struct cdev *cdev;
> -
> -	devfs_add_partition("m25p0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
> -
> -	header = read_image_head("x");
> -	if (header == NULL)
> -		return NULL;
> -
> -	size = get_image_size(header);
> -	if (!size) {
> -		printf("failed to get image size\n");
> -		return NULL;
> -	}
> -
> -	to = xmalloc(size);
> -
> -	cdev = cdev_open("x", O_RDONLY);
> -	if (!cdev) {
> -		printf("failed to open spi flash\n");
> -		return NULL;
> -	}
> -
> -	ret = cdev_read(cdev, to, size, 0, 0);
> -	if (ret != size) {
> -		printf("failed to read from spi flash\n");
> -		return NULL;
> -	}
> -
> -	return to;
> -}
> -
> -static void *omap4_xload_boot_usb(void){
> -	int ret;
> -	void *buf;
> -	int len;
> -
> -	ret = mount("omap4_usbboot", "omap4_usbbootfs", "/");
> -	if (ret) {
> -		printf("Unable to mount omap4_usbbootfs (%d)\n", ret);
> -		return NULL;
> -	}
> -
> -	buf = read_file("/barebox.bin", &len);
> -	if (!buf)
> -		printf("could not read barebox.bin from omap4_usbbootfs\n");
> -
> -	return buf;
> -}
> -
> -enum omap_boot_src omap_bootsrc(void)
> -{
> -#if defined(CONFIG_ARCH_OMAP3)
> -	return omap3_bootsrc();
> -#elif defined(CONFIG_ARCH_OMAP4)
> -	return omap4_bootsrc();
> -#elif defined(CONFIG_ARCH_AM33XX)
> -	return am33xx_bootsrc();
> -#endif
> -}
> -
> -/*
> - * Replaces the default shell in xload configuration
> - */
> -static __noreturn int omap_xload(void)
> -{
> -	int (*func)(void) = NULL;
> -
> -	switch (omap_bootsrc())
> -	{
> -	case OMAP_BOOTSRC_MMC1:
> -		printf("booting from MMC1\n");
> -		func = omap_xload_boot_mmc();
> -		break;
> -	case OMAP_BOOTSRC_USB1:
> -		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> -			printf("booting from USB1\n");
> -			func = omap4_xload_boot_usb();
> -			break;
> -		} else {
> -			printf("booting from usb1 not enabled\n");
> -		}
> -	case OMAP_BOOTSRC_UNKNOWN:
> -		printf("unknown boot source. Fall back to nand\n");
> -	case OMAP_BOOTSRC_NAND:
> -		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K);
> -		break;
> -	case OMAP_BOOTSRC_SPI1:
> -		printf("booting from SPI1\n");
> -		func = omap_xload_boot_spi(SZ_128K);
> -		break;
> -	}
> -
> -	if (!func) {
> -		printf("booting failed\n");
> -		while (1);
> -	}
> -
> -	shutdown_barebox();
> -	func();
> -
> -	while (1);
> -}
> -
> -static int omap_set_xload(void)
> -{
> -	barebox_main = omap_xload;
> -
> -	return 0;
> -}
> -late_initcall(omap_set_xload);
> +#include <common.h>
> +#include <partition.h>
> +#include <nand.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <linux/mtd/mtd.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <mach/xload.h>
> +#include <sizes.h>
> +#include <filetype.h>
> +#include <bootstrap.h>
> +
> +enum omap_boot_src omap_bootsrc(void)
> +{
> +#if defined(CONFIG_ARCH_OMAP3)
> +	return omap3_bootsrc();
> +#elif defined(CONFIG_ARCH_OMAP4)
> +	return omap4_bootsrc();
> +#elif defined(CONFIG_ARCH_AM33XX)
> +	return am33xx_bootsrc();
> +#endif
> +}
> +
> +/*
> + * Replaces the default shell in xload configuration
> + */
> +static __noreturn int omap_xload(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +	switch (omap_bootsrc())
> +	{
> +	case OMAP_BOOTSRC_MMC1:
> +		printf("booting from MMC1\n");
> +		func = bootstrap_read_disk("disk0.0", NULL);
> +		break;
> +	case OMAP_BOOTSRC_USB1:
> +		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> +			printf("booting from USB1\n");
> +			func = bootstrap_read_disk("omap4_usbboot", "omap4_usbbootfs");
> +			break;
> +		} else {
> +			printf("booting from usb1 not enabled\n");
> +		}
> +	case OMAP_BOOTSRC_UNKNOWN:
> +		printf("unknown boot source. Fall back to nand\n");
> +	case OMAP_BOOTSRC_NAND:
> +		printf("booting from NAND\n");
> +		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> +		break;
> +	case OMAP_BOOTSRC_SPI1:
> +		printf("booting from SPI1\n");
> +		func = bootstrap_read_devfs("m25p0", false, SZ_128K, SZ_256K, SZ_1M);
> +		break;
> +	}
> +
> +	bootstrap_boot(func, false);
> +	bootstrap_err("... failed\n");
> +
> +	while (1);
> +}
> +
> +static int omap_set_xload(void)
> +{
> +	barebox_main = omap_xload;
> +
> +	return 0;
> +}
> +late_initcall(omap_set_xload);
> -- 
> 1.7.10.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
