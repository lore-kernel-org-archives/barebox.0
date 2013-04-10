Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPxd3-0000VO-17
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 16:12:10 +0000
Received: from mail635.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A9233FF9AFF
 for <barebox@lists.infradead.org>; Wed, 10 Apr 2013 18:12:04 +0200 (CEST)
Date: Wed, 10 Apr 2013 18:08:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130410160803.GY1568@game.jcrosoft.org>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] mx53-loco: provide the right header for serial
 downloader
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 16:10 Wed 10 Apr     , Eric B=E9nard wrote:
> this patch allows barebox to run when loaded on the iMX53QSB
> using the serial downloader.
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
use a define to void duplication
>  =

>  	.boot_data.start	=3D APP_DEST,
>  	.boot_data.size		=3D DCD_BAREBOX_SIZE,
> -- =

> 1.7.11.7
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
