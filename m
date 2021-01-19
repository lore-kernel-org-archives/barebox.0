Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1o2q-0003mV-O3
 for barebox@lists.infradead.org; Tue, 19 Jan 2021 10:15:29 +0000
Date: Tue, 19 Jan 2021 11:15:27 +0100
Message-ID: <20210119101527.GW19063@pengutronix.de>
References: <20210118205528.9797-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118205528.9797-1-m.felsch@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/4] nvmem: sync stub return values with linux code
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 18, 2021 at 09:55:25PM +0100, Marco Felsch wrote:
> Based on linux commit:
> 8<------------------------------------------------------------------------
> commit 20167b70c894f20cd01e2579fad206de440816ef
> Author: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Date:   Fri Sep 21 06:40:22 2018 -0700
> 
>     nvmem: use EOPNOTSUPP instead of ENOSYS
> 
>     Checkpatch emits warnings when using ENOSYS. Some of the frameworks
>     started using EOPNOTSUPP as return values for API functions when given
>     subsystem is disabled in Kconfig.
> 
>     Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 8<------------------------------------------------------------------------
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/linux/nvmem-consumer.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
> index 9e0fd4265e..2f79014c0f 100644
> --- a/include/linux/nvmem-consumer.h
> +++ b/include/linux/nvmem-consumer.h
> @@ -50,7 +50,7 @@ int nvmem_device_cell_write(struct nvmem_device *nvmem,
>  static inline struct nvmem_cell *nvmem_cell_get(struct device_d *dev,
>  						const char *name)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-EOPNOTSUPP);
>  }
>  
>  static inline void nvmem_cell_put(struct nvmem_cell *cell)
> @@ -59,26 +59,26 @@ static inline void nvmem_cell_put(struct nvmem_cell *cell)
>  
>  static inline char *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-EOPNOTSUPP);
>  }
>  
>  static inline void *nvmem_cell_get_and_read(struct device_node *np,
>  					    const char *cell_name,
>  					    size_t bytes)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-EOPNOTSUPP);
>  }
>  
>  static inline int nvmem_cell_write(struct nvmem_cell *cell,
>  				    const char *buf, size_t len)
>  {
> -	return -ENOSYS;
> +	return -EOPNOTSUPP;
>  }
>  
>  static inline struct nvmem_device *nvmem_device_get(struct device_d *dev,
>  						    const char *name)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return ERR_PTR(-EOPNOTSUPP);
>  }
>  
>  static inline void nvmem_device_put(struct nvmem_device *nvmem)
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
