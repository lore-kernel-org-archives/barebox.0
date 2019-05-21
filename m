Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzMu-0001ur-7o
 for barebox@lists.infradead.org; Tue, 21 May 2019 07:39:30 +0000
Date: Tue, 21 May 2019 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190521073926.zyniqgtskpakvjgi@pengutronix.de>
References: <20190516141247.22717-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516141247.22717-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: Initial OP-TEE support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 16, 2019 at 04:12:47PM +0200, Rouven Czerwinski wrote:
> diff --git a/arch/arm/cpu/start-kernel-optee.S b/arch/arm/cpu/start-kernel-optee.S
> new file mode 100644
> index 0000000000..ce5ac178a4
> --- /dev/null
> +++ b/arch/arm/cpu/start-kernel-optee.S
> @@ -0,0 +1,14 @@
> +#include <linux/linkage.h>
> +
> +ENTRY(start_kernel_optee)
> +        /*
> +         * r0 = optee
> +         * r1 = kernel
> +         * r2 = oftree
> +         */
> +         mov r4, r0
> +         mov r0, #0
> +         mov lr, r1
> +         mov r1, #0
> +         bx r4
> +ENDPROC(start_kernel_optee)

Please use tabs for indentation.

> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 6573c2ef74..1b1659b315 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -234,6 +234,9 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> +	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> +		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
> +
>  	pr_debug("starting barebox...\n");
>  
>  	start_barebox();
> diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
> index 135f11b860..6af98968fa 100644
> --- a/arch/arm/include/asm/armlinux.h
> +++ b/arch/arm/include/asm/armlinux.h
> @@ -40,6 +40,6 @@ struct image_data;
>  
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		 unsigned long initrd_size, void *oftree,
> -		 enum arm_security_state);
> +		 enum arm_security_state, void *optee);
>  
>  #endif /* __ARCH_ARMLINUX_H */
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index a11d34923d..d3432d3314 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -110,6 +110,15 @@ void *barebox_arm_boot_dtb(void);
>  static inline unsigned long arm_mem_stack_top(unsigned long membase,
>  					      unsigned long endmem)
>  {
> +	/*
> +	 * FIXME:

I think the FIXME can go away. What else should we do about this issue
here?

> +	 * OP-TEE expects to be executed somewhere at the end of RAM.
> +	 * Since we normally occupy all RAM at the end, move ourselves
> +	 * a bit lower.
> +	 */
> +	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> +		endmem -= OPTEE_SIZE;
> +
>  	return endmem - SZ_64K;
>  }
>  
> diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
> index c970f029c5..1cb9fd2e51 100644
> --- a/arch/arm/lib32/armlinux.c
> +++ b/arch/arm/lib32/armlinux.c
> @@ -258,9 +258,11 @@ static void setup_tags(unsigned long initrd_address,
>  
>  }
>  
> +void start_kernel_optee(void *optee, void *kernel, void *oftree);
> +
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		 unsigned long initrd_size, void *oftree,
> -		 enum arm_security_state state)
> +		 enum arm_security_state state, void *optee)
>  {
>  	void (*kernel)(int zero, int arch, void *params) = adr;
>  	void *params = NULL;
> @@ -294,5 +296,9 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
>  	}
>  
> -	kernel(0, architecture, params);
> +	if (optee && IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
> +		start_kernel_optee(optee, kernel, oftree);
> +	} else {
> +		kernel(0, architecture, params);
> +	}
>  }
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index 4cf570e577..c8b6d1d84b 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -19,6 +19,7 @@
>  #include <binfmt.h>
>  #include <restart.h>
>  #include <globalvar.h>
> +#include <tee/optee.h>
>  
>  #include <asm/byteorder.h>
>  #include <asm/setup.h>
> @@ -133,11 +134,75 @@ static int get_kernel_addresses(size_t image_size,
>  	return 0;
>  }
>  
> +static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
> +{
> +	int ret = 0;
> +	if (hdr->magic != OPTEE_MAGIC) {
> +		printf("Invalid header magic 0x%08x, expected 0x%08x\n",
> +		       hdr->magic, OPTEE_MAGIC);

Please use pr_* functions along with a pr_fmt() definition to give these
messages some context.

> +		return -EINVAL;
> +	}
> +
> +	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
> +		printf("Only 32bit supported\n");
> +		return -EINVAL;
> +	}
> +
> +	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
> +	if (!data->tee_res) {
> +		printf("Cannot request SDRAM region 0x%08x-0x%08x: %s\n",
> +		       hdr->init_load_addr_lo, hdr->init_load_addr_lo + hdr->init_size - 1,
> +		       strerror(-EINVAL));
> +		return -EINVAL;
> +	}

Is data->tee_res released anywhere in case of a later failure?

> +
> +	return ret;
> +}
> +
> +static int bootm_load_tee_from_file(struct image_data *data)
> +{
> +	int fd, ret;
> +	struct optee_header hdr;
> +
> +	fd = open(data->tee_file, O_RDONLY);
> +        if (fd < 0) {
> +		printf("Could not open file: %d\n", errno);
> +		return -errno;
> +	}

There are some spaces here which should be tabs.

I usually prefer "%s", strerror(errno)

> +
> +        if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
> +		printf("read failed: %d\n",errno);
> +		ret = -errno;
> +		goto out;
> +	}
> +
> +        if (optee_verify_header_request_region(data, &hdr) < 0) {
> +		printf("verify failed: %d\n",errno);
> +		ret = -errno;
> +		goto out;
> +	}
> +
> +        if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
> +		printf("read header failed: %d\n",errno);
> +		ret = -errno;
> +		goto out;
> +	}
> +
> +	printf("Read optee file to 0x%08x, size 0x%08x\n", data->tee_res->start, hdr.init_size);

resource_size_t should be printed with %pa

> +
> +	ret = 0;
> +out:
> +	close(fd);
> +
> +	return ret;
> +}
> +
>  static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  			    int swap, void *fdt)
>  {
>  	unsigned long kernel;
>  	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
> +	void *tee;
>  	enum arm_security_state state = bootm_arm_security_state();
>  	void *fdt_load_address = NULL;
>  	int ret;
> @@ -189,6 +254,15 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  			return ret;
>  	}
>  
> +	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
> +		if (data->tee_file) {

	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) && data->tee_file)

To save an indention level?

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
