Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4uct-0004Ue-SV
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:31:24 +0000
Date: Thu, 22 Apr 2010 13:31:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422113122.GK7882@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-5-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271665698-23163-5-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] cfi_flash: use flash_write_word instead of
	reimplementing it again
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 19, 2010 at 10:28:15AM +0200, Wolfram Sang wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> While at it remove some unused code and an unbalanced
> enable_interrupts().
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  drivers/nor/cfi_flash.c |   19 +------------------
>  1 files changed, 1 insertions(+), 18 deletions(-)

applied to next.

> =

> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index 0f7a483..dbfb004 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -116,11 +116,9 @@ static void flash_add_byte (flash_info_t * info, cfi=
word_t * cword, uchar c)
>  static int flash_write_cfiword (flash_info_t * info, ulong dest,
>  				cfiword_t cword)
>  {
> -	cfiptr_t ctladdr;
>  	cfiptr_t cptr;
>  	int flag;
>  =

> -	ctladdr.cp =3D flash_make_addr (info, 0, 0);
>  	cptr.cp =3D (uchar *) dest;
>  =

>  	/* Check if Flash is (sufficiently) erased */
> @@ -138,24 +136,9 @@ static int flash_write_cfiword (flash_info_t * info,=
 ulong dest,
>  	if (!flag)
>  		return 2;
>  =

> -	/* Disable interrupts which might cause a timeout here */
> -//	flag =3D disable_interrupts ();
> -
>  	info->cfi_cmd_set->flash_prepare_write(info);
>  =

> -	if (bankwidth_is_1(info)) {
> -		cptr.cp[0] =3D cword.c;
> -	} else if (bankwidth_is_2(info)) {
> -		cptr.wp[0] =3D cword.w;
> -	} else if (bankwidth_is_4(info)) {
> -		cptr.lp[0] =3D cword.l;
> -	} else if (bankwidth_is_8(info)) {
> -		cptr.llp[0] =3D cword.ll;
> -	}
> -
> -	/* re-enable interrupts if necessary */
> -	if (flag)
> -		enable_interrupts ();
> +	flash_write_word(info, cword, (void *)dest);
>  =

>  	return flash_status_check (info, find_sector (info, dest),
>  					info->write_tout, "write");
> -- =

> 1.7.0
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
