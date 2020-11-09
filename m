Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc348-0000XU-Tk
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 09:02:22 +0000
Date: Mon, 9 Nov 2020 10:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109090215.GF29830@pengutronix.de>
References: <20201103200932.18824-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103200932.18824-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] nfs: check return value of various rpc calls
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe,

I've rewritten this thing a little bit. First of all, this doesn't need
preprocessor tricks and also with this the nfserror to error mapping
function returns the error string, so we can convert printing the
messages to pr_* or dev_* functions. Also we use the human readable
error names for the errors we have a string for.

Sascha

-------------------------------8<--------------------------------------

From 3d764946914356eca94622a2eeeb4df459026d6d Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Uwe=3D20Kleine-K=3DC3=3DB6nig?=3D <u.kleine-koenig@pengut=
ronix.de>
Date: Tue, 3 Nov 2020 21:09:32 +0100
Subject: [PATCH] nfs: check return value of various rpc calls
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Check more carefully for failing requests. This improves the error
message when trying to mount a non-exported nfs directory from:

	nfs_mount_req: file handle too big: 44831
to
	ERROR: NFS: Mounting failed: Permission denied

. This also fixes an out-of-bounds access as the filehandle size (44831
above) is read from just after the network packet in the error case.

Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 126 ++++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 115 insertions(+), 11 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 6c4637281d..db159f5ab8 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -263,6 +263,76 @@ struct nfs_dir {
 	struct nfs_fh fh;
 };
 =

+struct nfserror {
+	int ne;
+	int e;
+	const char *name;
+};
+
+static struct nfserror nfserrors[] =3D {
+	{ .ne =3D NFS3ERR_PERM, .e =3D EPERM },
+	{ .ne =3D NFS3ERR_NOENT, .e =3D ENOENT },
+	{ .ne =3D NFS3ERR_IO, .e =3D EIO },
+	{ .ne =3D NFS3ERR_NXIO, .e =3D ENXIO },
+	{ .ne =3D NFS3ERR_ACCES, .e =3D EACCES },
+	{ .ne =3D NFS3ERR_EXIST, .e =3D EEXIST },
+	{ .ne =3D NFS3ERR_XDEV, .e =3D EXDEV },
+	{ .ne =3D NFS3ERR_NODEV, .e =3D ENODEV },
+	{ .ne =3D NFS3ERR_NOTDIR, .e =3D ENOTDIR },
+	{ .ne =3D NFS3ERR_ISDIR, .e =3D EISDIR },
+	{ .ne =3D NFS3ERR_INVAL, .e =3D EINVAL },
+	{ .ne =3D NFS3ERR_FBIG, .e =3D EFBIG },
+	{ .ne =3D NFS3ERR_NOSPC, .e =3D ENOSPC },
+	{ .ne =3D NFS3ERR_ROFS, .e =3D EROFS },
+	{ .ne =3D NFS3ERR_MLINK, .e =3D EMLINK },
+	{ .ne =3D NFS3ERR_NAMETOOLONG, .e =3D ENAMETOOLONG },
+	{ .ne =3D NFS3ERR_NOTEMPTY, .e =3D ENOTEMPTY },
+	{ .ne =3D NFS3ERR_DQUOT, .e =3D EDQUOT },
+	{ .ne =3D NFS3ERR_STALE, .e =3D ESTALE },
+	{ .ne =3D NFS3ERR_REMOTE, .e =3D EREMOTE },
+	{ .ne =3D NFS3ERR_NOTSUPP, .e =3D EOPNOTSUPP },
+	{ .ne =3D NFS3ERR_BADHANDLE, .e =3D EINVAL, .name =3D "BADHANDLE"},
+	{ .ne =3D NFS3ERR_NOT_SYNC, .e =3D EINVAL, .name =3D "NOT_SYNC" },
+	{ .ne =3D NFS3ERR_BAD_COOKIE, .e =3D EINVAL, .name =3D "BAD_COOKIE" },
+	{ .ne =3D NFS3ERR_TOOSMALL, .e =3D EINVAL, .name =3D "TOOSMALL" },
+	{ .ne =3D NFS3ERR_SERVERFAULT, .e =3D EINVAL, .name =3D "SERVERFAULT" },
+	{ .ne =3D NFS3ERR_BADTYPE, .e =3D EINVAL, .name =3D "BADTYPE" },
+	{ .ne =3D NFS3ERR_JUKEBOX, .e =3D EINVAL, .name =3D "JUKEBOX" },
+};
+
+static const char *nfserrstr(u32 nfserror, int *errcode)
+{
+#define BUFLEN 32
+	static char str[BUFLEN];
+	int i;
+
+	/*
+	 * Most NFS errors have a corresponding POSIX error code. But not all of
+	 * them have one, so some must be mapped to a different code here.
+	 */
+	for (i =3D 0; i < ARRAY_SIZE(nfserrors); i++) {
+		struct nfserror *err =3D &nfserrors[i];
+
+		if (nfserror =3D=3D err->ne) {
+			if (errcode)
+				*errcode =3D -err->e;
+
+			if (err->name) {
+				snprintf(str, BUFLEN, "NFS3ERR_%s", err->name);
+				return str;
+			} else
+				return strerror(err->e);
+		}
+	}
+
+	if (errcode)
+		*errcode =3D -EINVAL;
+
+	snprintf(str, BUFLEN, "Unknown NFS error %d", nfserror);
+	return str;
+#undef BUFLEN
+}
+
 static void xdr_init(struct xdr_stream *stream, void *buf, int len)
 {
 	stream->p =3D stream->buf =3D buf;
@@ -642,7 +712,7 @@ static uint32_t *nfs_read_post_op_attr(uint32_t *p, str=
uct inode *inode)
 static int nfs_mount_req(struct nfs_priv *npriv)
 {
 	uint32_t data[1024];
-	uint32_t *p;
+	uint32_t *p, status;
 	int len;
 	int pathlen;
 	struct packet *nfs_packet;
@@ -667,7 +737,18 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 =

-	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply) + 4;
+	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply);
+
+	/*
+	 * Theoretically the error status is one of MNT3ERR_..., but the NFS
+	 * constants are identical.
+	 */
+	status =3D ntoh32(net_read_uint32(p++));
+	if (status !=3D NFS3_OK) {
+		int ret;
+		pr_err("Mounting failed: %s\n", nfserrstr(status, &ret));
+		return ret;
+	}
 =

 	npriv->rootfh.size =3D ntoh32(net_read_uint32(p++));
 	if (npriv->rootfh.size > NFS3_FHSIZE) {
@@ -719,7 +800,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struc=
t nfs_fh *fh,
 {
 	struct nfs_inode *ninode =3D nfsi(inode);
 	uint32_t data[1024];
-	uint32_t *p;
+	uint32_t *p, status;
 	int len;
 	struct packet *nfs_packet;
 =

@@ -761,7 +842,13 @@ static int nfs_lookup_req(struct nfs_priv *npriv, stru=
ct nfs_fh *fh,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 =

-	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply) + 4;
+	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply);
+	status =3D ntoh32(net_read_uint32(p++));
+	if (status !=3D NFS3_OK) {
+		int ret;
+		pr_err("Lookup failed: %s\n", nfserrstr(status, &ret));
+		return ret;
+	}
 =

 	ninode->fh.size =3D ntoh32(net_read_uint32(p++));
 	if (ninode->fh.size > NFS3_FHSIZE) {
@@ -787,7 +874,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struc=
t nfs_fh *fh,
 static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *d=
ir)
 {
 	uint32_t data[1024];
-	uint32_t *p;
+	uint32_t *p, status;
 	int len;
 	struct packet *nfs_packet;
 	void *buf;
@@ -845,7 +932,13 @@ static void *nfs_readdirattr_req(struct nfs_priv *npri=
v, struct nfs_dir *dir)
 	if (IS_ERR(nfs_packet))
 		return NULL;
 =

-	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply) + 4;
+	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply);
+	status =3D ntoh32(net_read_uint32(p++));
+	if (status !=3D NFS3_OK) {
+		pr_err("Readdir failed: %s\n", nfserrstr(status, NULL));
+		return NULL;
+	}
+
 	p =3D nfs_read_post_op_attr(p, NULL);
 =

 	/* update cookieverf */
