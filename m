Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4q7F-0006wc-7N
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:56:02 +0000
Date: Mon, 11 Feb 2013 10:55:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211095558.GX1906@pengutronix.de>
References: <1360515537-1703-1-git-send-email-vicencb@gmail.com>
 <1360515537-1703-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360515537-1703-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 1/2] DeviceTree: add support for initrd in the DT
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 10, 2013 at 05:58:56PM +0100, Vicente Bergas wrote:
> Add the initrd start and end address to the DT, code comes from u-boot.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/lib/armlinux.c |  2 ++
>  common/oftree.c         | 66 +++++++++++++++++++++++++++++++++++++++++++++++++
>  include/of.h            |  1 +
>  3 files changed, 69 insertions(+)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 40a63ea..8052ca4 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -266,6 +266,8 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  
>  	if (oftree) {
>  		printf("booting Linux kernel with devicetree\n");
> +		fdt_initrd(oftree, initrd_address,
> +			initrd_address+initrd_size, 1);

Does this compile with CONFIG_FDT disabled? You probably have to provide
a static inline function for this case.

Nitpick: Please add spaces left and right from operators.

Sascha

>  		params = oftree;
>  	} else {
>  		setup_tags(initrd_address, initrd_size, swap);
> diff --git a/common/oftree.c b/common/oftree.c
> index 0df5209..7c118d2 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -246,6 +246,72 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
>  	return nodeoffset;
>  }
>  
> +int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force)
> +{
> +	int nodeoffset;
> +	int err, j, total;
> +	u32 tmp;
> +	const char *path;
> +	uint64_t addr, size;
> +
> +	/* Find the "chosen" node */
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
> +	 * Look for an existing entry and update it. If we don't find
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
> +	if (!path || force) {
> +		tmp = __cpu_to_be32(initrd_start);
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
