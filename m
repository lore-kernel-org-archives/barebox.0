Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMuLs-0004bt-4x
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 07:10:20 +0000
Date: Mon, 10 Mar 2014 08:09:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140310070957.GG17250@pengutronix.de>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394188803-13456-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v2 1/7] sata-imx: i.MX53, use the internal 120MHz clock
 by default
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 07, 2014 at 11:39:57AM +0100, Eric B=E9nard wrote:
> this allows SATA to work on i.MX53 QSB-R :
> barebox@Freescale i.MX53 Quick Start-R Board:/ ata0.probe=3D1
> imx-sata 10000000.sata: port 0: SATA link ok
> imx-sata 10000000.sata: port 0: Spinning up device...
> imx-sata 10000000.sata: port 0: ok.
> ata0: registered /dev/ata0
> =

> before this fix the log was :
> barebox@Freescale i.MX53 Quick Start-R Board:/ ata0.probe=3D1
> imx-sata 10000000.sata: port 0: SATA link timeout
> set parameter: Connection timed out
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/ata/sata-imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
> index b7bd110..450cf4f 100644
> --- a/drivers/ata/sata-imx.c
> +++ b/drivers/ata/sata-imx.c
> @@ -59,7 +59,7 @@ static int imx53_sata_init(struct imx_ahci *imx_ahci)
>  	 */
>  	val =3D readl(base + 0x180c);
>  	val &=3D (0x3 << 1);
> -	val |=3D (0x1 << 1);
> +	val |=3D (0x2 << 1);
>  	writel(val, base + 0x180c);

I haven't applied this yet. Have you tested this on the regular (not -R)
variant of the board? If not I'd like to do that before applying.

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
