Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjnZH-0002C0-1J
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 08:25:43 +0000
Date: Wed, 27 Jun 2012 10:25:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120627082537.GE1623@pengutronix.de>
References: <1340784793-22100-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340784793-22100-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] commands/crc: add a trailing newline after output of
 checksum
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

On Wed, Jun 27, 2012 at 10:13:13AM +0200, Uwe Kleine-K=F6nig wrote:
> Without this patch the next command prompt starts directly after the
> calculated check sum. While at it also fix the coding style.

Under which conditions does this happen? The newline should be appended in
do_crc()

Sascha

> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/crc.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/commands/crc.c b/commands/crc.c
> index df22941..81aa340 100644
> --- a/commands/crc.c
> +++ b/commands/crc.c
> @@ -71,7 +71,7 @@ static int file_crc(char* filename, ulong start, ulong =
size, ulong *crc,
>  		*total +=3D now;
>  	}
>  =

> -	printf ("CRC32 for %s 0x%08lx ... 0x%08lx =3D=3D> 0x%08lx",
> +	printf("CRC32 for %s 0x%08lx ... 0x%08lx =3D=3D> 0x%08lx\n",
>  			filename, start, start + *total - 1, *crc);
>  =

>  out_free:
> -- =

> 1.7.10
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
