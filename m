Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvfpR-00020p-CC
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:21:22 +0000
Date: Mon, 9 Nov 2015 07:20:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109062059.GP8526@pengutronix.de>
References: <1446908125-1725-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446908125-1725-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] lib: fix coding style
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 07, 2015 at 06:55:25AM -0800, Du Huanpeng wrote:
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---

Applied, thanks

Sascha

>  lib/fonts/fonts.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
> index 5a9d3f1..39efb61 100644
> --- a/lib/fonts/fonts.c
> +++ b/lib/fonts/fonts.c
> @@ -23,15 +23,15 @@
>  static const struct font_desc *fonts[] = {
>  #ifdef CONFIG_FONT_8x16
>  #undef NO_FONTS
> -    &font_vga_8x16,
> +	&font_vga_8x16,
>  #endif
>  #ifdef CONFIG_FONT_7x14
>  #undef NO_FONTS
> -    &font_7x14,
> +	&font_7x14,
>  #endif
>  #ifdef CONFIG_FONT_MINI_4x6
>  #undef NO_FONTS
> -    &font_mini_4x6,
> +	&font_mini_4x6,
>  #endif
>  };
>  
> -- 
> 1.9.1
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
