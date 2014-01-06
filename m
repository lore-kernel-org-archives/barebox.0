Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W06xg-0005iQ-Lg
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 09:59:09 +0000
Date: Mon, 6 Jan 2014 10:58:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106095825.GC3677@pengutronix.de>
References: <1388996710-991-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1388996710-991-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] lib: libubigen math compile error fix
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org, w.sang@pengutronix.de

Hi Robert,

On Mon, Jan 06, 2014 at 09:25:10AM +0100, Robert Jarzmik wrote:
> A compile error appears in libubigen on PXA architecture, because of a
> division of an long long by a int :
> /home/rj/mio_linux/barebox/lib/libubigen.c:105: undefined reference to
> `__aeabi_ldivmod' arm-linux-gnueabi-ld: BFD (GNU Binutils for Debian)
> 2.20.1.20100303 assertion fail ../../bfd/elf32-arm.c:12497
> 
> Fix it by using div_u64 instead.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Applied, thanks.

Sascha

> ---
>  lib/libubigen.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/libubigen.c b/lib/libubigen.c
> index 4026f1d..9006329 100644
> --- a/lib/libubigen.c
> +++ b/lib/libubigen.c
> @@ -29,6 +29,7 @@
>  #include <errno.h>
>  #include <crc.h>
>  #include <fs.h>
> +#include <linux/math64.h>
>  
>  #include <mtd/utils.h>
>  #include <mtd/ubi-media.h>
> @@ -102,7 +103,7 @@ int ubigen_add_volume(const struct ubigen_info *ui,
>  	}
>  
>  	memset(vtbl_rec, 0, sizeof(struct ubi_vtbl_record));
> -	tmp = (vi->bytes + ui->leb_size - 1) / ui->leb_size;
> +	tmp = div_u64(vi->bytes + ui->leb_size - 1, ui->leb_size);
>  	vtbl_rec->reserved_pebs = cpu_to_be32(tmp);
>  	vtbl_rec->alignment = cpu_to_be32(vi->alignment);
>  	vtbl_rec->vol_type = vi->type;
> -- 
> 1.7.10.4
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
