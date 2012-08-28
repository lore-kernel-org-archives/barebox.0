Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6FhH-0000Ul-Gz
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 06:54:48 +0000
Date: Tue, 28 Aug 2012 08:54:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828065445.GS26594@pengutronix.de>
References: <1346064980-7769-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346064980-7769-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [RFC] xload: get barebox size from barebox_arm_head
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

Looks mostly good.

On Mon, Aug 27, 2012 at 12:56:20PM +0200, Jan Weitzel wrote:
>  #include <fcntl.h>
>  #include <mach/xload.h>
>  #include <sizes.h>
> +#include <asm/barebox-arm-head.h>
>  
> -void *omap_xload_boot_nand(int offset, int size)
> +void *read_image_head(const char *name)
> +{
> +	void *header = xmalloc(ARM_HEAD_SIZE);
> +	struct cdev *cdev;
> +	int ret;
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
> +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> +	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
> +
> +	if (!head)
> +		return 0;

Please drop this check...

> +
> +	if (!strcmp(pmagic, "barebox"))
> +		ret = *psize;
> +	debug("Detected barebox image size %u\n", ret);
> +
> +	return ret;
> +}
> +
> +void *omap_xload_boot_nand(int offset)
>  {
>  	int ret;
> -	void *to = xmalloc(size);
> +	int size;
> +	void *to;
>  	struct cdev *cdev;
>  
> -	devfs_add_partition("nand0", offset, size, PARTITION_FIXED, "x");
> +	devfs_add_partition("nand0", offset, SZ_1M, PARTITION_FIXED, "x");
>  	dev_add_bb_dev("x", "bbx");
>  
> +	size = get_image_size(read_image_head("bbx"));

...and instead bail out directly here if you are unable to read the
image head. If you are unable to read even the head of the image there
is no point in trying to continue.

Sascha


> +	if (!size)
> +		size = SZ_512K;
> +
> +	to = xmalloc(size);
> +
>  	cdev = cdev_open("bbx", O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open nand\n");
> @@ -80,7 +127,7 @@ int run_shell(void)
>  		printf("unknown boot source. Fall back to nand\n");
>  	case OMAP_BOOTSRC_NAND:
>  		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K, SZ_512K);
> +		func = omap_xload_boot_nand(SZ_128K);
>  		break;
>  	}
>  
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
