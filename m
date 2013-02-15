Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GPc-0002La-Il
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:12:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U6GPb-0007r6-B4
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 09:12:51 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U6GPb-0000v1-AA
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 09:12:51 +0100
Date: Fri, 15 Feb 2013 09:12:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215081251.GJ1906@pengutronix.de>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
 <1360915901-3420-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360915901-3420-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] nor flash: integrate into mtd
To: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 09:11:40AM +0100, Sascha Hauer wrote:
> CFI Flash is currently handled outside the mtd layer which makes it
> a special case. Integrate it into mtd so that we get rid of this
> special status.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Last patch was blocked due to message size. Resent with -M which makes
more sense here anyway.

Sascha

> ---
>  arch/arm/configs/edb93xx_defconfig                |    1 +
>  arch/arm/configs/eukrea_cpuimx27_defconfig        |    1 +
>  arch/arm/configs/freescale_mx51_babbage_defconfig |    1 +
>  arch/arm/configs/mmccpu_defconfig                 |    1 +
>  arch/arm/configs/mx21ads_defconfig                |    1 +
>  arch/arm/configs/mx27ads_defconfig                |    1 +
>  arch/arm/configs/netx_nxdb500_defconfig           |    1 +
>  arch/arm/configs/pcm027_defconfig                 |    1 +
>  arch/arm/configs/pm9263_defconfig                 |    1 +
>  arch/arm/configs/scb9328_defconfig                |    1 +
>  arch/blackfin/configs/ipe337_defconfig            |    1 +
>  arch/nios2/configs/generic_defconfig              |    1 +
>  arch/ppc/configs/pcm030_defconfig                 |    1 +
>  drivers/Kconfig                                   |    1 -
>  drivers/Makefile                                  |    1 -
>  drivers/mtd/Kconfig                               |    1 +
>  drivers/mtd/Makefile                              |    1 +
>  drivers/{ => mtd}/nor/Kconfig                     |    6 +-
>  drivers/{ => mtd}/nor/Makefile                    |    0
>  drivers/{ => mtd}/nor/cfi_flash.c                 |   82 +++++----------------
>  drivers/{ => mtd}/nor/cfi_flash.h                 |    1 -
>  drivers/{ => mtd}/nor/cfi_flash_amd.c             |    0
>  drivers/{ => mtd}/nor/cfi_flash_intel.c           |    0
>  23 files changed, 35 insertions(+), 71 deletions(-)
>  rename drivers/{ => mtd}/nor/Kconfig (96%)
>  rename drivers/{ => mtd}/nor/Makefile (100%)
>  rename drivers/{ => mtd}/nor/cfi_flash.c (93%)
>  rename drivers/{ => mtd}/nor/cfi_flash.h (99%)
>  rename drivers/{ => mtd}/nor/cfi_flash_amd.c (100%)
>  rename drivers/{ => mtd}/nor/cfi_flash_intel.c (100%)
> 
> diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
> index 363e511..86b1040 100644
> --- a/arch/arm/configs/edb93xx_defconfig
> +++ b/arch/arm/configs/edb93xx_defconfig
> @@ -30,4 +30,5 @@ CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_EP93XX=y
>  # CONFIG_SPI is not set
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
> diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
> index 880941d..bd0c470 100644
> --- a/arch/arm/configs/eukrea_cpuimx27_defconfig
> +++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
> @@ -46,6 +46,7 @@ CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_I2C=y
>  CONFIG_I2C_IMX=y
>  CONFIG_I2C_LP3972=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  # CONFIG_DRIVER_CFI_AMD is not set
>  # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
> diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
> index 0817cfa..97963c1 100644
> --- a/arch/arm/configs/freescale_mx51_babbage_defconfig
> +++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
> @@ -55,6 +55,7 @@ CONFIG_NET_PING=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_DRIVER_SPI_IMX=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_MCI=y
> diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
> index 334c5e8..0e6914f 100644
> --- a/arch/arm/configs/mmccpu_defconfig
> +++ b/arch/arm/configs/mmccpu_defconfig
> @@ -34,5 +34,6 @@ CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_MACB=y
>  # CONFIG_SPI is not set
>  CONFIG_I2C=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
> index 28ad013..dbc2962 100644
> --- a/arch/arm/configs/mx21ads_defconfig
> +++ b/arch/arm/configs/mx21ads_defconfig
> @@ -35,6 +35,7 @@ CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_CS8900=y
>  # CONFIG_SPI is not set
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  # CONFIG_DRIVER_CFI_INTEL is not set
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
> index 077e799..b3fdf84 100644
> --- a/arch/arm/configs/mx27ads_defconfig
> +++ b/arch/arm/configs/mx27ads_defconfig
> @@ -33,6 +33,7 @@ CONFIG_NET_PING=y
>  CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_SPI_IMX=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  # CONFIG_DRIVER_CFI_INTEL is not set
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
> index 6d32c56..8e7a0b3 100644
> --- a/arch/arm/configs/netx_nxdb500_defconfig
> +++ b/arch/arm/configs/netx_nxdb500_defconfig
> @@ -26,5 +26,6 @@ CONFIG_NET_PING=y
>  CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_NETX=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
> index ac9269d..f911951 100644
> --- a/arch/arm/configs/pcm027_defconfig
> +++ b/arch/arm/configs/pcm027_defconfig
> @@ -54,6 +54,7 @@ CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_SERIAL_PXA=y
>  CONFIG_DRIVER_NET_SMC91111=y
>  # CONFIG_SPI is not set
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_VIDEO=y
>  CONFIG_DRIVER_VIDEO_PXA=y
> diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
> index e223e77..c9a7141 100644
> --- a/arch/arm/configs/pm9263_defconfig
> +++ b/arch/arm/configs/pm9263_defconfig
> @@ -33,6 +33,7 @@ CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_MACB=y
>  # CONFIG_SPI is not set
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_W1=y
> diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
> index 818bbd0..21a2571 100644
> --- a/arch/arm/configs/scb9328_defconfig
> +++ b/arch/arm/configs/scb9328_defconfig
> @@ -52,6 +52,7 @@ CONFIG_FS_TFTP=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_DRIVER_NET_DM9K=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
> index d01c7e7..086a971 100644
> --- a/arch/blackfin/configs/ipe337_defconfig
> +++ b/arch/blackfin/configs/ipe337_defconfig
> @@ -25,5 +25,6 @@ CONFIG_NET_PING=y
>  CONFIG_CMD_TFTP=y
>  CONFIG_FS_TFTP=y
>  CONFIG_DRIVER_NET_SMC911X=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
> diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
> index 5e27cc8..4189990 100644
> --- a/arch/nios2/configs/generic_defconfig
> +++ b/arch/nios2/configs/generic_defconfig
> @@ -27,6 +27,7 @@ CONFIG_CMD_PARTITION=y
>  CONFIG_NET=y
>  CONFIG_NET_PING=y
>  CONFIG_DRIVER_NET_TSE=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_FS_TFTP=y
>  CONFIG_ZLIB=y
> diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
> index d2ff16c..9743841 100644
> --- a/arch/ppc/configs/pcm030_defconfig
> +++ b/arch/ppc/configs/pcm030_defconfig
> @@ -36,6 +36,7 @@ CONFIG_FS_TFTP=y
>  CONFIG_ARCH_MPC5XXX=y
>  CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
>  CONFIG_DRIVER_NET_MPC5200=y
> +CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
>  CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_ZLIB=y
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index 988ec9e..2ae05c2 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -4,7 +4,6 @@ source "drivers/serial/Kconfig"
>  source "drivers/net/Kconfig"
>  source "drivers/spi/Kconfig"
>  source "drivers/i2c/Kconfig"
> -source "drivers/nor/Kconfig"
>  source "drivers/mtd/Kconfig"
>  source "drivers/ata/Kconfig"
>  source "drivers/usb/Kconfig"
> diff --git a/drivers/Makefile b/drivers/Makefile
> index 1fddee0..f81bf99 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -3,7 +3,6 @@ obj-$(CONFIG_ARM_AMBA) += amba/
>  obj-y	+= net/
>  obj-y	+= serial/
>  obj-y	+= mtd/
> -obj-y	+= nor/
>  obj-y	+= usb/
>  obj-$(CONFIG_DISK) += ata/
>  obj-$(CONFIG_SPI) += spi/
> diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
> index 9450f5d..e94e6b1 100644
> --- a/drivers/mtd/Kconfig
> +++ b/drivers/mtd/Kconfig
> @@ -21,6 +21,7 @@ config MTD_RAW_DEVICE
>  	prompt "mtdraw device to read/write both data+oob"
>  
>  source "drivers/mtd/devices/Kconfig"
> +source "drivers/mtd/nor/Kconfig"
>  source "drivers/mtd/nand/Kconfig"
>  source "drivers/mtd/ubi/Kconfig"
>  
> diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
> index 4f97d9a..82b2cc9 100644
> --- a/drivers/mtd/Makefile
> +++ b/drivers/mtd/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_NAND)			+= nand/
> +obj-$(CONFIG_DRIVER_CFI)		+= nor/
>  obj-$(CONFIG_UBI)			+= ubi/
>  obj-y					+= devices/
>  obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
> diff --git a/drivers/nor/Kconfig b/drivers/mtd/nor/Kconfig
> similarity index 96%
> rename from drivers/nor/Kconfig
> rename to drivers/mtd/nor/Kconfig
> index c8ce24f..591d1ac 100644
> --- a/drivers/nor/Kconfig
> +++ b/drivers/mtd/nor/Kconfig
> @@ -1,7 +1,5 @@
> -menu "flash drivers"
> -
>  menuconfig DRIVER_CFI
> -	bool "CFI"
> +	bool "CFI NOR flash support"
>  	help
>  	  If you have NOR Flash devices connected to your system and wish
>  	  to use them say yes here.
> @@ -55,5 +53,3 @@ config CFI_BUFFER_WRITE
>  	depends on DRIVER_CFI || DRIVER_CFI
>  
>  endif
> -
> -endmenu
> diff --git a/drivers/nor/Makefile b/drivers/mtd/nor/Makefile
> similarity index 100%
> rename from drivers/nor/Makefile
> rename to drivers/mtd/nor/Makefile
> diff --git a/drivers/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> similarity index 93%
> rename from drivers/nor/cfi_flash.c
> rename to drivers/mtd/nor/cfi_flash.c
> index 637f98b..76fed02 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -454,10 +454,8 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
>  	return sector;
>  }
>  
> -static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
> -		int verbose)
> +static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
>  {
> -        struct flash_info *finfo = (struct flash_info *)cdev->priv;
>          unsigned long start, end;
>          int i, ret = 0;
>  
> @@ -467,9 +465,6 @@ static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
>          end   = find_sector(finfo, (unsigned long)finfo->base + offset +
>  			count - 1);
>  
> -	if (verbose)
> -		init_progression_bar(end - start);
> -
>          for (i = start; i <= end; i++) {
>                  ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
>                  if (ret)
> @@ -479,21 +474,11 @@ static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
>  			ret = -EINTR;
>  			goto out;
>  		}
> -
> -		if (verbose)
> -			show_progress(i - start);
>          }
>  out:
> -	if (verbose)
> -	        putchar('\n');
>          return ret;
>  }
>  
> -static int cfi_erase(struct cdev *cdev, size_t count, loff_t offset)
> -{
> -	return __cfi_erase(cdev, count, offset, 1);
> -}
> -
>  /*
>   * Copy memory to flash, returns:
>   * 0 - OK
> @@ -626,18 +611,13 @@ static int flash_real_protect (struct flash_info *info, long sector, int prot)
>  	return retcode;
>  }
>  
> -static int cfi_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
> +static int cfi_mtd_protect(struct flash_info *finfo, loff_t offset, size_t len, int prot)
>  {
> -	struct flash_info *finfo = (struct flash_info *)cdev->priv;
>  	unsigned long start, end;
>  	int i, ret = 0;
> -	const char *action = (prot? "protect" : "unprotect");
> -
> -	printf("%s: %s 0x%p (size %zu)\n", __func__,
> -	       action, finfo->base + offset, count);
>  
>  	start = find_sector(finfo, (unsigned long)finfo->base + offset);
> -	end   = find_sector(finfo, (unsigned long)finfo->base + offset + count - 1);
> +	end   = find_sector(finfo, (unsigned long)finfo->base + offset + len - 1);
>  
>  	for (i = start; i <= end; i++) {
>  		ret = flash_real_protect (finfo, i, prot);
> @@ -645,20 +625,21 @@ static int cfi_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
>  			goto out;
>  	}
>  out:
> -	putchar('\n');
>  	return ret;
>  }
>  
> -static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
> +static int cfi_mtd_lock(struct mtd_info *mtd, loff_t offset, size_t len)
>  {
> -        struct flash_info *finfo = (struct flash_info *)cdev->priv;
> -        int ret;
> +	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
> +
> +	return cfi_mtd_protect(finfo, offset, len, 1);
> +}
>  
> -	debug("cfi_write: buf=0x%p addr=0x%p count=0x%08zx\n",
> -			buf, finfo->base + offset, count);
> +static int cfi_mtd_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
> +{
> +	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
>  
> -	ret = write_buff(finfo, buf, (unsigned long)finfo->base + offset, count);
> -	return ret == 0 ? count : -1;
> +	return cfi_mtd_protect(finfo, offset, len, 0);
>  }
>  
>  static void cfi_info (struct device_d* dev)
> @@ -908,15 +889,6 @@ int flash_isset(struct flash_info *info, flash_sect_t sect,
>  	return retval;
>  }
>  
> -struct file_operations cfi_ops = {
> -	.read    = mem_read,
> -	.write   = cfi_write,
> -	.lseek  = dev_lseek_default,
> -	.erase   = cfi_erase,
> -	.protect = cfi_protect,
> -	.memmap  = generic_memmap_ro,
> -};
> -
>  static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
>  		size_t *retlen, u_char *buf)
>  {
> @@ -943,10 +915,9 @@ static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
>  static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
>  {
>  	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
> -	struct cdev *cdev = &info->cdev;
>  	int ret;
>  
> -	ret = __cfi_erase(cdev, instr->len, instr->addr, 0);
> +	ret = cfi_erase(info, instr->len, instr->addr);
>  
>  	if (ret) {
>  		instr->state = MTD_ERASE_FAILED;
> @@ -966,21 +937,23 @@ static void cfi_init_mtd(struct flash_info *info)
>  	mtd->read = cfi_mtd_read;
>  	mtd->write = cfi_mtd_write;
>  	mtd->erase = cfi_mtd_erase;
> +	mtd->lock = cfi_mtd_lock;
> +	mtd->unlock = cfi_mtd_unlock;
>  	mtd->size = info->size;
> -	mtd->name = info->cdev.name;
>  	mtd->erasesize = info->eraseregions[1].erasesize; /* FIXME */
>  	mtd->writesize = 1;
>  	mtd->subpage_sft = 0;
>  	mtd->eraseregions = info->eraseregions;
>  	mtd->numeraseregions = info->numeraseregions;
>  	mtd->flags = MTD_CAP_NORFLASH;
> -	info->cdev.mtd = mtd;
> +	mtd->type = MTD_NORFLASH;
> +
> +	add_mtd_device(mtd, "nor");
>  }
>  
>  static int cfi_probe (struct device_d *dev)
>  {
>  	struct flash_info *info = xzalloc(sizeof(*info));
> -	int cfinum;
>  
>  	dev->priv = (void *)info;
>  
> @@ -999,24 +972,7 @@ static int cfi_probe (struct device_d *dev)
>  	dev_info(dev, "found cfi flash at %p, size %ld\n",
>  			info->base, info->size);
>  
> -	if (dev->id < 0)
> -		cfinum = cdev_find_free_index("nor");
> -	else
> -		cfinum = dev->id;
> -
> -	info->cdev.name = asprintf("nor%d", cfinum);
> -	info->cdev.size = info->size;
> -	info->cdev.dev = dev;
> -	info->cdev.ops = &cfi_ops;
> -	info->cdev.priv = info;
> -
> -	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD))
> -		cfi_init_mtd(info);
> -
> -	devfs_create(&info->cdev);
> -
> -	if (dev->device_node)
> -		of_parse_partitions(info->cdev.name, dev->device_node);
> +	cfi_init_mtd(info);
>  
>  	return 0;
>  }
> diff --git a/drivers/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
> similarity index 99%
> rename from drivers/nor/cfi_flash.h
> rename to drivers/mtd/nor/cfi_flash.h
> index 944cdde..bcf5c40 100644
> --- a/drivers/nor/cfi_flash.h
> +++ b/drivers/mtd/nor/cfi_flash.h
> @@ -74,7 +74,6 @@ struct flash_info {
>  	ulong	addr_unlock1;		/* unlock address 1 for AMD flash roms	*/
>  	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
>  	struct cfi_cmd_set *cfi_cmd_set;
> -	struct cdev cdev;
>  	struct mtd_info mtd;
>  	int numeraseregions;
>  	struct mtd_erase_region_info *eraseregions;
> diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/mtd/nor/cfi_flash_amd.c
> similarity index 100%
> rename from drivers/nor/cfi_flash_amd.c
> rename to drivers/mtd/nor/cfi_flash_amd.c
> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/mtd/nor/cfi_flash_intel.c
> similarity index 100%
> rename from drivers/nor/cfi_flash_intel.c
> rename to drivers/mtd/nor/cfi_flash_intel.c
> -- 
> 1.7.10.4
> 
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
