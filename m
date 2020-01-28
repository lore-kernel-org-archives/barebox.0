Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKDQ-0007DI-Nd
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 06:19:14 +0000
References: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
 <20200128053821.677207-2-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b550d9ba-bc7a-eabf-8c9b-418cee28e683@pengutronix.de>
Date: Tue, 28 Jan 2020 07:19:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200128053821.677207-2-r.czerwinski@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3 1/5] optee: move optee_verify_header() to common
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

Hello Rouven,

On 1/28/20 6:38 AM, Rouven Czerwinski wrote:
> Subsequent patches will use this to verify the header in the PBL, move
> it to common to make it potentially available for both.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/lib32/bootm.c | 12 +++---------
>  common/Makefile        |  1 +
>  common/optee.c         | 19 +++++++++++++++++++
>  include/tee/optee.h    |  5 +++++
>  4 files changed, 28 insertions(+), 9 deletions(-)
>  create mode 100644 common/optee.c
> 
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index 180624445d..d64e705c40 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -137,16 +137,10 @@ static int get_kernel_addresses(size_t image_size,
>  static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
>  {
>  	int ret = 0;
> -	if (hdr->magic != OPTEE_MAGIC) {
> -		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
> -		       hdr->magic, OPTEE_MAGIC);
> -		return -EINVAL;
> -	}
>  
> -	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
> -		pr_err("Only 32bit supported\n");
> -		return -EINVAL;
> -	}
> +	ret = optee_verify_header(hdr);
> +	if (ret < 0)
> +		return ret;
>  
>  	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
>  	if (!data->tee_res) {
> diff --git a/common/Makefile b/common/Makefile
> index 10960169f9..fbdd74a9fd 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -66,6 +66,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
>  obj-$(CONFIG_BOOT)		+= boot.o
>  obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
>  obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
> +obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
>  
>  ifdef CONFIG_PASSWORD
>  
> diff --git a/common/optee.c b/common/optee.c
> new file mode 100644
> index 0000000000..9cbed0a520
> --- /dev/null
> +++ b/common/optee.c
> @@ -0,0 +1,19 @@
> +#include <tee/optee.h>
> +#include <printk.h>
> +#include <asm-generic/errno.h>
> +
> +int optee_verify_header (struct optee_header *hdr)
> +{
> +	if (hdr->magic != OPTEE_MAGIC) {
> +		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
> +			   hdr->magic, OPTEE_MAGIC);

Wouldn't just print "Only 32 bit supported" without any context that this is referring
to OP-TEE loading in particular? Adding a pr_fmt(fmt) "optee: " fmt would fix this.

> +		return -EINVAL;
> +	}
> +
> +	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
> +		pr_err("Only 32bit supported\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> diff --git a/include/tee/optee.h b/include/tee/optee.h
> index 8cfe06d889..9fb27fcec0 100644
> --- a/include/tee/optee.h
> +++ b/include/tee/optee.h
> @@ -10,6 +10,9 @@
>  #ifndef _OPTEE_H
>  #define _OPTEE_H
>  
> +#include <types.h>
> +#include <asm-generic/errno.h>
> +
>  #define OPTEE_MAGIC             0x4554504f
>  #define OPTEE_VERSION           1
>  #define OPTEE_ARCH_ARM32        0
> @@ -27,4 +30,6 @@ struct optee_header {
>  	uint32_t paged_size;
>  };
>  
> +int optee_verify_header (struct optee_header *hdr);
> +
>  #endif /* _OPTEE_H */
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
