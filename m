Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4ufw-0004mT-Ig
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:34:34 +0000
Date: Thu, 22 Apr 2010 13:34:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422113430.GN7882@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-8-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271665698-23163-8-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 7/7] nor: Don't use the sector for the unlock sequence
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 19, 2010 at 10:28:18AM +0200, Wolfram Sang wrote:
> Copy the behaviour from Linux which does:
> =

> cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi, cfi->dev=
ice_type, NULL);
> ...
> =

> (Notice the third parameter which is simply chip->start).
> =

> Solves erase problems with SST flashes.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
> =

> This should be tested on some other boards!
> =

>  drivers/nor/cfi_flash_amd.c |   16 ++++++++--------
>  1 files changed, 8 insertions(+), 8 deletions(-)

applied to next.

> =

> diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
> index 4f0ab57..411d8e6 100644
> --- a/drivers/nor/cfi_flash_amd.c
> +++ b/drivers/nor/cfi_flash_amd.c
> @@ -2,10 +2,10 @@
>  #include <stdio.h>
>  #include "cfi_flash.h"
>  =

> -static void flash_unlock_seq (flash_info_t * info, flash_sect_t sect)
> +static void flash_unlock_seq (flash_info_t * info)
>  {
> -	flash_write_cmd (info, sect, AMD_ADDR_START, AMD_CMD_UNLOCK_START);
> -	flash_write_cmd (info, sect, AMD_ADDR_ACK, AMD_CMD_UNLOCK_ACK);
> +	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_UNLOCK_START);
> +	flash_write_cmd (info, 0, AMD_ADDR_ACK, AMD_CMD_UNLOCK_ACK);
>  }
>  =

>  /*
> @@ -21,7 +21,7 @@ static void amd_read_jedec_ids (flash_info_t * info)
>  	info->device_id2      =3D 0;
>  =

>  	flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
> -	flash_unlock_seq(info, 0);
> +	flash_unlock_seq(info);
>  	flash_write_cmd(info, 0, AMD_ADDR_START, FLASH_CMD_READ_ID);
>  	udelay(1000); /* some flash are slow to respond */
>  	info->manufacturer_id =3D flash_read_uchar (info,
> @@ -73,10 +73,10 @@ static int amd_flash_is_busy (flash_info_t * info, fl=
ash_sect_t sect)
>  =

>  static int amd_flash_erase_one (flash_info_t * info, long sect)
>  {
> -	flash_unlock_seq (info, sect);
> +	flash_unlock_seq(info);
>  	flash_write_cmd (info, sect, AMD_ADDR_ERASE_START,
>  				AMD_CMD_ERASE_START);
> -	flash_unlock_seq (info, sect);
> +	flash_unlock_seq(info);
>  	flash_write_cmd (info, sect, 0, AMD_CMD_ERASE_SECTOR);
>  =

>  	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
> @@ -84,7 +84,7 @@ static int amd_flash_erase_one (flash_info_t * info, lo=
ng sect)
>  =

>  static void amd_flash_prepare_write(flash_info_t * info)
>  {
> -	flash_unlock_seq (info, 0);
> +	flash_unlock_seq(info);
>  	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_WRITE);
>  }
>  =

> @@ -103,7 +103,7 @@ static int amd_flash_write_cfibuffer (flash_info_t * =
info, ulong dest, const uch
>  	dst.cp =3D (uchar *) dest;
>  	sector =3D find_sector (info, dest);
>  =

> -	flash_unlock_seq(info,0);
> +	flash_unlock_seq(info);
>  	flash_make_cmd (info, AMD_CMD_WRITE_TO_BUFFER, &cword);
>  	flash_write_word(info, cword, (void *)dest);
>  =

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
