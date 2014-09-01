Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONWy-00043A-Oy
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:04:09 +0000
Date: Mon, 1 Sep 2014 11:03:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901090340.GI5352@pengutronix.de>
References: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 1/2] EFI: fix error handling in efi_get_boot()
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 12, 2014 at 11:37:20AM +0200, Michael Olbrich wrote:
> efi_get_global_var() returns an error code, not NULL when it fails.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>

Applied this one, thanks

Sascha

> ---
>  arch/efi/efi/efi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
> index ff97783..7de8ec8 100644
> --- a/arch/efi/efi/efi.c
> +++ b/arch/efi/efi/efi.c
> @@ -104,7 +104,7 @@ struct efi_boot *efi_get_boot(int num)
>  
>  	free(name);
>  
> -	if (!buf) {
> +	if (IS_ERR(buf)) {
>  		free(boot);
>  		return NULL;
>  	}
> -- 
> 2.0.1
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
