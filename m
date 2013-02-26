Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f43.google.com ([209.85.214.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UARhI-0004WG-7P
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 21:04:25 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm19so2121935bkc.30
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 13:04:21 -0800 (PST)
Date: Tue, 26 Feb 2013 22:05:20 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130226210519.GA4373@x61s.8.8.8.8>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
 <1361909936-2665-14-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361909936-2665-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 13/29] of: make flatten independent of libfdt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Tue, Feb 26, 2013 at 09:18:40PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/oftree.c   |    8 ++-
>  drivers/of/base.c |  180 ++++++++++++++++++++++++++++++++++++++++++++---------
>  include/of.h      |    4 +-
>  3 files changed, 160 insertions(+), 32 deletions(-)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 0df5209..841d2c4 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -329,7 +329,13 @@ struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
>  	int size, align;
>  
>  	if (!fdt) {
> -		fdt = internalfdt = of_flatten_dtb();
> +		struct device_node *root_node;
> +
> +		root_node = of_get_root_node();
> +		if (!root_node)
> +			return NULL;
> +
> +		fdt = internalfdt = of_flatten_dtb(root_node);
>  		if (!fdt)
>  			return NULL;
>  	}
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index d6ca949..cd463e9 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1154,20 +1154,108 @@ err:
>  	return ERR_PTR(ret);
>  }
>  
> -static int __of_flatten_dtb(void *fdt, struct device_node *node)
> +struct fdt {
> +	void *dt;
> +	uint32_t dt_nextofs;
> +	uint32_t dt_size;
> +	char *strings;
> +	uint32_t str_nextofs;
> +	uint32_t str_size;
> +};
> +
> +static inline uint32_t dt_next_ofs(uint32_t curofs, uint32_t len)
> +{
> +	return ALIGN(curofs + len, 4);
> +}
> +
> +static int lstrcpy(char *dest, const char *src)
> +{
> +	int len = 0;
> +	int maxlen = 1023;
> +
> +	while (*src) {
> +		*dest++ = *src++;
> +		len++;
> +		if (!maxlen)
> +			return -ENOSPC;
> +		maxlen--;
> +	}
> +
> +	return len;
> +}
> +
> +static int fdt_ensure_space(struct fdt *fdt, int dtsize)
> +{
> +	/*
> +	 * We assume strings and names have a maximum length of 1024
> +	 * whereas properties can be longer. We allocate new memory
> +	 * if we have less than 1024 bytes (+ the property size left.
> +	 */
> +	if (fdt->str_size - fdt->str_nextofs < 1024) {
> +		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
> +		if (!fdt->strings)
> +			return -ENOMEM;
> +		fdt->str_size *= 2;
> +	}
> +
> +	if (fdt->dt_size - fdt->dt_nextofs < 1024 + dtsize) {
> +		fdt->dt = realloc(fdt->dt, fdt->dt_size * 2);
> +		if (!fdt->dt)
> +			return -ENOMEM;

Leaking memory here. We need to clean fdt->strings.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
