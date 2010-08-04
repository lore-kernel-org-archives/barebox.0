Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgYcp-000561-7U
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 07:42:57 +0000
Date: Wed, 4 Aug 2010 09:42:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100804074253.GS14113@pengutronix.de>
References: <1280483395-9043-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1280483395-9043-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] cfi_flash_intel: support 1024b buffer write
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 30, 2010 at 11:49:55AM +0200, Eric B=E9nard wrote:
> newer Numonyx Strataflash P3x have 1024b buffer, thus, it's possible
> to write a buffer size of 0x200 which the actual flash_write_cmd
> doesn't permit as it's limited to a uchar parameter.

So I guess these chips have 16 data lines?

Unfortunately this won't work when two of these are parallel. You'd have
to duplicate the command for the upper 16 bit.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/nor/cfi_flash.c       |   11 +++++++++++
>  drivers/nor/cfi_flash.h       |    1 +
>  drivers/nor/cfi_flash_intel.c |    5 ++++-
>  3 files changed, 16 insertions(+), 1 deletions(-)
> =

> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index fa5e5ee..6f45da6 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -886,6 +886,17 @@ void flash_write_cmd (struct flash_info *info, flash=
_sect_t sect, uint offset, u
>  	flash_write_word(info, cword, addr);
>  }
>  =

> +void flash_write_cmd16 (struct flash_info *info, flash_sect_t sect, uint=
 offset, ushort cmd)
> +{
> +
> +	uchar *addr;
> +	cfiword_t cword;
> +
> +	addr =3D flash_make_addr (info, sect, offset);
> +	cword.w =3D cmd;
> +	flash_write_word(info, cword, addr);
> +}
> +
>  int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offs=
et, uchar cmd)
>  {
>  	cfiptr_t cptr;
> diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
> index 057e56c..d7e6ea2 100644
> --- a/drivers/nor/cfi_flash.h
> +++ b/drivers/nor/cfi_flash.h
> @@ -189,6 +189,7 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
>  =

>  int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset=
, uchar cmd);
>  void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint o=
ffset, uchar cmd);
> +void flash_write_cmd16 (struct flash_info * info, flash_sect_t sect, uin=
t offset, ushort cmd);
>  flash_sect_t find_sector (struct flash_info *info, ulong addr);
>  int flash_status_check (struct flash_info *info, flash_sect_t sector,
>  			       uint64_t tout, char *prompt);
> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
> index 4344760..96bf33f 100644
> --- a/drivers/nor/cfi_flash_intel.c
> +++ b/drivers/nor/cfi_flash_intel.c
> @@ -71,7 +71,10 @@ static int intel_flash_write_cfibuffer (struct flash_i=
nfo *info, ulong dest, con
>  	/* reduce the number of loops by the width of the port	*/
>  	cnt =3D len >> (info->portwidth - 1);
>  =

> -	flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
> +	if (cnt >=3D 0x100)
> +		flash_write_cmd16 (info, sector, 0, (ushort) cnt - 1);
> +	else
> +		flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
>  	while (cnt-- > 0) {
>  		if (bankwidth_is_1(info)) {
>  			*dst.cp++ =3D *src.cp++;
> -- =

> 1.6.3.3
> =

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
