Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWM0-0001Zp-HE
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:16:45 +0000
Date: Wed, 30 Sep 2020 09:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200930071642.GE11648@pengutronix.de>
References: <20200929201701.26526-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929201701.26526-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] fixup! vsprintf: retire strerrorp in favor of %pe
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Marco Felsch <mfe@pengutronix.de>

On Tue, Sep 29, 2020 at 10:17:01PM +0200, Ahmad Fatoum wrote:
> The %pe patch set missed one instance of strerrorp that
> was added after the patch set was initially drafted.
> Fix it up.

Squashed into "of: Add common device tree register function" instead.

Sascha

> 
> Reported-by: Marco Felsch <mfe@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/of/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 6e2fb8b281e9..4e88af7b22e2 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1588,7 +1588,7 @@ void barebox_register_fdt(const void *dtb)
>  
>  	root = of_unflatten_dtb(dtb);
>  	if (IS_ERR(root)) {
> -		pr_err("Cannot unflatten dtb: %s\n", strerrorp(root));
> +		pr_err("Cannot unflatten dtb: %pe\n", root);
>  		return;
>  	}
>  
> -- 
> 2.28.0
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
