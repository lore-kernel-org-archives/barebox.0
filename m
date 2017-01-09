Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXFU-0001vT-88
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:32:22 +0000
Date: Mon, 9 Jan 2017 11:31:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109103158.aoo5pdwadl3ky7lm@pengutronix.de>
References: <20161217204644.4419-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161217204644.4419-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ata/ahci: simplify ahci_read_id
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Dec 17, 2016 at 09:46:44PM +0100, Uwe Kleine-K=F6nig wrote:
> This is a dummy commit log body because I consider the change to trivial
> to write something sensible.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/ata/ahci.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> =

> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index c31b337ba231..cea031af5a84 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -216,11 +216,7 @@ static int ahci_read_id(struct ata_port *ata, void *=
buf)
>  	fis[1] =3D 1 << 7;		/* Command FIS. */
>  	fis[2] =3D ATA_CMD_ID_ATA;	/* Command byte. */
>  =

> -	ret =3D ahci_io(ahci, fis, sizeof(fis), buf, NULL, SECTOR_SIZE);
> -	if (ret)
> -		return ret;
> -
> -	return ret;
> +	return ahci_io(ahci, fis, sizeof(fis), buf, NULL, SECTOR_SIZE);
>  }
>  =

>  static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
> -- =

> 2.10.2
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
