Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gISwk-0006no-RA
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 06:28:44 +0000
Date: Fri, 2 Nov 2018 07:28:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181102062830.asbd3ioogqeqkfp4@pengutronix.de>
References: <338805626.18632765.1540995732281.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <338805626.18632765.1540995732281.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Display barebox instead of kernel in build message
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Oct 31, 2018 at 03:22:12PM +0100, Cl=E9ment Leger wrote:
> Build script are coming from the kernel and as such, refers to the
> sources as "kernel". For the sake of correctness, display "barebox"
> instead.
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/Makefile b/Makefile
> index 70d501ba5..db474af50 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -807,7 +807,7 @@ PHONY +=3D prepare-all
>  # 1) Check that make has not been executed in the kernel src $(srctree)
>  prepare3: include/config/kernel.release
>  ifneq ($(KBUILD_SRC),)
> -	@echo '  Using $(srctree) as source for kernel'
> +	@echo '  Using $(srctree) as source for barebox'
>  	$(Q)if [ -f $(srctree)/.config -o -d $(srctree)/include/config ]; then \
>  		echo "  $(srctree) is not clean, please run 'make mrproper'";\
>  		echo "  in the '$(srctree)' directory.";\
> -- =

> 2.15.0.276.g89ea799
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
