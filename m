Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WShcM-0004ni-7C
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 06:47:19 +0000
Date: Wed, 26 Mar 2014 07:46:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140326064654.GQ17250@pengutronix.de>
References: <53316470.4040004@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53316470.4040004@reverze.net>
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
Subject: Re: [PATCH 1/3] common: driver: Allow for I/O mapped I/O in resource
 requests
To: Michel Stam <michel@reverze.net>
Cc: barebox@lists.infradead.org

On Tue, Mar 25, 2014 at 12:11:44PM +0100, Michel Stam wrote:
> The current resource framework is fully geared towards memory
> mapped I/O.
> This patch adds support for other types of I/O in the resource
> structures / function calls.
> ---
>  common/memory.c        |  2 +-
>  common/resource.c      | 18 ++++++++++++++++--
>  drivers/base/driver.c  | 36 ++++++++++++++++++------------------
>  include/driver.h       | 24 +++++++++++++++++-------
>  include/linux/ioport.h |  5 ++++-
>  5 files changed, 56 insertions(+), 29 deletions(-)
> 
> diff --git a/common/memory.c b/common/memory.c
> index c82bbaa..d36c8df 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -148,7 +148,7 @@ struct resource *request_sdram_region(const char
> *name, resource_size_t start,
>  	for_each_memory_bank(bank) {
>  		struct resource *res;
>  -		res = request_region(bank->res, name, start, start + size - 1);
> +		res = request_region(bank->res, name, start, start + size - 1,
> IORESOURCE_MEM);
>  		if (res)
>  			return res;
>  	}
> diff --git a/common/resource.c b/common/resource.c
> index 5795e79..6600444 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -38,7 +38,7 @@ static int init_resource(struct resource *res,
> const char *name)
>   */
>  struct resource *request_region(struct resource *parent,
>  		const char *name, resource_size_t start,
> -		resource_size_t end)
> +		resource_size_t end, int type)
>  {
>  	struct resource *r, *new;
>  @@ -70,6 +70,10 @@ struct resource *request_region(struct resource
> *parent,
>  			goto ok;
>  		if (start > r->end)
>  			continue;
> +
> +		if (type != resource_type(r->parent))
> +			continue;
> +
>  		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
>  				__func__,
>  				(unsigned long long)start,
> @@ -89,6 +93,7 @@ ok:
>  	new->start = start;
>  	new->end = end;
>  	new->parent = parent;
> +	new->flags = type;
>  	list_add_tail(&new->sibling, &r->sibling);
>   	return new;
> @@ -123,5 +128,14 @@ struct resource iomem_resource = {
>  struct resource *request_iomem_region(const char *name,
>  		resource_size_t start, resource_size_t end)
>  {
> -	return request_region(&iomem_resource, name, start, end);
> +	return request_region(&iomem_resource, name, start, end, IORESOURCE_MEM);
> +}
> +
> +/*
> + * request an io region inside the io space
> + */
> +struct resource *request_io_region(const char *name,
> +		resource_size_t start, resource_size_t end,int type)
> +{
> +	return request_region(&iomem_resource, name, start, end, type);
>  }

iomem and memory really are two different resource trees. There is
memory from 0x0 to 0xffff and there are also ioports in this region. We
really have two toplevel resources. Also the iports do not span the
whole 32bit area, on x86 they are only up to 0xffff.
You would have to create a ioport command equivalent to the iomem
command we have now.

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
