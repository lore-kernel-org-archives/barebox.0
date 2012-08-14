Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T1NcQ-0005kC-4l
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 20:21:38 +0000
Date: Tue, 14 Aug 2012 22:21:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120814202136.GE1451@pengutronix.de>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
 <1344965540-31534-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344965540-31534-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/7] smc911x: add 16bit bus width support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 14, 2012 at 07:32:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/smc911x.c |   20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index 2583235..c74ed52 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -47,6 +47,8 @@ struct smc911x_priv {
>  	struct mii_device miidev;
>  	void __iomem *base;
>  
> +	u32 width;
> +
>  	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
>  	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
>  };
> @@ -78,7 +80,11 @@ static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
>  
>  static inline u32 __smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
>  {
> -	return readl(priv->base + reg);
> +	if (priv->width)
> +		return readl(priv->base + reg);
> +	else
> +		return ((readw(priv->base + reg) & 0xFFFF) |
> +			((readw(priv->base + reg + 2) & 0xFFFF) << 16));
>  }

If you introduce function pointers for the read/write functions, then
please use them to implement 16bit support.

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
