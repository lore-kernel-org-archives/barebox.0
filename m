Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDhfS-0001vT-Si
	for barebox@lists.infradead.org; Wed, 03 Nov 2010 18:02:40 +0000
Date: Wed, 3 Nov 2010 19:02:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101103180234.GI6017@pengutronix.de>
References: <1288800496-17480-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1288800496-17480-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] eukrea_cpuimx35: fix flash header
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Wed, Nov 03, 2010 at 05:08:16PM +0100, Eric B=E9nard wrote:
> commit f0e62e69a58e249e11fc33f993e4cdb95eac6ea3 broke the header.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/eukrea_cpuimx35/flash_header.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)

I guess This one is for -master?

Sascha


> =

> diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/bo=
ards/eukrea_cpuimx35/flash_header.c
> index 5a77c3a..93c8348 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
> @@ -28,13 +28,14 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] =
=3D {
>  };
>  =

>  #define CPUIMX35_DEST_BASE 0x80000000
> +#define CPUIMX35_FLASH_HEADER_BASE (CPUIMX35_DEST_BASE + FLASH_HEADER_OF=
FSET)
>  struct imx_flash_header __flash_header_section flash_header =3D {
>  	.app_code_jump_vector	=3D CPUIMX35_DEST_BASE + 0x1000,
>  	.app_code_barker	=3D APP_CODE_BARKER,
>  	.app_code_csf		=3D 0,
> -	.dcd_ptr_ptr		=3D FLASH_HEADER_BASE + offsetof(struct imx_flash_header,=
 dcd),
> +	.dcd_ptr_ptr		=3D CPUIMX35_FLASH_HEADER_BASE + offsetof(struct imx_flas=
h_header, dcd),
>  	.super_root_key		=3D 0,
> -	.dcd			=3D FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_ba=
rker),
> +	.dcd			=3D CPUIMX35_FLASH_HEADER_BASE + offsetof(struct imx_flash_heade=
r, dcd_barker),
>  	.app_dest		=3D CPUIMX35_DEST_BASE,
>  	.dcd_barker		=3D DCD_BARKER,
>  	.dcd_block_len		=3D sizeof(dcd_entry),
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
