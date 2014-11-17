Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XqH7o-0006FC-K5
 for barebox@lists.infradead.org; Mon, 17 Nov 2014 07:53:29 +0000
Date: Mon, 17 Nov 2014 08:53:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141117075306.GC30369@pengutronix.de>
References: <1415736619-26447-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415736619-26447-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH] scripts: kwboot: fix detection of timeout
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Nov 11, 2014 at 09:10:19PM +0100, Uwe Kleine-K=F6nig wrote:
> In function kwboot_xm_sendblock() the loop that implements retrying to
> send a boot block might be quit if kwboot_tty_send or kwboot_tty_recv
> return a failure. In this case the value of the variable c that is
> expected to hold the response byte is uninitialized and most likely
> still holds an ACK from the previous call to kwboot_xm_sendblock().
> =

> So the right thing to do is not to clobber rc if it's already !=3D 0.
> =

> The result of this patch in my current scenario is that kwboot dies with
> =

> 	xmodem: Connection timed out
> =

> when the SoC stops replying instead of continuing to try sending the
> remaining blocks which results in select() blocking for one second for
> each block.
> =

> Fixes: 0535713bbfa0 ("scripts: add kwboot tool")
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Applied, thanks

Sascha

> --
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Gregory CLEMENT <gregory.clement@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> =

> I also tried to increase the timeout, but without success :-(. Will test
> a different USB-to-RS232 adapter ...
> ---
>  scripts/kwboot.c | 30 ++++++++++++++++--------------
>  1 file changed, 16 insertions(+), 14 deletions(-)
> =

> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index e06866052ba9..46328d8ed006 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -376,21 +376,23 @@ kwboot_xm_sendblock(int fd, struct kwboot_block *bl=
ock)
>  =

>  	} while (c =3D=3D NAK && retries-- > 0);
>  =

> -	rc =3D -1;
> +	if (!rc) {
> +		rc =3D -1;
>  =

> -	switch (c) {
> -	case ACK:
> -		rc =3D 0;
> -		break;
> -	case NAK:
> -		errno =3D EBADMSG;
> -		break;
> -	case CAN:
> -		errno =3D ECANCELED;
> -		break;
> -	default:
> -		errno =3D EPROTO;
> -		break;
> +		switch (c) {
> +		case ACK:
> +			rc =3D 0;
> +			break;
> +		case NAK:
> +			errno =3D EBADMSG;
> +			break;
> +		case CAN:
> +			errno =3D ECANCELED;
> +			break;
> +		default:
> +			errno =3D EPROTO;
> +			break;
> +		}
>  	}
>  =

>  	return rc;
> -- =

> 2.1.3
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
