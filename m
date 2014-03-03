Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKN4o-0004wT-An
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 07:14:15 +0000
Date: Mon, 3 Mar 2014 08:13:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140303071352.GI17250@pengutronix.de>
References: <1393599567-20329-1-git-send-email-philippe.retornaz@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393599567-20329-1-git-send-email-philippe.retornaz@epfl.ch>
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
Subject: Re: [PATCH 1/1] blspec: Fix when NFS is not enabled
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

Hi Philippe,

On Fri, Feb 28, 2014 at 03:59:27PM +0100, Philippe R=E9tornaz wrote:
> Commit 0b10801bb (blspec: Add NFS support) broke blspec when NFS is
> disabled as parse_nfs_url() will return NULL.
> =

> So use IS_ERR_OR_NULL() instead of IS_ERR().
> =

> Signed-off-by: Philippe R=E9tornaz <philippe.retornaz@epfl.ch>
> ---
>  common/blspec.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/common/blspec.c b/common/blspec.c
> index fcdcc77..8c2b6ca 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -252,7 +252,7 @@ int blspec_scan_directory(struct blspec *blspec, cons=
t char *root)
>  	char *entry_default =3D NULL, *entry_once =3D NULL, *name, *nfspath =3D=
 NULL;
>  =

>  	nfspath =3D parse_nfs_url(root);
> -	if (!IS_ERR(nfspath))
> +	if (!IS_ERR_OR_NULL(nfspath))
>  		root =3D nfspath;

Thanks for catching this. The usage of IS_ERR_OR_NULL is frowned upon in
the Kernel, we shouldn't use it in barebox either. A function should
either return a valid error pointer or NULL for failure, but not both. I
fixed this with changing parse_nfs_url() to:

	if (!IS_ENABLED(CONFIG_FS_NFS))
		return ERR_PTR(-ENOSYS);

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
