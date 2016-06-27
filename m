Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHPs0-000722-GP
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 06:18:09 +0000
Date: Mon, 27 Jun 2016 08:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160627061746.GT20657@pengutronix.de>
References: <1466777553-14483-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466777553-14483-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] net: smc911x: Add parsing devicetree options
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jun 24, 2016 at 05:12:33PM +0300, Alexander Shiyan wrote:
> This patch adds parsing basic devicetree options for the smc911x driver:
> reg-io-width, reg-shift and smsc,force-(in/ex)ternal-phy, which makes
> driver usable for most DTS-based boards.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/net/smc911x.c               | 54 ++++++++++++++++++++++---------------
>  include/platform_data/eth-smc911x.h |  7 ++---
>  2 files changed, 36 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index fe9d1df..5739ce7 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -34,16 +34,15 @@
>  #include "smc911x.h"
>  
>  struct smc911x_priv {
> -	struct eth_device edev;
> -	struct mii_bus miibus;
> -	void __iomem *base;
> +	struct eth_device	edev;
> +	struct mii_bus		miibus;
> +	void __iomem		*base;
>  
> -	int shift;
> -	int generation;
> -	unsigned int flags;
> -	unsigned int idrev;
> -	unsigned int using_extphy;
> -	unsigned int phy_mask;
> +	u32			shift;
> +	u32			flags;
> +	u32			phy_mask;
> +	u32			idrev;
> +	unsigned int		using_extphy;

Can we drop this alignment please? It generated unncessary patch hunks
and makes a patch harder to read.

>  
>  	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
>  	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
> @@ -497,16 +496,12 @@ static int smc911x_probe(struct device_d *dev)
>  	struct resource *iores;
>  	struct eth_device *edev;
>  	struct smc911x_priv *priv;
> -	uint32_t val;
> -	int is_32bit, ret;
> +	u32 val, generation;
> +	int ret;
>  	struct smc911x_plat *pdata = dev->platform_data;
>  
>  	priv = xzalloc(sizeof(*priv));
> -	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> -	if (!is_32bit)
> -		is_32bit = 1;
> -	else
> -		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;

Without this platform based devices can no longer select the 32bit
accessors. This looks wrong.

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
