Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIxI-0000oO-5E
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:32:29 +0000
Date: Wed, 8 Aug 2018 09:32:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808073216.ecu3tbbhbnnz4tl2@pengutronix.de>
References: <20180807141707.25909-1-u.kleine-koenig@pengutronix.de>
 <20180807142344.26219-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807142344.26219-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] usb: gadget: allow to actually enable sparse fastboot
 support
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2018 at 04:23:44PM +0200, Uwe Kleine-K=F6nig wrote:
> When sparse support was (intended to be) made optional it was
> effectively unconditionally disabled because
> =

> 	IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)
> =

> always evaluates to 0. To actually make use of the introduced kconfig
> symbol the CONFIG_ prefix must not be skipped.
> =

> Fixes: f4b5d3eeb607 ("usb: gadget: fastboot: Make sparse support optional=
")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Huh, I failed to commit the third IS_ENABLED hunk in (implicit) v1.
> =

>  drivers/usb/gadget/f_fastboot.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastb=
oot.c
> index 7ccf22771493..40a78987e46c 100644
> --- a/drivers/usb/gadget/f_fastboot.c
> +++ b/drivers/usb/gadget/f_fastboot.c
> @@ -337,7 +337,7 @@ static int fastboot_bind(struct usb_configuration *c,=
 struct usb_function *f)
>  	fb_setvar(var, "0.4");
>  	var =3D fb_addvar(f_fb, "bootloader-version");
>  	fb_setvar(var, release_string);
> -	if (IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)) {
> +	if (IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_SPARSE)) {
>  		var =3D fb_addvar(f_fb, "max-download-size");
>  		fb_setvar(var, "%u", fastboot_max_download_size);
>  	}
> @@ -947,7 +947,7 @@ static void cb_flash(struct f_fastboot *f_fb, const c=
har *cmd)
>  	filename =3D fentry->filename;
>  =

>  	if (filetype =3D=3D filetype_android_sparse) {
> -		if (!IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)) {
> +		if (!IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_SPARSE)) {
>  			fastboot_tx_print(f_fb, "FAILsparse image not supported");
>  			ret =3D -EOPNOTSUPP;
>  			goto out;
> @@ -1233,7 +1233,7 @@ done:
>  =

>  static int fastboot_globalvars_init(void)
>  {
> -	if (IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE))
> +	if (IS_ENABLED(CONFIG_USB_GADGET_FASTBOOT_SPARSE))
>  		globalvar_add_simple_int("usbgadget.fastboot_max_download_size",
>  				 &fastboot_max_download_size, "%u");
>  =

> -- =

> 2.18.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
