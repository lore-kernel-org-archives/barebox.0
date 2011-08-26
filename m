Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qwqva-0008UI-Tp
	for barebox@lists.infradead.org; Fri, 26 Aug 2011 07:34:12 +0000
Date: Fri, 26 Aug 2011 09:34:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110826073408.GC31404@pengutronix.de>
References: <1314273132-4060-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314273132-4060-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2] cfi_flash: support of u32 cmd
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 25, 2011 at 01:52:12PM +0200, Teresa G=E1mez wrote:
> Some NOR flash chips have commands with length greater than the maximum
> value size of uchar.
> =

> Based on an U-Boot Patch by Vasiliy Leoenenko <vasiliy.leonenko@mail.ru>
> =

> Only tested with little endian on an intel cfi_flash.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied to next.

Sascha

> ---
>  drivers/nor/cfi_flash.c       |   35 ++++++++++++++++++++++++++---------
>  drivers/nor/cfi_flash.h       |   11 +++++++----
>  drivers/nor/cfi_flash_amd.c   |    8 ++++----
>  drivers/nor/cfi_flash_intel.c |    2 +-
>  4 files changed, 38 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index 461b0e6..7b25adb 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -820,20 +820,35 @@ int flash_generic_status_check (struct flash_info *=
info, flash_sect_t sector,
>  /*
>   * make a proper sized command based on the port and chip widths
>   */
> -void flash_make_cmd(struct flash_info *info, u8 cmd, cfiword_t *cmdbuf)
> +void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf)
>  {
> -	cfiword_t result =3D 0;
> -	int i =3D info->portwidth / info->chipwidth;
> +	int i;
> +	int cp_offset;
> +	int cword_offset;
> +	uchar val;
> +	uchar *cp;
> +
> +	*cmdbuf =3D 0;
> +	cp =3D (uchar *)cmdbuf;
>  =

> -	while (i--)
> -		result =3D (result << (8 * info->chipwidth)) | cmd;
> -	*cmdbuf =3D result;
> +	for (i =3D info->portwidth; i > 0; i--) {
> +		cword_offset =3D (info->portwidth-i) % info->chipwidth;
> +#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
> +		cp_offset =3D info->portwidth - i;
> +		val =3D *((uchar *)&cmd + cword_offset);
> +#else
> +		cp_offset =3D i - 1;
> +		val =3D *((uchar *)&cmd + sizeof(u32) - cword_offset - 1);
> +#endif
> +	cp[cp_offset] =3D (cword_offset >=3D sizeof(u32)) ? 0x00 : val;
> +	}
>  }
>  =

>  /*
>   * Write a proper sized command to the correct address
>   */
> -void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint o=
ffset, uchar cmd)
> +void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd)
>  {
>  =

>  	uchar *addr;
> @@ -845,7 +860,8 @@ void flash_write_cmd (struct flash_info *info, flash_=
sect_t sect, uint offset, u
>  	flash_write_word(info, cword, addr);
>  }
>  =

> -int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offs=
et, uchar cmd)
> +int flash_isequal(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd)
>  {
>  	void *addr;
>  	cfiword_t cword;
> @@ -882,7 +898,8 @@ int flash_isequal (struct flash_info *info, flash_sec=
t_t sect, uint offset, ucha
>  	return retval;
>  }
>  =

> -int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset=
, uchar cmd)
> +int flash_isset(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd)
>  {
>  	void *addr =3D flash_make_addr (info, sect, offset);
>  	cfiword_t cword;
> diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
> index 9098021..32dcc8c 100644
> --- a/drivers/nor/cfi_flash.h
> +++ b/drivers/nor/cfi_flash.h
> @@ -231,16 +231,19 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
>  #define CFI_FLASH_SHIFT_WIDTH	3
>  /* Prototypes */
>  =

> -int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset=
, uchar cmd);
> -void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint o=
ffset, uchar cmd);
> +int flash_isset(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd);
> +void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd);
>  flash_sect_t find_sector (struct flash_info *info, ulong addr);
>  int flash_status_check (struct flash_info *info, flash_sect_t sector,
>  			       uint64_t tout, char *prompt);
>  int flash_generic_status_check (struct flash_info *info, flash_sect_t se=
ctor,
>  			       uint64_t tout, char *prompt);
>  =

> -int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offs=
et, uchar cmd);
> -void flash_make_cmd(struct flash_info *info, uchar cmd, cfiword_t *cmdbu=
f);
> +int flash_isequal(struct flash_info *info, flash_sect_t sect,
> +				uint offset, u32 cmd);
> +void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
>  =

>  static inline void flash_write8(u8 value, void *addr)
>  {
> diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
> index b1d7070..45c59b9 100644
> --- a/drivers/nor/cfi_flash_amd.c
> +++ b/drivers/nor/cfi_flash_amd.c
> @@ -142,28 +142,28 @@ static int amd_flash_write_cfibuffer (struct flash_=
info *info, ulong dest, const
>  =

>  	if (bankwidth_is_1(info)) {
>  		cnt =3D len;
> -		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
> +		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  		while (cnt-- > 0) {
>  			flash_write8(flash_read8(src), dst);
>  			src +=3D 1, dst +=3D 1;
>  		}
>  	} else if (bankwidth_is_2(info)) {
>  		cnt =3D len >> 1;
> -		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
> +		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  		while (cnt-- > 0) {
>  			flash_write16(flash_read16(src), dst);
>  			src +=3D 2, dst +=3D 2;
>  		}
>  	} else if (bankwidth_is_4(info)) {
>  		cnt =3D len >> 2;
> -		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
> +		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  		while (cnt-- > 0) {
>  			flash_write32(flash_read32(src), dst);
>  			src +=3D 4, dst +=3D 4;
>  		}
>  	} else if (bankwidth_is_8(info)) {
>  		cnt =3D len >> 3;
> -		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
> +		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  		while (cnt-- > 0) {
>  			flash_write64(flash_read64(src), dst);
>  			src +=3D 8, dst +=3D 8;
> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
> index c3cbad5..6318cfe 100644
> --- a/drivers/nor/cfi_flash_intel.c
> +++ b/drivers/nor/cfi_flash_intel.c
> @@ -70,7 +70,7 @@ static int intel_flash_write_cfibuffer (struct flash_in=
fo *info, ulong dest, con
>  	/* reduce the number of loops by the width of the port	*/
>  	cnt =3D len >> (info->portwidth - 1);
>  =

> -	flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
> +	flash_write_cmd(info, sector, 0, (u32)cnt - 1);
>  	while (cnt-- > 0) {
>  		if (bankwidth_is_1(info)) {
>  			flash_write8(flash_read8(src), dst);
> -- =

> 1.7.0.4
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
