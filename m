Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6cPz-0003lr-7Q
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 07:10:28 +0000
Date: Wed, 29 Aug 2012 09:10:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829071025.GS26594@pengutronix.de>
References: <1346167466-10098-1-git-send-email-eric@eukrea.com>
 <1346167466-10098-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346167466-10098-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/2] stringlist: fix division by zero
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 28, 2012 at 05:24:26PM +0200, Eric B=E9nard wrote:
> len is checked instead of num so when num is zero, we get a
> division by zero a few lines later
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  lib/stringlist.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/lib/stringlist.c b/lib/stringlist.c
> index b965aa0..a8af15d 100644
> --- a/lib/stringlist.c
> +++ b/lib/stringlist.c
> @@ -87,8 +87,8 @@ void string_list_print_by_column(struct string_list *sl)
>  		return;
>  =

>  	num =3D 80 / (len + 1);
> -	if (len =3D=3D 0)
> -		len =3D 1;
> +	if (num =3D=3D 0)
> +		num =3D 1;
>  =

>  	i =3D 0;
>  	list_for_each_entry(entry, &sl->list, list) {
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
