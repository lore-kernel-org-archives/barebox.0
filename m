Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y22lq-00075J-8C
 for barebox@lists.infradead.org; Fri, 19 Dec 2014 18:59:27 +0000
Date: Fri, 19 Dec 2014 19:59:01 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141219185901.GG10857@pengutronix.de>
References: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
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
Subject: Re: [PATCH] partitions: dos: Fix support of extended partition type
 0x05
To: victorien <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

Hallo,

On Wed, Dec 17, 2014 at 05:09:57PM +0100, victorien wrote:
> ---
>  common/partitions/dos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 37addfd..8a3c5c3 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -209,7 +209,7 @@ static void dos_partition(void *buf, struct block_dev=
ice *blk,
>  			 * here as this is the easiest to parse and common
>  			 * enough.
>  			 */
> -			if (pentry.dos_partition_type =3D=3D 0x0f) {
> +			if ((pentry.dos_partition_type =3D=3D 0x0f)||(pentry.dos_partition_ty=
pe =3D=3D 0x05)) {
apart from what Sascha said, also add spaces around ||. Also break lines
at or before column 80 (with tabs accounting for 8 columns).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
