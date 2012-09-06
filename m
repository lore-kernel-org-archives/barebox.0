Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9g3a-0004w1-IA
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 17:39:59 +0000
Date: Thu, 6 Sep 2012 19:39:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906173956.GH26594@pengutronix.de>
References: <1346926816-6695-2-git-send-email-jlu@pengutronix.de>
 <1346935271-15317-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346935271-15317-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v5] xload: get barebox size from barebox_arm_head
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 02:41:11PM +0200, Jan Weitzel wrote:
> Add functions to read the barebox_arm_head, check barebox magicword
> and read out the barebox image size.
> Create a inital partion of 1Mb to access the barebox image on nand.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks.

The current code explicitely checks for a barebox image, so no need to
increase the partition size. If someone wants to boot the kernel
directly here there's more work to do anyway.

Sascha


> ---
> v2: remove fall back if header read fail 
> v3: fix header check, rebase master 
> v4: factorize barebox detection
> v5: mv devines to include/filetype.h
> 
>  arch/arm/include/asm/barebox-arm-head.h |    9 +++++
>  arch/arm/mach-omap/include/mach/xload.h |    2 +-
>  arch/arm/mach-omap/xload.c              |   57 ++++++++++++++++++++++++++++--
>  common/filetype.c                       |    2 +-
>  include/filetype.h                      |   16 +++++++++
>  4 files changed, 71 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
> index 844b57f..26f1b68 100644
> --- a/arch/arm/mach-omap/include/mach/xload.h
> +++ b/arch/arm/mach-omap/include/mach/xload.h
> @@ -1,7 +1,7 @@
>  #ifndef _MACH_XLOAD_H
>  #define _MACH_XLOAD_H
>  
> -void *omap_xload_boot_nand(int offset, int size);
> +void *omap_xload_boot_nand(int offset);
>  void *omap_xload_boot_mmc(void);
>  
>  enum omap_boot_src {
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 13024ab..0afeea9 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -7,16 +7,65 @@
>  #include <fcntl.h>
>  #include <mach/xload.h>
>  #include <sizes.h>
> +#include <filetype.h>
>  
> -void *omap_xload_boot_nand(int offset, int size)
> +void *read_image_head(const char *name)
>  {
> +	void *header = xmalloc(ARM_HEAD_SIZE);
> +	struct cdev *cdev;
>  	int ret;
> -	void *to = xmalloc(size);
> +
> +	cdev = cdev_open(name, O_RDONLY);
> +	if (!cdev) {
> +		printf("failed to open partition\n");
> +		return NULL;
> +	}
> +
> +	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
> +	cdev_close(cdev);
> +
> +	if (ret != ARM_HEAD_SIZE) {
> +		printf("failed to read from partition\n");
> +		return NULL;
> +	}
> +
> +	return header;
> +}
> +
> +unsigned int get_image_size(void *head)
> +{
> +	unsigned int ret = 0;
> +	unsigned int *psize = head + ARM_HEAD_SIZE_OFFSET;
> +
> +	if (is_barebox_arm_head(head))
> +		ret = *psize;
> +	debug("Detected barebox image size %u\n", ret);
> +
> +	return ret;
> +}
> +
> +void *omap_xload_boot_nand(int offset)
> +{
> +	int ret;
> +	int size;
> +	void *to, *header;
>  	struct cdev *cdev;
>  
> -	devfs_add_partition("nand0", offset, size, DEVFS_PARTITION_FIXED, "x");
> +	devfs_add_partition("nand0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
>  	dev_add_bb_dev("x", "bbx");
>  
> +	header = read_image_head("bbx");
> +	if (header == NULL)
> +		return NULL;
> +
> +	size = get_image_size(header);
> +	if (!size) {
> +		printf("failed to get image size\n");
> +		return NULL;
> +	}
> +
> +	to = xmalloc(size);
> +
>  	cdev = cdev_open("bbx", O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open nand\n");
> @@ -80,7 +129,7 @@ int run_shell(void)
>  		printf("unknown boot source. Fall back to nand\n");
>  	case OMAP_BOOTSRC_NAND:
>  		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> +		func = omap_xload_boot_nand(SZ_128K);
>  		break;
>  	}
>  
> diff --git a/common/filetype.c b/common/filetype.c
> index e736d43..6306fdc 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -75,7 +75,7 @@ enum filetype file_detect_type(void *_buf)
>  
>  	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
>  		return filetype_sh;
> -	if (buf[8] == 0x65726162 && buf[9] == 0x00786f62)
> +	if (is_barebox_arm_head(_buf))
>  		return filetype_arm_barebox;
>  	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
>  		return filetype_arm_zimage;
> diff --git a/include/filetype.h b/include/filetype.h
> index 179ec0f..6ac1c1c 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -25,4 +25,20 @@ const char *file_type_to_string(enum filetype f);
>  enum filetype file_detect_type(void *_buf);
>  enum filetype file_name_detect_type(const char *filename);
>  
> +#define ARM_HEAD_SIZE			0x30
> +#define ARM_HEAD_MAGICWORD_OFFSET	0x20
> +#define ARM_HEAD_SIZE_OFFSET		0x2C
> +
> +#ifdef CONFIG_ARM
> +static inline int is_barebox_arm_head(const char *head)
> +{
> +	return !strcmp(head + ARM_HEAD_MAGICWORD_OFFSET, "barebox");
> +}
> +#else
> +static inline int is_barebox_arm_head(const char *head)
> +{
> +	return 0
> +}
> +#endif
> +
>  #endif /* __FILE_TYPE_H */
> -- 
> 1.7.0.4
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
