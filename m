Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHsf9-0001rz-0m
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 08:12:24 +0000
Date: Wed, 11 Apr 2012 10:12:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120411081214.GK3852@pengutronix.de>
References: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH v2] arm: fix zImage support when a oftree is concatenated
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 11, 2012 at 08:38:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> When a oftree is concatenated,the zImage is bigger than the size specified in
> the zImage header. Detect it and copy it too.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/bootm.c |   49 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 49 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index defc89b..dc379d8 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -123,6 +123,51 @@ struct zimage_header {
>  
>  #define ZIMAGE_MAGIC 0x016F2818
>  
> +static int do_bootz_linux_fdt(int fd, struct image_data *data)
> +{
> +	struct fdt_header __header, *header;
> +	struct resource *r = data->os_res;
> +	struct resource *of_res = data->os_res;
> +	void *oftree;
> +	int ret;
> +
> +	u32 end;
> +
> +	header = &__header;
> +	ret = read(fd, header, sizeof(*header));
> +	if (ret < sizeof(*header))
> +		return ret;
> +
> +	if (file_detect_type(header) != filetype_oftree)
> +		return -ENXIO;
> +
> +	end = be32_to_cpu(header->totalsize);
> +
> +	of_res = request_sdram_region("oftree", r->start + r->size, end);
> +	if (!of_res) {
> +		perror("zImage: oftree request_sdram_region");
> +		return -ENOMEM;
> +	}
> +
> +	oftree = (void*)of_res->start;
> +
> +	memcpy(oftree, header, sizeof(*header));
> +
> +	end -= sizeof(*header);
> +
> +	ret = read_full(fd, oftree + sizeof(*header), end);
> +	if (ret < 0)
> +		return ret;
> +	if (ret < end) {
> +		printf("premature end of image\n");
> +		return -EIO;
> +	}

I am missing a call to of_fix_tree() here. Without it the command line
will not be passed to the kernel. Maybe this is not really the intended
usecase for appending an oftree to the zImage. Being able to append the
oftree to the zImage seems more for bootloaders which do not have native
support for devicetrees.

We could be more clever here and read the oftree to a seperately
allocated area and set data->oftree then.

Sascha

> +
> +	pr_info("zImage: concatenated oftree detected\n");
> +
> +	return 0;
> +}
> +
>  static int do_bootz_linux(struct image_data *data)
>  {
>  	int fd, ret, swap = 0;
> @@ -196,6 +241,10 @@ static int do_bootz_linux(struct image_data *data)
>  			*(u32 *)ptr = swab32(*(u32 *)ptr);
>  	}
>  
> +	ret = do_bootz_linux_fdt(fd, data);
> +	if (ret && ret != -ENXIO)
> +		return ret;
> +
>  	return __do_bootm_linux(data, swap);
>  
>  err_out:
> -- 
> 1.7.9.1
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
