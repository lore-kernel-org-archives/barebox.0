Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bhHGM-0004kA-VS
 for barebox@lists.infradead.org; Tue, 06 Sep 2016 14:22:12 +0000
Date: Tue, 6 Sep 2016 16:21:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160906142149.xmg753u63hs3stes@pengutronix.de>
References: <1473104178-20389-1-git-send-email-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473104178-20389-1-git-send-email-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 1/2] commands: ubiupdatevol: store return value of read()
 in a signed int
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Ulrich,

please add to the commit log *why* you did this change. *What* you did
is already clear from the change itself.

Added this while applying:

With an unsigned int test for errors from read() can never become true.

Sascha


On Mon, Sep 05, 2016 at 09:36:17PM +0200, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  commands/ubi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/commands/ubi.c b/commands/ubi.c
> index 65d2d256a830..dd981f95ea5d 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -14,10 +14,9 @@
>  =

>  static int do_ubiupdatevol(int argc, char *argv[])
>  {
> -	int fd_img, fd_vol, ret =3D 0;
> +	int count, fd_img, fd_vol, ret =3D 0;
>  	uint64_t size =3D 0;
>  	struct stat st;
> -	unsigned int count;
>  	void *buf;
>  =

>  	if (argc - optind < 2)
> -- =

> 2.8.1
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
