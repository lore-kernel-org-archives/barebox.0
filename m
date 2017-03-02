Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjLLi-0005JB-Kn
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 07:40:32 +0000
Date: Thu, 2 Mar 2017 08:40:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170302074009.skcah6klu3kxzwqe@pengutronix.de>
References: <20170301145004.27750-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301145004.27750-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] memcmp: fix comparison on short read
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 01, 2017 at 03:50:04PM +0100, Uwe Kleine-K=F6nig wrote:
> read() might return less than $count bytes which is only an upper limit.
> The user is supposed to repeat the command to fill a buffer completely.
> =

> So use the convenience wrapper read_full in memcmp.
> =

> This fixes memcmp on /dev/nand0 on an Armada XP.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/memcmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/commands/memcmp.c b/commands/memcmp.c
> index ce044df0d935..a00fddbc825f 100644
> --- a/commands/memcmp.c
> +++ b/commands/memcmp.c
> @@ -91,13 +91,13 @@ static int do_memcmp(int argc, char *argv[])
>  =

>  		now =3D min((loff_t)RW_BUF_SIZE, count);
>  =

> -		r1 =3D read(sourcefd, mem_rw_buf,  now);
> +		r1 =3D read_full(sourcefd, mem_rw_buf, now);
>  		if (r1 < 0) {
>  			perror("read");
>  			goto out;
>  		}
>  =

> -		r2 =3D read(destfd, rw_buf1, now);
> +		r2 =3D read_full(destfd, rw_buf1, now);
>  		if (r2 < 0) {
>  			perror("read");
>  			goto out;
> -- =

> 2.11.0
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
