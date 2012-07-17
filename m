Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr34a-0000vW-5c
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 08:24:05 +0000
Date: Tue, 17 Jul 2012 10:23:53 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120717082353.GD592@pengutronix.de>
References: <20120627082537.GE1623@pengutronix.de>
 <1340788113-3171-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340788113-3171-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands/crc: assert newline after output with big offsets
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

Hello Sascha,

On Wed, Jun 27, 2012 at 11:08:33AM +0200, Uwe Kleine-K=F6nig wrote:
> This fixes
> =

> 	barebox@Very long board name:/ crc32 -f /dev/mem 0x83f00000+0xfff
> 	CRC32 for /dev/mem 0x83fff000 ... 0x83fffffe =3D=3D> 0xa080584bbarebox@V=
ery long board name:/
> =

> The problem here was that the return value of
> lseek(fd, 0x83f00000, SEEK_SET) (which is 0x83f00000) was casted to an
> int (which is -2081423360), returned to do_crc and interpreted as
> error there without yielding another error message.
> =

> This also makes
> =

> 	crc32 -f /dev/mem 0xffffffff+0x1
> =

> die on a NULL pointer exception instead of reporting:
> =

> 	lseek: No error
> =

> :-)
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> On Wed, Jun 27, 2012 at 10:25:37AM +0200, Sascha Hauer wrote:
> > On Wed, Jun 27, 2012 at 10:13:13AM +0200, Uwe Kleine-K=F6nig wrote:
> > > Without this patch the next command prompt starts directly after the
> > > calculated check sum. While at it also fix the coding style.
> > =

> > Under which conditions does this happen? The newline should be appended=
 in
> > do_crc()
> You're right, my patch was not correct. This version should do the right
> thing now.
ping

>  commands/crc.c |    7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/crc.c b/commands/crc.c
> index df22941..10a2900 100644
> --- a/commands/crc.c
> +++ b/commands/crc.c
> @@ -47,9 +47,12 @@ static int file_crc(char* filename, ulong start, ulong=
 size, ulong *crc,
>  	}
>  =

>  	if (start > 0) {
> -		ret =3D lseek(fd, start, SEEK_SET);
> -		if (ret =3D=3D -1) {
> +		off_t lseek_ret;
> +		errno =3D 0;
> +		lseek_ret =3D lseek(fd, start, SEEK_SET);
> +		if (lseek_ret =3D=3D (off_t)-1 && errno) {
>  			perror("lseek");
> +			ret =3D -1;
>  			goto out;
>  		}
>  	}
> -- =

> 1.7.10
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
