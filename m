Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwGSs-0003Sc-OT
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 16:38:07 +0000
Date: Wed, 24 Aug 2011 18:38:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110824163804.GK31404@pengutronix.de>
References: <1314176175-22795-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314176175-22795-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] cfi_flash: support of u32 cmd
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 24, 2011 at 10:56:15AM +0200, Teresa G=E1mez wrote:
> Some NOR flash chips have commands with length greater than the maximum
> value size of uchar.
> =

> Based on an U-Boot Patch by Vasiliy Leoenenko <vasiliy.leonenko@mail.ru>
> =

> Only tested with little endian on an intel cfi_flash.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  drivers/nor/cfi_flash.c       |   38 +++++++++++++++++++++++++++++------=
---
>  drivers/nor/cfi_flash.h       |   11 +++++++----
>  drivers/nor/cfi_flash_amd.c   |    8 ++++----
>  drivers/nor/cfi_flash_intel.c |    2 +-
>  4 files changed, 41 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index 461b0e6..489c15d 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -820,20 +820,38 @@ int flash_generic_status_check (struct flash_info *=
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
> +#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
> +	u32 cmd_le =3D cpu_to_le32(cmd);
> +#endif

This looks suspicious. With little endian byte order cpu_to_le32 is a
noop.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
