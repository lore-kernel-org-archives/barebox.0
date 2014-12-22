Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y39Ej-0001XG-Er
 for barebox@lists.infradead.org; Mon, 22 Dec 2014 20:05:50 +0000
Date: Mon, 22 Dec 2014 21:05:23 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141222200523.GB28003@pengutronix.de>
References: <1419268822-30204-1-git-send-email-victorien.vedrine@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419268822-30204-1-git-send-email-victorien.vedrine@ophrys.net>
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
Subject: Re: [PATCH v3] partitions: dos: Fix support of extended partition
 type 0x05
To: Victorien Vedrine <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

On Mon, Dec 22, 2014 at 06:20:22PM +0100, Victorien Vedrine wrote:
> From: victorien <victorien.vedrine@ophrys.net>
> =

> Signed-off-by: Victorien Vedrine <victorien.vedrine@ophrys.net>
> ---
>  common/partitions/dos.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 37addfd..f02c822 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -205,11 +205,11 @@ static void dos_partition(void *buf, struct block_d=
evice *blk,
>  			pd->used_entries++;
>  			/*
>  			 * Partitions of type 0x05 and 0x0f (and some more)
> -			 * contain extended partitions. Only check for type 0x0f
> -			 * here as this is the easiest to parse and common
> -			 * enough.
> +			 * contain extended partitions. Only check for type
> +			 * 0x05 and 0x0f.
the now removed comment implies that partitions of type 0x05 and 0x0f
are to be handled differently. With your change however they are handled
identically. Is this correct? Might be worth to explain in the commit
log.

>  			 */
> -			if (pentry.dos_partition_type =3D=3D 0x0f) {
> +			if (pentry.dos_partition_type =3D=3D 0x0f ||
> +				pentry.dos_partition_type =3D=3D 0x05) {
There are two schools for indention in this case. Either use two tabs
more than the line above, or align the continuation at the opening
brace.

Are you using vim? Then add "filetype indent on" to your .vimrc and
depending on the way you want to handle the above case also add

	set cinoptions=3D(,:

for aligning with the opening brace, or

	set cinoptions=3D:

for the two tab preference.

Best regards
Uwe
-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