@@ -879,8 +972,8 @@ static int nfs_read_req(struct file_priv *priv, uint64_=
t offset,
 		uint32_t readlen)
 {
 	uint32_t data[1024];
-	uint32_t *p;
-	int len;
+	uint32_t *p, status;
+	int len, ret;
 	struct packet *nfs_packet;
 	uint32_t rlen, eof;
 =

@@ -922,7 +1015,12 @@ static int nfs_read_req(struct file_priv *priv, uint6=
4_t offset,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 =

-	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply) + 4;
+	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply);
+	status =3D ntoh32(net_read_uint32(p++));
+	if (status !=3D NFS3_OK) {
+		pr_err("Read failed: %s\n", nfserrstr(status, &ret));
+		return ret;
+	}
 =

 	p =3D nfs_read_post_op_attr(p, NULL);
 =

@@ -981,7 +1079,7 @@ static int nfs_readlink_req(struct nfs_priv *npriv, st=
ruct nfs_fh *fh,
 			    char **target)
 {
 	uint32_t data[1024];
-	uint32_t *p;
+	uint32_t *p, status;
 	uint32_t len;
 	struct packet *nfs_packet;
 =

@@ -1017,7 +1115,13 @@ static int nfs_readlink_req(struct nfs_priv *npriv, =
struct nfs_fh *fh,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 =

-	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply) + 4;
+	p =3D (void *)nfs_packet->data + sizeof(struct rpc_reply);
+	status =3D ntoh32(net_read_uint32(p++));
+	if (status !=3D NFS3_OK) {
+		int ret;
+		pr_err("Readlink failed: %s\n", nfserrstr(status, &ret));
+		return ret;
+	}
 =

 	p =3D nfs_read_post_op_attr(p, NULL);
 =

-- =

2.20.1

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
