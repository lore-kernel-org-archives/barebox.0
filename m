Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZMr-0004sq-Cc
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:03:02 +0000
Received: from mail641.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1CE5ADC12F4
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:13:19 +0100 (CET)
Date: Sun, 10 Feb 2013 17:01:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130210160150.GV19322@game.jcrosoft.org>
References: <1360509726-885-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360509726-885-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] DeviceTree: add support for initrd in the DT
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 16:22 Sun 10 Feb     , Vicente Bergas wrote:
> Add the initrd start and end address to the DT, code comes from u-boot.
> Use this addition on the ArchosG9 board as an example.
split it in 2 patch


> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/boards/archosg9/env/config       |  1 +
>  arch/arm/configs/archosg9_defconfig       |  4 ++
>  arch/arm/configs/archosg9_xload_defconfig |  1 +
>  arch/arm/lib/armlinux.c                   |  1 +
>  common/oftree.c                           | 66 +++++++++++++++++++++++++++++++
>  include/of.h                              |  1 +
>  6 files changed, 74 insertions(+)
> 
> diff --git a/arch/arm/boards/archosg9/env/config b/arch/arm/boards/archosg9/env/config
> index 8f3edb0..60467f6 100644
> --- a/arch/arm/boards/archosg9/env/config
> +++ b/arch/arm/boards/archosg9/env/config
> @@ -1,3 +1,4 @@
>  global.bootm.image="${TARGET_ROOT}/boot/zImage"
>  global.bootm.initrd="${TARGET_ROOT}/boot/initrd"
> +global.bootm.oftree="${TARGET_ROOT}/boot/omap4-archosg9.dtb"
>  global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
> diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
> index 9a051da..337a7b7 100644
> --- a/arch/arm/configs/archosg9_defconfig
> +++ b/arch/arm/configs/archosg9_defconfig
> @@ -45,6 +45,9 @@ CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
>  CONFIG_CMD_BOOTM_AIMAGE=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_OF_PROPERTY=y
> +CONFIG_CMD_OF_NODE=y
>  CONFIG_CMD_TIMEOUT=y
>  CONFIG_CMD_PARTITION=y
>  CONFIG_CMD_MAGICVAR=y
> @@ -68,3 +71,4 @@ CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_OMAP4_USBBOOT=y
> +CONFIG_OFDEVICE=y
> diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
> index 83743fa..b25778a 100644
> --- a/arch/arm/configs/archosg9_xload_defconfig
> +++ b/arch/arm/configs/archosg9_xload_defconfig
> @@ -21,4 +21,5 @@ CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
>  # CONFIG_SPI is not set
>  # CONFIG_FS_RAMFS is not set
>  # CONFIG_FS_DEVFS is not set
> +CONFIG_FS_FAT=y
>  CONFIG_FS_OMAP4_USBBOOT=y
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 40a63ea..166984a 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -266,6 +266,8 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  
>  	if (oftree) {
>  		printf("booting Linux kernel with devicetree\n");
> +		fdt_initrd(oftree, initrd_address,
> +			initrd_address+initrd_size, 1);
why you do not check the return?
>  		params = oftree;
>  	} else {
>  		setup_tags(initrd_address, initrd_size, swap);
> diff --git a/common/oftree.c b/common/oftree.c
> index 0df5209..3ec6a63 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -246,6 +246,72 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
>  	return nodeoffset;
>  }
>  
> +int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force)
> +{
> +	int   nodeoffset;
use tab or 1 space
> +	int   err, j, total;
> +	u32   tmp;
> +	const char *path;
> +	uint64_t addr, size;
> +
> +	/* Find the "chosen" node.  */
> +	nodeoffset = fdt_path_offset(fdt, "/chosen");
> +
> +	/* If there is no "chosen" node in the blob return */
> +	if (nodeoffset < 0) {
> +		printf("fdt_initrd: %s\n", fdt_strerror(nodeoffset));
> +		return nodeoffset;
> +	}
> +
> +	/* just return if initrd_start/end aren't valid */
> +	if ((initrd_start == 0) || (initrd_end == 0))
> +		return 0;
> +
> +	total = fdt_num_mem_rsv(fdt);
> +
> +	/*
> +	 * Look for an existing entry and update it.  If we don't find
> +	 * the entry, we will j be the next available slot.
> +	 */
> +	for (j = 0; j < total; j++) {
> +		err = fdt_get_mem_rsv(fdt, j, &addr, &size);
> +		if (addr == initrd_start) {
> +			fdt_del_mem_rsv(fdt, j);
> +			break;
> +		}
> +	}
> +
> +	err = fdt_add_mem_rsv(fdt, initrd_start, initrd_end - initrd_start);
> +	if (err < 0) {
> +		printf("fdt_initrd: %s\n", fdt_strerror(err));
> +		return err;
> +	}
> +
> +	path = fdt_getprop(fdt, nodeoffset, "linux,initrd-start", NULL);
> +	if ((path == NULL) || force) {
!path
> +		tmp = __cpu_to_be32(initrd_start);
why __cpu_to_be32
> +		err = fdt_setprop(fdt, nodeoffset,
> +			"linux,initrd-start", &tmp, sizeof(tmp));
> +		if (err < 0) {
> +			printf("WARNING: "
> +				"could not set linux,initrd-start %s.\n",
> +				fdt_strerror(err));
> +			return err;
> +		}
> +		tmp = __cpu_to_be32(initrd_end);
> +		err = fdt_setprop(fdt, nodeoffset,
> +			"linux,initrd-end", &tmp, sizeof(tmp));
> +		if (err < 0) {
> +			printf("WARNING: could not set linux,initrd-end %s.\n",
> +				fdt_strerror(err));
> +
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int of_fixup_bootargs(struct fdt_header *fdt)
>  {
>  	int nodeoffset;
> diff --git a/include/of.h b/include/of.h
> index d3a310f..dcb4c4b 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -18,6 +18,7 @@ void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop
>  void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *prop,
>  			  u32 val, int create);
>  int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
> +int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force);
>  
>  #define OF_BAD_ADDR      ((u64)-1)
>  
> -- 
> 1.8.1.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
