Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P90WP-00029d-Pk
	for barebox@lists.infradead.org; Thu, 21 Oct 2010 19:10:49 +0000
Date: Thu, 21 Oct 2010 21:06:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101021190623.GG28242@pengutronix.de>
References: <1287582017-12999-1-git-send-email-eric@eukrea.com>
	<1287582017-12999-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287582017-12999-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/3] cpuimx35: fix warning
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Wed, Oct 20, 2010 at 03:40:16PM +0200, Eric B=E9nard wrote:
> this patch fix the following warning :
> arch/arm/boards/eukrea_cpuimx35/flash_header.c:30: warning: "DEST_BASE" r=
edefined
> arch/arm/mach-imx/include/mach/imx-flash-header.h:29: note: this is the l=
ocation of the previous definition
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/eukrea_cpuimx35/flash_header.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/bo=
ards/eukrea_cpuimx35/flash_header.c
> index 4163caf..3133995 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
> @@ -27,6 +27,7 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] =
=3D {
>  	{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000004, },
>  };
>  =

> +#undef DEST_BASE
>  #define DEST_BASE 0x80000000
>  struct imx_flash_header __flash_header_section flash_header =3D {
>  	.app_code_jump_vector	=3D DEST_BASE + 0x1000,

Why don't you just use another define instead of redefining DEST_BASE?

Grepping through the other boards there seems to be something wrong
here. The original idea was to let the rom code copy the image to the
address it is linked at to not have to relocate it later. This seems to
be not the case for most boards

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
