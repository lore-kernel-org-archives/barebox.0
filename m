Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6cJR-0003Ti-Kp
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 07:03:42 +0000
Date: Wed, 29 Aug 2012 09:03:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829070339.GQ26594@pengutronix.de>
References: <1346191088-12657-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346191088-12657-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] m25p80: wait for flash before returning after erase
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 28, 2012 at 11:58:08PM +0200, Eric B=E9nard wrote:
> else when we do "erase /dev/m25p0.rootfs; reset", the board
> will never reboot as the flash is busy to finish the erase
> command.

Applied, thanks

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/nor/m25p80.c |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> =

> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> index daaf60c..5713ad5 100644
> --- a/drivers/nor/m25p80.c
> +++ b/drivers/nor/m25p80.c
> @@ -257,6 +257,9 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t=
 count, loff_t offset)
>  		}
>  	}
>  =

> +	if (wait_till_ready(flash))
> +		return -ETIMEDOUT;
> +
>  	return 0;
>  }
>  =

> @@ -684,7 +687,6 @@ static const struct spi_device_id *jedec_probe(struct=
 spi_device *spi)
>  	return NULL;
>  }
>  =

> -
>  static struct file_operations m25p80_ops =3D {
>  	.read   =3D m25p80_read,
>  	.write  =3D m25p80_write,
> -- =

> 1.7.7.6
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
