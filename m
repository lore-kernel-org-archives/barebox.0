Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaPgr-0000KX-6d
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 10:34:30 +0000
Date: Tue, 13 Dec 2011 11:34:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213103423.GL27267@pengutronix.de>
References: <1323701454-8869-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323701454-8869-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] pcm038: Updated NOR-Flash CS values
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, Dec 12, 2011 at 03:50:54PM +0100, Teresa G=E1mez wrote:
> Newer pcm038 are populated with a PC28F256P30BFE NOR-Flash.
> This flash requires different CS values.
> The values also work with older NOR-Flashes.

Applied to master.

Sascha

> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm038/pcm038.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm=
038.c
> index 0b07a63..6b8897e 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -223,9 +223,9 @@ static int pcm038_devices_init(void)
>  	};
>  =

>  	/* configure 16 bit nor flash on cs0 */
> -	CS0U =3D 0x0000CC03;
> -	CS0L =3D 0xa0330D01;
> -	CS0A =3D 0x00220800;
> +	CS0U =3D 0x22C2CF00;
> +	CS0L =3D 0x75000D01;
> +	CS0A =3D 0x00000900;
>  =

>  	/* configure SRAM on cs1 */
>  	CS1U =3D 0x0000d843;
> -- =

> 1.7.0.4
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
