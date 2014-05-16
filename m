Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlBGQ-0004Ob-IM
 for barebox@lists.infradead.org; Fri, 16 May 2014 06:05:03 +0000
Date: Fri, 16 May 2014 08:04:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140516060441.GS5858@pengutronix.de>
References: <1400166036-31135-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400166036-31135-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] syscon: fix prototype compile error
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 15, 2014 at 05:00:36PM +0200, Lucas Stach wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> gcc 4.8.3 throws the following error
> 
> include/mfd/syscon.h: In function 'syscon_base_lookup_by_pdevname':
> include/mfd/syscon.h:22:1: error: parameter name omitted
>  static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)
> 
> Fix it by adding the name to the function prototype.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  include/mfd/syscon.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
> index 0eccd5cb5d84..20445202b252 100644
> --- a/include/mfd/syscon.h
> +++ b/include/mfd/syscon.h
> @@ -15,11 +15,11 @@
>  #define __MFD_SYSCON_H__
>  
>  #ifdef CONFIG_MFD_SYSCON
> -void __iomem *syscon_base_lookup_by_pdevname(const char *);
> +void __iomem *syscon_base_lookup_by_pdevname(const char *s);
>  void __iomem *syscon_base_lookup_by_phandle
>  	(struct device_node *np, const char *property);
>  #else
> -static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)
> +static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
>  {
>  	return NULL;
>  }
> -- 
> 2.0.0.rc0
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
