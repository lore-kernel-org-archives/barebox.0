Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2lM-0004ac-C1
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:59:50 +0000
Date: Mon, 28 Jan 2019 09:59:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128085926.ituxb5236oslorup@pengutronix.de>
References: <20190125203504.22764-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190125203504.22764-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] gen-dtb-s: annotate magic values with their meaning
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2019 at 09:35:04PM +0100, Uwe Kleine-K=F6nig wrote:
> This helps understand how the imd stuff works because now
> $(git grep IMD_TYPE_OF_COMPATIBLE) also matches the critical code
> location that creates the imd entry.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/gen-dtb-s | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index 4215461edb3c..2b44ffb361eb 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -25,7 +25,7 @@ if [ "$imd" =3D "y" ]; then
>  	if [ "$compat" !=3D "notfound" ]; then
>  =

>  		compatlen=3D$($FDTGET -t s "$dtb" / compatible | wc -c)
> -		le32 0x640c8005
> +		le32 0x640c8005 # IMD_TYPE_OF_COMPATIBLE
>  		le32 $compatlen
>  		echo ".byte " $compat
>  		echo ".balign 4"
> @@ -35,7 +35,7 @@ if [ "$imd" =3D "y" ]; then
>  =

>  	if [ "$model" !=3D "notfound" ]; then
>  		modellen=3D$($FDTGET -t s "$dtb" / model | wc -c)
> -		le32 0x640c8004
> +		le32 0x640c8004 # IMD_TYPE_MODEL
>  		le32 $modellen
>  		echo ".byte " $model
>  		echo ".balign 4"
> -- =

> 2.20.1
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
