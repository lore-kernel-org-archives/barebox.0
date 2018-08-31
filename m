Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvdCZ-0007Bw-Mo
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:46:41 +0000
Date: Fri, 31 Aug 2018 08:46:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831064627.66m226va5l4yfypa@pengutronix.de>
References: <20180831051826.13587-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180831051826.13587-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/5] driver: Adopt DMA mask concept from Linux
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 30, 2018 at 10:18:22PM -0700, Andrey Smirnov wrote:
> In order to be able to detect cases where DMA isn't capable of
> reaching every memory address, port the concept of DMA mask,
> dma_set_mask() function and add appropriate check to
> dma_mapping_error().
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  include/dma.h    | 12 +++++++++++-
>  include/driver.h |  2 ++
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dma.h b/include/dma.h
> index 5fdcb1733..7f9578263 100644
> --- a/include/dma.h
> +++ b/include/dma.h
> @@ -35,11 +35,21 @@ dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
>  void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
>  		      enum dma_data_direction dir);
>  
> +#define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
> +
> +#define DMA_MASK_NONE	0x0ULL
> +
> +static inline void dma_set_mask(struct device_d *dev, u64 dma_mask)
> +{
> +	dev->dma_mask = dma_mask;
> +}
> +
>  #define DMA_ERROR_CODE  (~(dma_addr_t)0)
>  
>  static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
>  {
> -	return dma_addr == DMA_ERROR_CODE;
> +	return dma_addr == DMA_ERROR_CODE ||
> +		(dev->dma_mask && dma_addr > dev->dma_mask);
>  }
>  
>  /* streaming DMA - implement the below calls to support HAS_DMA */
> diff --git a/include/driver.h b/include/driver.h
> index 91653b794..1b61f2066 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -82,6 +82,8 @@ struct device_d {
>  
>  	const struct of_device_id *of_id_entry;
>  
> +	u64 dma_mask;
> +
>  	void    (*info) (struct device_d *);
>  	/*
>  	 * For devices which take longer to probe this is called
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
