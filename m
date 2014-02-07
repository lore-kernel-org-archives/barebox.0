Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBfFr-0005KO-Lh
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 06:49:40 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 308B8FFB497
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 07:55:57 +0100 (CET)
Date: Fri, 7 Feb 2014 07:50:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207065032.GG9671@ns203013.ovh.net>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-10-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391704854-3141-10-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 9/9] nfs: parse nfsport and mount port from file system
 options
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:40 Thu 06 Feb     , Uwe Kleine-K??nig wrote:
> This allows to use unfs3 on the server side which doesn't integrate into
> portmap/rpcbind which results in the port not being impossible to lookup
> via rpc calls to the portmap program.
> =

> Use it like:
> =

> 	mount -t nfs -o port=3D2703,mountport=3D2703 192.168.77.157:/root /mnt/n=
fs
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 62 +++++++++++++++++++++++++++++++++++++++++++++++++++-------=
----
>  1 file changed, 51 insertions(+), 11 deletions(-)
> =

> diff --git a/fs/nfs.c b/fs/nfs.c
> index 8eec63078dd3..50b3744b4551 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1305,6 +1305,38 @@ static int nfs_stat(struct device_d *dev, const ch=
ar *filename, struct stat *s)
>  	}
>  }
>  =

> +static void parseopt_hu(const char *options, const char *opt,
> +		unsigned short *val)
> +{
> +	const char *start;
> +	size_t optlen =3D strlen(opt);
> +	ulong v;
> +	char *endp;
> +
> +again:
> +	start =3D strstr(options, opt);
> +
> +	if (!start)
> +		return;
> +
> +	if (start > options && start[-1] !=3D ',') {
> +		options =3D start;
> +		goto again;
> +	}
> +
> +	if (start[optlen] !=3D '=3D') {
> +		options =3D start;
> +		goto again;
> +	}
> +
> +	v =3D simple_strtoul(start + optlen + 1, &endp, 0);
> +	if (v > USHORT_MAX)
> +		return;
> +
> +	if (*endp =3D=3D ',' || *endp =3D=3D '\0')
> +		*val =3D v;
> +}

this should be global
> +
>  static int nfs_probe(struct device_d *dev)
>  {
>  	struct fs_device_d *fsdev =3D dev_to_fs_device(dev);
> @@ -1340,19 +1372,27 @@ static int nfs_probe(struct device_d *dev)
>  	/* Need a priviliged source port */
>  	net_udp_bind(npriv->con, 1000);
>  =

> -	ret =3D rpc_lookup_req(npriv, PROG_MOUNT, 1);
> -	if (ret < 0) {
> -		printf("lookup mount port failed with %d\n", ret);
> -		goto err2;
> +	parseopt_hu(fsdev->options, "mountport", &npriv->mount_port);
> +	if (!npriv->mount_port) {
> +		ret =3D rpc_lookup_req(npriv, PROG_MOUNT, 1);
> +		if (ret < 0) {
> +			printf("lookup mount port failed with %d\n", ret);
> +			goto err2;
> +		}
> +		npriv->mount_port =3D ret;
>  	}
> -	npriv->mount_port =3D ret;
> -
> -	ret =3D rpc_lookup_req(npriv, PROG_NFS, 3);
> -	if (ret < 0) {
> -		printf("lookup nfs port failed with %d\n", ret);
> -		goto err2;
> +	debug("mount port: %hu\n", npriv->mount_port);
> +
> +	parseopt_hu(fsdev->options, "port", &npriv->nfs_port);
> +	if (!npriv->nfs_port) {
> +		ret =3D rpc_lookup_req(npriv, PROG_NFS, 3);
> +		if (ret < 0) {
> +			printf("lookup nfs port failed with %d\n", ret);
> +			goto err2;
> +		}
> +		npriv->nfs_port =3D ret;
>  	}
> -	npriv->nfs_port =3D ret;
> +	debug("nfs port: %d\n", npriv->nfs_port);
>  =

>  	ret =3D nfs_mount_req(npriv);
>  	if (ret) {
> -- =

> 1.8.5.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
