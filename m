Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYm6x-0002yX-92
 for barebox@lists.infradead.org; Wed, 13 May 2020 07:47:28 +0000
Date: Wed, 13 May 2020 09:47:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200513074724.GN5877@pengutronix.de>
References: <20200512174511.9702-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512174511.9702-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] phy: drop of_phy_simple_xlate() stub
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 12, 2020 at 08:45:11PM +0300, Antony Pavlov wrote:
> The function of_phy_simple_xlate() is not used.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/phy/phy.h | 8 --------
>  1 file changed, 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index e2fe42d90e..679ce6e420 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -139,8 +139,6 @@ struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
>  				  u8 index);
>  void phy_put(struct phy *phy);
>  struct phy *of_phy_get(struct device_node *np, const char *con_id);
> -struct phy *of_phy_simple_xlate(struct device_d *dev,
> -	struct of_phandle_args *args);
>  struct phy *phy_create(struct device_d *dev, struct device_node *node,
>  		       const struct phy_ops *ops);
>  void phy_destroy(struct phy *phy);
> @@ -215,12 +213,6 @@ static inline struct phy *of_phy_get(struct device_node *np, const char *con_id)
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> -static inline struct phy *of_phy_simple_xlate(struct device_d *dev,
> -	struct of_phandle_args *args)
> -{
> -	return ERR_PTR(-ENOSYS);
> -}
> -
>  static inline struct phy *phy_create(struct device_d *dev,
>  				     struct device_node *node,
>  				     const struct phy_ops *ops)
> -- 
> 2.26.2
> 
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
