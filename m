Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d1XtT-0003T0-LV
 for barebox@lists.infradead.org; Fri, 21 Apr 2017 12:42:37 +0000
Date: Fri, 21 Apr 2017 14:42:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170421124209.sgsgwl4hoe33qd7a@pengutronix.de>
References: <20170421095325.7142-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170421095325.7142-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] state: Fix "pack" returning freed data for DTB backend
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org, Norbert Wiedmann <info@n-wiedmann.de>

On Fri, Apr 21, 2017 at 10:53:25AM +0100, Ian Abbott wrote:
> `state_backend_format_dtb_pack()` passes a buffer containing state
> packed in flattened DTB format back to its caller via its `buf`
> parameter.  It then frees the buffer before returning.  This means the
> caller (`state_save()`) will be working on freed buffer contents before
> freeing the buffer a second time itself.  Fix it by removing the
> spurious call to `free()`.
> 
> This should fix a bug reported by Norbert Wiedmann in
> <http://lists.infradead.org/pipermail/barebox/2017-April/029980.html>.
> 
> Cc: Norbert Wiedmann <info@n-wiedmann.de>
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>

Applied, thanks

Sascha

> ---
> As reported by Norbert, there is an identical bug in the "dt-utils"
> package.
> ---
>  common/state/backend_format_dtb.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
> index 55fa1fc59..e88cda499 100644
> --- a/common/state/backend_format_dtb.c
> +++ b/common/state/backend_format_dtb.c
> @@ -120,8 +120,6 @@ static int state_backend_format_dtb_pack(struct state_backend_format *format,
>  		of_delete_node(fdtb->root);
>  	fdtb->root = root;
>  
> -	free(fdt);
> -
>  	return 0;
>  }
>  
> -- 
> 2.11.0
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
