Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4SHo-0000e2-48
 for barebox@lists.infradead.org; Tue, 17 Oct 2017 13:52:05 +0000
Date: Tue, 17 Oct 2017 15:51:37 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171017135137.4z7dj7zy4furcos7@pengutronix.de>
References: <20171017131625.23837-1-u.oelmann@pengutronix.de>
 <20171017131625.23837-2-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171017131625.23837-2-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 1/2] commands: i2c: do not restrict i2c_write's data to
 be hex-formatted
To: Ulrich =?iso-8859-1?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On Tue, Oct 17, 2017 at 03:16:24PM +0200, Ulrich =D6lmann wrote:
> The price to pay is needing the usual prefix "0x" for each hex-formatted =
number.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>

ack for the change. I'd like to see the motivation (i.e. consistency with
the other commands in barebox as mentioned in the cover letter) in the
commit log, though.

> ---
>  commands/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/commands/i2c.c b/commands/i2c.c
> index 573032ab1588..b74c53509f38 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -129,7 +129,7 @@ static int do_i2c_write(int argc, char *argv[])
>  =

>  	buf =3D xmalloc(count);
>  	for (i =3D 0; i < count; i++)
> -		*(buf + i) =3D (char) simple_strtol(argv[optind+i], NULL, 16);
> +		*(buf + i) =3D (char) simple_strtol(argv[optind+i], NULL, 0);

Maybe change that to:

		buf[i] =3D simple_strtol(...);

which is a bit easier to read and drops an unnecessary cast? (Or should
that better go in a separate change?)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
