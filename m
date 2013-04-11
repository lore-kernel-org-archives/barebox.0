Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQCTB-0000Ik-UB
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 08:02:59 +0000
Date: Thu, 11 Apr 2013 10:02:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130411080253.GI1906@pengutronix.de>
References: <1365603058-9368-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365603058-9368-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/2] mx53-loco: provide the right header for serial
 downloader
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Wed, Apr 10, 2013 at 04:10:57PM +0200, Eric B=E9nard wrote:
> this patch allows barebox to run when loaded on the iMX53QSB
> using the serial downloader.

What serial downloader do you use? We have a serial downloader here:

git://git.pengutronix.de/git/tools/imx-usb-loader.git

This one works by parsing the flash headers from the images and
executing them manually by doing register writes. It works with
the currently generated images just fine.

I though about integrating this tool into barebox. Part of the reason
for doing this is that this repository also contains a image generation
tool which could replace the compiler/linker mechanism we currently use
to generate i.MX images. Using a dedicated tool for this job seems more
flexible.

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/freescale-mx53-loco/flash_header.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/ar=
m/boards/freescale-mx53-loco/flash_header.c
> index dc1162b..5358f0b 100644
> --- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
> +++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
> @@ -34,10 +34,17 @@ struct imx_flash_header_v2 __flash_header_section fla=
sh_header =3D {
>  	.header.length		=3D cpu_to_be16(32),
>  	.header.version		=3D IVT_VERSION,
>  =

> +#ifdef CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL
> +	.entry			=3D APP_DEST + 0x400,
> +	.dcd_ptr		=3D APP_DEST + offsetof(struct imx_flash_header_v2, dcd),
> +	.boot_data_ptr		=3D APP_DEST + offsetof(struct imx_flash_header_v2, boo=
t_data),
> +	.self			=3D APP_DEST,
> +#else
>  	.entry			=3D APP_DEST + 0x1000,
>  	.dcd_ptr		=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, d=
cd),
>  	.boot_data_ptr		=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header=
_v2, boot_data),
>  	.self			=3D APP_DEST + 0x400,
> +#endif

We already have a FLASH_HEADER_OFFSET define which seems to solve half
of the problem. Extending the ifdefs already present int the header
file should work better.

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
