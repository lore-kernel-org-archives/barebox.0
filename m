Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYlb4-00050o-O7
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 05:05:28 +0000
Date: Fri, 29 Jun 2018 07:05:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180629050512.n6bopw7hyixsjgak@pengutronix.de>
References: <20180628044227.15049-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180628044227.15049-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] nvmem: Introduce nvmem_cell_get_and_read()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 27, 2018 at 09:42:26PM -0700, Andrey Smirnov wrote:
> Introduce nvmem_cell_get_and_read() that combines getting a NVMEM cell
> by name and reading its contents.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Changes since [v1]:
> 
>     - Added missing newline to core.c

Applied, thanks

Sascha

> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-June/033857.html
> 
>  drivers/nvmem/core.c           | 23 +++++++++++++++++++++++
>  include/linux/nvmem-consumer.h | 10 ++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 53b934bb3..c0f61f453 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -750,3 +750,26 @@ int nvmem_device_write(struct nvmem_device *nvmem,
>  	return bytes;
>  }
>  EXPORT_SYMBOL_GPL(nvmem_device_write);
> +
> +void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
> +			      size_t bytes)
> +{
> +	struct nvmem_cell *cell;
> +	void *value;
> +	size_t len;
> +
> +	cell = of_nvmem_cell_get(np, cell_name);
> +	if (IS_ERR(cell))
> +		return cell;
> +
> +	value = nvmem_cell_read(cell, &len);
> +	if (!IS_ERR(value) && len != bytes) {
> +		kfree(value);
> +		value = ERR_PTR(-EINVAL);
> +	}
> +
> +	nvmem_cell_put(cell);
> +
> +	return value;
> +}
> +EXPORT_SYMBOL_GPL(nvmem_cell_get_and_read);
> diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
> index 606cadb49..0ec2f05b9 100644
> --- a/include/linux/nvmem-consumer.h
> +++ b/include/linux/nvmem-consumer.h
> @@ -32,6 +32,9 @@ struct nvmem_cell_info {
>  struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *name);
>  void nvmem_cell_put(struct nvmem_cell *cell);
>  void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
> +void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
> +			      size_t bytes);
> +
>  int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
>  
>  /* direct nvmem device read/write interface */
> @@ -55,6 +58,13 @@ static inline char *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> +static inline void *nvmem_cell_get_and_read(struct device_node *np,
> +					    const char *cell_name,
> +					    size_t bytes)
> +{
> +	return ERR_PTR(-ENOSYS);
> +}
> +
>  static inline int nvmem_cell_write(struct nvmem_cell *cell,
>  				    const char *buf, size_t len)
>  {
> -- 
> 2.17.1
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
