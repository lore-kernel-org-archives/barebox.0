Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZVv5-0005Qj-8f
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:14:33 +0000
Date: Mon, 2 Nov 2020 10:14:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102091429.GU26805@pengutronix.de>
References: <20201030113614.9572-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030113614.9572-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] nfs: check return value of various rpc calls
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 30, 2020 at 12:36:14PM +0100, Uwe Kleine-K=F6nig wrote:
> Check more carefully for failing requests. This improves the error
> message when trying to mount a non-exported nfs directory from:
> =

> 	nfs_mount_req: file handle too big: 44831
> =

> to
> =

> 	nfs_mount_req: Mounting gave error NFS3ERR_ACCES(0xd)
> =

> .
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 91 +++++++++++++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 81 insertions(+), 10 deletions(-)
> =

> diff --git a/fs/nfs.c b/fs/nfs.c
> index 15ddab7915df..0be32322fb65 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -636,13 +636,33 @@ static uint32_t *nfs_read_post_op_attr(uint32_t *p,=
 struct inode *inode)
>  	return p;
>  }
>  =

> +static int nfserror_to_err(u32 nfserror, const char **errorname)
> +{
> +#define E(NFSERR, ERR)			\
> +	case NFSERR:			\
> +		*errorname =3D #NFSERR;	\
> +		return -ERR
> +
> +	switch (nfserror) {
> +	E(NFS3_OK, 0);
> +	E(NFS3ERR_NOENT, ENOENT);
> +	E(NFS3ERR_IO, EIO);
> +	E(NFS3ERR_ACCES, EACCES);
> +	E(NFS3ERR_NOTDIR, ENOTDIR);
> +	E(NFS3ERR_NAMETOOLONG, ENAMETOOLONG);

You convert the NFS error codes to the corresponding error codes. For
these we already have strings, so why not just print them with %pe rather
than returning another string from this function?

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
