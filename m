Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8yMi-0004lj-3L
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 20:05:21 +0000
Date: Mon, 12 Aug 2013 22:04:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130812200457.GN26614@pengutronix.de>
References: <1376302163-32509-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376302163-32509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] uimage: fix: always support multi image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 12, 2013 at 12:09:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> drop ifdef CONFIG_UIMAGE_MULTI as the Kconfig option is not present anyway
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied both

Thanks
 Sascha


> ---
>  common/uimage.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/common/uimage.c b/common/uimage.c
> index 1ac0b7d..ed93a4b 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -29,17 +29,10 @@
>  #include <filetype.h>
>  #include <memory.h>
>  
> -#ifdef CONFIG_UIMAGE_MULTI
>  static inline int uimage_is_multi_image(struct uimage_handle *handle)
>  {
>  	return (handle->header.ih_type == IH_TYPE_MULTI) ? 1 : 0;
>  }
> -#else
> -static inline int uimage_is_multi_image(struct uimage_handle *handle)
> -{
> -	return 0;
> -}
> -#endif
>  
>  void uimage_print_contents(struct uimage_handle *handle)
>  {
> -- 
> 1.8.4.rc1
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
