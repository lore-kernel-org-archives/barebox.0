Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1nOZ-0000Z8-JP
 for barebox@lists.infradead.org; Tue, 19 Jan 2021 09:33:52 +0000
Date: Tue, 19 Jan 2021 10:33:48 +0100
Message-ID: <20210119093348.GU19063@pengutronix.de>
References: <20210118202240.2184-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118202240.2184-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] of: overlay: split debug messages for
 of_overlay_apply_symbols
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 18, 2021 at 09:22:40PM +0100, Marco Felsch wrote:
> Overlays don't need to have __symbols__ therefore it shouldn't be
> printed on info level. Move it to debug so interested users can print it
> still.
> 
> I also fixed a minor alignment issue while on it.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/of/overlay.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index b79dbff94d..dc9711dac5 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -106,7 +106,7 @@ static char *of_overlay_fix_path(struct device_node *root,
>  }
>  
>  static void of_overlay_apply_symbols(struct device_node *root,
> -				    struct device_node *overlay)
> +				     struct device_node *overlay)
>  {
>  	const char *old_path;
>  	char *new_path;
> @@ -117,8 +117,13 @@ static void of_overlay_apply_symbols(struct device_node *root,
>  	root_symbols = of_get_child_by_name(root, "__symbols__");
>  	overlay_symbols = of_get_child_by_name(overlay, "__symbols__");
>  
> -	if (!overlay_symbols || !root_symbols) {
> -		pr_info("overlay/root doesn't have a __symbols__ node\n");
> +	if (!overlay_symbols) {
> +		pr_debug("overlay doesn't have a __symbols__ node\n");
> +		return;
> +	}
> +
> +	if (!root_symbols) {
> +		pr_info("root doesn't have a __symbols__ node\n");
>  		return;
>  	}
>  
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
