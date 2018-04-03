Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Gh0-00027k-26
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:49 +0200
Message-Id: <20180403074851.5411-18-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/19] fs: nfs: Switch to dcache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |   1 -
 fs/nfs.c   | 542 ++++++++++++++++++++++++++-----------------------------------
 2 files changed, 234 insertions(+), 309 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index e3460e4443..b2d4242e63 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -41,7 +41,6 @@ config FS_OMAP4_USBBOOT
 
 config FS_NFS
 	depends on NET
-	depends on BROKEN
 	bool
 	prompt "nfs support"
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 75cd127eeb..eb5db344db 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -20,6 +20,7 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
+#define pr_fmt(fmt) "NFS: " fmt
 
 #include <common.h>
 #include <net.h>
@@ -127,6 +128,11 @@ struct rpc_reply {
 #define NFS_TIMEOUT	(2 * SECOND)
 #define NFS_MAX_RESEND	5
 
+struct nfs_fh {
+	unsigned short size;
+	unsigned char data[NFS3_FHSIZE];
+};
+
 struct nfs_priv {
 	struct net_connection *con;
 	IPaddr_t server;
@@ -136,18 +142,34 @@ struct nfs_priv {
 	uint16_t nfs_port;
 	unsigned manual_nfs_port:1;
 	uint32_t rpc_id;
-	uint32_t rootfh_len;
-	char rootfh[NFS3_FHSIZE];
+	struct nfs_fh rootfh;
 };
 
 struct file_priv {
 	struct kfifo *fifo;
 	void *buf;
-	uint32_t filefh_len;
-	char filefh[NFS3_FHSIZE];
+	struct nfs_priv *npriv;
+	struct nfs_fh fh;
+};
+
+struct nfs_inode {
+	struct inode inode;
+	struct nfs_fh fh;
 	struct nfs_priv *npriv;
 };
 
+static inline struct nfs_inode *nfsi(struct inode *inode)
+{
+	return container_of(inode, struct nfs_inode, inode);
+}
+
+static void nfs_set_fh(struct inode *inode, struct nfs_fh *fh)
+{
+	struct nfs_inode *ninode = nfsi(inode);
+
+	ninode->fh = *fh;
+}
+
 static uint64_t nfs_timer_start;
 
 static int nfs_state;
@@ -234,17 +256,14 @@ struct xdr_stream {
 #define XDR_QUADLEN(l)		(((l) + 3) >> 2)
 
 struct nfs_dir {
-	DIR dir;
-
 	/*
 	 * stream points to the next entry3 in the reply member of READDIR3res
 	 * (if any, to the end indicator otherwise).
 	 */
 	struct xdr_stream stream;
-	struct dirent ent;
-	struct file_priv *priv;
 	uint64_t cookie;
 	char cookieverf[NFS3_COOKIEVERFSIZE];
+	struct nfs_fh fh;
 };
 
 static void xdr_init(struct xdr_stream *stream, void *buf, int len)
@@ -300,11 +319,11 @@ static int decode_filename(struct xdr_stream *xdr, char *name, u32 *length)
 	return 0;
 
 out_nametoolong:
-	printf("%s: returned a too long filename: %u\n", __func__, count);
+	pr_err("%s: returned a too long filename: %u\n", __func__, count);
 	return -ENAMETOOLONG;
 
 out_overflow:
-	printf("%s: premature end of packet\n", __func__);
+	pr_err("%s: premature end of packet\n", __func__);
 	return -EIO;
 }
 
@@ -486,16 +505,16 @@ static uint32_t *nfs_add_uint64(uint32_t *p, uint64_t val)
 	return p + 2;
 }
 
-static uint32_t *nfs_add_fh3(uint32_t *p, unsigned fh_len, const char *fh)
+static uint32_t *nfs_add_fh3(uint32_t *p, struct nfs_fh *fh)
 {
-	*p++ = hton32(fh_len);
+	*p++ = hton32(fh->size);
 
 	/* zero padding */
-	if (fh_len & 3)
-		p[fh_len / 4] = 0;
+	if (fh->size & 3)
+		p[fh->size / 4] = 0;
 
-	memcpy(p, fh, fh_len);
-	p += DIV_ROUND_UP(fh_len, 4);
+	memcpy(p, fh->data, fh->size);
+	p += DIV_ROUND_UP(fh->size, 4);
 	return p;
 }
 
@@ -532,33 +551,36 @@ static const struct {
 	{ 0x00800, S_ISUID },
 };
 
-static int nfs_fattr3_to_stat(uint32_t *p, struct stat *s)
+static int nfs_fattr3_to_stat(uint32_t *p, struct inode *inode)
 {
 	uint32_t mode;
 	size_t i;
 
+	if (!inode)
+		return 0;
+
 	/* offsetof(struct fattr3, type) = 0 */
 	switch (ntoh32(net_read_uint32(p + 0))) {
 	case NF3REG:
-		s->st_mode = S_IFREG;
+		inode->i_mode = S_IFREG;
 		break;
 	case NF3DIR:
-		s->st_mode = S_IFDIR;
+		inode->i_mode = S_IFDIR;
 		break;
 	case NF3BLK:
-		s->st_mode = S_IFBLK;
+		inode->i_mode = S_IFBLK;
 		break;
 	case NF3CHR:
-		s->st_mode = S_IFCHR;
+		inode->i_mode = S_IFCHR;
 		break;
 	case NF3LNK:
-		s->st_mode = S_IFLNK;
+		inode->i_mode = S_IFLNK;
 		break;
 	case NF3SOCK:
-		s->st_mode = S_IFSOCK;
+		inode->i_mode = S_IFSOCK;
 		break;
 	case NF3FIFO:
-		s->st_mode = S_IFIFO;
+		inode->i_mode = S_IFIFO;
 		break;
 	default:
 		printf("%s: invalid mode %x\n",
@@ -570,18 +592,17 @@ static int nfs_fattr3_to_stat(uint32_t *p, struct stat *s)
 	mode = ntoh32(net_read_uint32(p + 1));
 	for (i = 0; i < ARRAY_SIZE(nfs3_mode_bits); ++i) {
 		if (mode & nfs3_mode_bits[i].nfsmode)
-			s->st_mode |= nfs3_mode_bits[i].statmode;
+			inode->i_mode |= nfs3_mode_bits[i].statmode;
 	}
 
 	/* offsetof(struct fattr3, size) = 20 */
-	s->st_size = ntoh64(net_read_uint64(p + 5));
+	inode->i_size = ntoh64(net_read_uint64(p + 5));
 
 	return 0;
 }
 
-static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct stat **s)
+static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct inode *inode)
 {
-	struct stat dummy;
 	/*
 	 * union post_op_attr switch (bool attributes_follow) {
 	 * case TRUE:
@@ -592,11 +613,8 @@ static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct stat **s)
 	 */
 
 	if (ntoh32(net_read_uint32(p++))) {
-		nfs_fattr3_to_stat(p, s ? *s : &dummy);
+		nfs_fattr3_to_stat(p, inode);
 		p += 21;
-	} else if (s) {
-		/* no attributes available */
-		*s = NULL;
 	}
 
 	return p;
@@ -635,14 +653,14 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 
 	p = nfs_packet + sizeof(struct rpc_reply) + 4;
 
-	npriv->rootfh_len = ntoh32(net_read_uint32(p++));
-	if (npriv->rootfh_len > NFS3_FHSIZE) {
+	npriv->rootfh.size = ntoh32(net_read_uint32(p++));
+	if (npriv->rootfh.size > NFS3_FHSIZE) {
 		printf("%s: file handle too big: %lu\n", __func__,
-				(unsigned long)npriv->rootfh_len);
+				(unsigned long)npriv->rootfh.size);
 		return -EIO;
 	}
-	memcpy(npriv->rootfh, p, npriv->rootfh_len);
-	p += DIV_ROUND_UP(npriv->rootfh_len, 4);
+	memcpy(npriv->rootfh.data, p, npriv->rootfh.size);
+	p += DIV_ROUND_UP(npriv->rootfh.size, 4);
 
 	return 0;
 }
@@ -674,9 +692,10 @@ static void nfs_umount_req(struct nfs_priv *npriv)
  *
  * *s is set to NULL if LOOKUP3resok doesn't contain obj_attributes.
  */
-static int nfs_lookup_req(struct file_priv *priv,
-		uint32_t filename_len, const char *filename, struct stat **s)
+static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
+			  const char *filename, struct inode *inode)
 {
+	struct nfs_inode *ninode = nfsi(inode);
 	uint32_t data[1024];
 	uint32_t *p;
 	int len;
@@ -709,73 +728,29 @@ static int nfs_lookup_req(struct file_priv *priv,
 	p = rpc_add_credentials(p);
 
 	/* what.dir */
-	p = nfs_add_fh3(p, priv->filefh_len, priv->filefh);
+	p = nfs_add_fh3(p, fh);
 
 	/* what.name */
-	p = nfs_add_filename(p, filename_len, filename);
+	p = nfs_add_filename(p, strlen(filename), filename);
 
 	len = p - &(data[0]);
 
-	ret = rpc_req(priv->npriv, PROG_NFS, NFSPROC3_LOOKUP, data, len);
+	ret = rpc_req(npriv, PROG_NFS, NFSPROC3_LOOKUP, data, len);
 	if (ret)
 		return ret;
 
 	p = nfs_packet + sizeof(struct rpc_reply) + 4;
 
-	priv->filefh_len = ntoh32(net_read_uint32(p++));
-	if (priv->filefh_len > NFS3_FHSIZE) {
-		debug("%s: file handle too big: %lu\n", __func__,
-				(unsigned long)priv->filefh_len);
+	ninode->fh.size = ntoh32(net_read_uint32(p++));
+	if (ninode->fh.size > NFS3_FHSIZE) {
+		debug("%s: file handle too big: %u\n", __func__,
+		      ninode->fh.size);
 		return -EIO;
 	}
-	memcpy(priv->filefh, p, priv->filefh_len);
-	p += DIV_ROUND_UP(priv->filefh_len, 4);
-
-	if (s)
-		nfs_read_post_op_attr(p, s);
-
-	return 0;
-}
-
-static int nfs_attr_req(struct file_priv *priv, struct stat *s)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-	int ret;
-
-	/*
-	 * struct GETATTR3args {
-	 * 	nfs_fh3 object;
-	 * }
-	 *
-	 * struct GETATTR3resok {
-	 * 	fattr3 obj_attributes;
-	 * };
-	 *
-	 * union GETATTR3res switch (nfsstat3 status) {
-	 * case NFS3_OK:
-	 * 	GETATTR3resok resok;
-	 * default:
-	 * 	void;
-	 * }
-	 */
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	/* object */
-	p = nfs_add_fh3(p, priv->filefh_len, priv->filefh);
-
-	len = p - &(data[0]);
-
-	ret = rpc_req(priv->npriv, PROG_NFS, NFSPROC3_GETATTR, data, len);
-	if (ret)
-		return ret;
+	memcpy(ninode->fh.data, p, ninode->fh.size);
+	p += DIV_ROUND_UP(ninode->fh.size, 4);
 
-	p = nfs_packet + sizeof(struct rpc_reply) + 4;
-
-	nfs_fattr3_to_stat(p, s);
+	nfs_read_post_op_attr(p, inode);
 
 	return 0;
 }
@@ -784,7 +759,7 @@ static int nfs_attr_req(struct file_priv *priv, struct stat *s)
  * returns with dir->stream pointing to the first entry
  * of dirlist3 res.resok.reply
  */
-static void *nfs_readdirattr_req(struct file_priv *priv, struct nfs_dir *dir)
+static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 {
 	uint32_t data[1024];
 	uint32_t *p;
@@ -833,7 +808,7 @@ static void *nfs_readdirattr_req(struct file_priv *priv, struct nfs_dir *dir)
 	p = &(data[0]);
 	p = rpc_add_credentials(p);
 
-	p = nfs_add_fh3(p, priv->filefh_len, priv->filefh);
+	p = nfs_add_fh3(p, &dir->fh);
 	p = nfs_add_uint64(p, dir->cookie);
 
 	memcpy(p, dir->cookieverf, NFS3_COOKIEVERFSIZE);
@@ -841,7 +816,7 @@ static void *nfs_readdirattr_req(struct file_priv *priv, struct nfs_dir *dir)
 
 	p = nfs_add_uint32(p, 1024); /* count */
 
-	ret = rpc_req(priv->npriv, PROG_NFS, NFSPROC3_READDIR, data, p - data);
+	ret = rpc_req(npriv, PROG_NFS, NFSPROC3_READDIR, data, p - data);
 	if (ret)
 		return NULL;
 
@@ -909,7 +884,7 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	p = &(data[0]);
 	p = rpc_add_credentials(p);
 
-	p = nfs_add_fh3(p, priv->filefh_len, priv->filefh);
+	p = nfs_add_fh3(p, &priv->fh);
 	p = nfs_add_uint64(p, offset);
 	p = nfs_add_uint32(p, readlen);
 
@@ -953,82 +928,11 @@ static void nfs_handler(void *ctx, char *packet, unsigned len)
 	nfs_len = len;
 }
 
-static int nfs_create(struct device_d *dev, const char *pathname, mode_t mode)
-{
-	return -ENOSYS;
-}
-
-static int nfs_unlink(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int nfs_mkdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int nfs_rmdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
 static int nfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
 	return -ENOSYS;
 }
 
-static struct file_priv *nfs_do_open(struct device_d *dev,
-		const char *filename, struct stat **s)
-{
-	struct file_priv *priv;
-	struct nfs_priv *npriv = dev->priv;
-	int ret;
-	const char *tok;
-
-	debug("%s: filename = %s\n", __func__, filename);
-	priv = xzalloc(sizeof(*priv));
-
-	priv->npriv = npriv;
-
-	if (!*filename) {
-		priv->filefh_len = npriv->rootfh_len;
-		memcpy(priv->filefh, npriv->rootfh, npriv->rootfh_len);
-		return priv;
-	}
-
-	filename++;
-
-	priv->filefh_len = npriv->rootfh_len;
-	memcpy(priv->filefh, npriv->rootfh, NFS3_FHSIZE);
-
-	while (*filename) {
-		size_t flen;
-
-		tok = strchr(filename, '/');
-		if (tok)
-			flen = tok - filename;
-		else
-			flen = strlen(filename);
-
-		ret = nfs_lookup_req(priv, flen, filename, s);
-		if (ret)
-			goto out;
-
-		if (tok)
-			filename += flen + 1;
-		else
-			break;
-	}
-
-	return priv;
-
-out:
-	free(priv);
-
-	return ERR_PTR(ret);
-}
-
 static void nfs_do_close(struct file_priv *priv)
 {
 	if (priv->fifo)
@@ -1037,34 +941,8 @@ static void nfs_do_close(struct file_priv *priv)
 	free(priv);
 }
 
-static struct file_priv *nfs_do_stat(struct device_d *dev,
-		const char *filename, struct stat *s)
-{
-	struct file_priv *priv;
-	int ret;
-	struct stat **sptr = &s;
-
-	debug("%s: filename = %s\n", __func__, filename);
-	priv = nfs_do_open(dev, filename, sptr);
-	if (IS_ERR(priv))
-		return priv;
-
-	if (!*sptr) {
-		/*
-		 * The nfs server didn't provide obj_attributes in the lookup
-		 * reply, so ask for them explicitly.
-		 */
-		ret = nfs_attr_req(priv, s);
-		if (ret) {
-			nfs_do_close(priv);
-			return ERR_PTR(ret);
-		}
-	}
-
-	return priv;
-}
-
-static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
+static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
+			    char **target)
 {
 	uint32_t data[1024];
 	uint32_t *p;
@@ -1095,11 +973,11 @@ static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
 	p = &(data[0]);
 	p = rpc_add_credentials(p);
 
-	p = nfs_add_fh3(p, priv->filefh_len, priv->filefh);
+	p = nfs_add_fh3(p, fh);
 
 	len = p - &(data[0]);
 
-	ret = rpc_req(priv->npriv, PROG_NFS, NFSPROC3_READLINK, data, len);
+	ret = rpc_req(npriv, PROG_NFS, NFSPROC3_READLINK, data, len);
 	if (ret)
 		return ret;
 
@@ -1110,44 +988,37 @@ static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
 	len = ntoh32(net_read_uint32(p)); /* new path length */
 	p++;
 
-	if (len > size)
-		return -ENOMEM;
-
-	memcpy(buf, p, len);
+	*target = xzalloc(len + 1);
+	memcpy(*target, p, len);
 
 	return 0;
 }
 
-static int nfs_readlink(struct device_d *dev, const char *filename,
-			char *realname, size_t size)
+static const char *nfs_get_link(struct dentry *dentry, struct inode *inode)
 {
-	struct file_priv *priv;
+	struct nfs_inode *ninode = nfsi(inode);
+	struct nfs_priv *npriv = ninode->npriv;
 	int ret;
 
-	priv = nfs_do_open(dev, filename, NULL);
-	if (IS_ERR(priv))
-		return PTR_ERR(priv);
-
-	ret = nfs_readlink_req(priv, realname, size);
-	if (ret) {
-		nfs_do_close(priv);
-		return ret;
-	}
+	ret = nfs_readlink_req(npriv, &ninode->fh, &inode->i_link);
+	if (ret)
+		return ERR_PTR(ret);
 
-	return 0;
+	return inode->i_link;
 }
 
 static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 {
+	struct inode *inode = file->f_inode;
+	struct nfs_inode *ninode = nfsi(inode);
+	struct nfs_priv *npriv = ninode->npriv;
 	struct file_priv *priv;
-	struct stat s;
-
-	priv = nfs_do_stat(dev, filename, &s);
-	if (IS_ERR(priv))
-		return PTR_ERR(priv);
 
+	priv = xzalloc(sizeof(*priv));
+	priv->fh = ninode->fh;
+	priv->npriv = npriv;
 	file->priv = priv;
-	file->size = s.st_size;
+	file->size = inode->i_size;
 
 	priv->fifo = kfifo_alloc(1024);
 	if (!priv->fifo) {
@@ -1199,115 +1070,170 @@ static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 	return file->pos;
 }
 
-static DIR *nfs_opendir(struct device_d *dev, const char *pathname)
+static int nfs_iterate(struct file *file, struct dir_context *ctx)
 {
-	struct file_priv *priv;
+	struct dentry *dentry = file->f_path.dentry;
+	struct inode *dir = d_inode(dentry);
+	struct nfs_priv *npriv = nfsi(dir)->npriv;
 	void *buf = NULL;
-	struct nfs_dir *dir;
+	struct nfs_dir *ndir;
+	struct xdr_stream *xdr;
+	int ret;
+	uint32_t *p, len;
 
-	priv = nfs_do_open(dev, pathname, NULL);
-	if (IS_ERR(priv))
-		return NULL;
+	ndir = xzalloc(sizeof(*ndir));
+	ndir->fh = nfsi(dir)->fh;
 
-	dir = xzalloc(sizeof(*dir));
-	dir->priv = priv;
+	while (1) {
+		/* cookie == 0 and cookieverf == 0 means start of dir */
+		buf = nfs_readdirattr_req(npriv, ndir);
+		if (!buf) {
+			pr_err("%s: nfs_readdirattr_req failed\n", __func__);
+			ret = -EINVAL;
+			goto out;
+		}
 
-	/* cookie == 0 and cookieverf == 0 means start of dir */
-	buf = nfs_readdirattr_req(priv, dir);
-	if (!buf) {
-		debug("%s: nfs_readdirattr_req failed\n", __func__);
-		goto err;
-	}
+		xdr = &ndir->stream;
 
-	return &dir->dir;
+		while (1) {
+			char name[256];
 
-err:
-	free(buf);
-	free(dir);
-	nfs_do_close(priv);
-	return NULL;
-}
+			p = xdr_inline_decode(xdr, 4);
+			if (!p)
+				goto err_eop;
 
-static struct dirent *nfs_readdir(struct device_d *dev, DIR *dir)
-{
-	struct nfs_dir *ndir = container_of(dir, struct nfs_dir, dir);
-	uint32_t *p;
-	int ret;
-	int len;
-	struct xdr_stream *xdr = &ndir->stream;
+			if (!net_read_uint32(p)) {
+				/* eof? */
+				p = xdr_inline_decode(xdr, 4);
+				if (!p)
+					goto err_eop;
 
-again:
-	p = xdr_inline_decode(xdr, 4);
-	if (!p) {
-		printf("%s: premature end of packet\n", __func__);
-		return NULL;
-	}
+				if (net_read_uint32(p)) {
+					ret = 0;
+					goto out;
+				}
 
-	if (!net_read_uint32(p)) {
-		/* eof? */
-		p = xdr_inline_decode(xdr, 4);
-		if (!p) {
-			printf("%s: premature end of packet\n", __func__);
-			return NULL;
-		}
-		if (net_read_uint32(p))
-			return NULL;
+				break;
+			}
 
-		if (!nfs_readdirattr_req(ndir->priv, ndir)) {
-			printf("%s: nfs_readdirattr_req failed\n", __func__);
-			return NULL;
-		}
+			/* skip over fileid */
+			p = xdr_inline_decode(xdr, 8);
+			if (!p)
+				goto err_eop;
 
-		goto again;
-	}
+			ret = decode_filename(xdr, name, &len);
+			if (ret)
+				goto out;
 
-	/* there is another entry available in the last reply */
+			dir_emit(ctx, name, len, 0, DT_UNKNOWN);
 
-	/* skip over fileid */
-	p = xdr_inline_decode(xdr, 8);
-	if (!p) {
-		printf("%s: premature end of packet\n", __func__);
-		return NULL;
+			p = xdr_inline_decode(xdr, 8);
+			if (!p)
+				goto err_eop;
+
+			ndir->cookie = ntoh64(net_read_uint64(p));
+		}
+		free(buf);
 	}
 
-	ret = decode_filename(xdr, ndir->ent.d_name, &len);
-	if (ret)
-		return NULL;
+	ret = 0;
 
-	p = xdr_inline_decode(xdr, 8);
-	if (!p) {
-		printf("%s: premature end of packet\n", __func__);
+out:
+	free(ndir->stream.buf);
+	free(ndir);
+
+	return ret;
+
+err_eop:
+	pr_err("Unexpected end of packet\n");
+
+	return -EIO;
+}
+
+static struct inode *nfs_alloc_inode(struct super_block *sb)
+{
+	struct nfs_inode *node;
+
+	node = xzalloc(sizeof(*node));
+	if (!node)
 		return NULL;
-	}
-	ndir->cookie = ntoh64(net_read_uint64(p));
 
-	return &ndir->ent;
+	return &node->inode;
 }
 
-static int nfs_closedir(struct device_d *dev, DIR *dir)
+static const struct inode_operations nfs_file_inode_operations;
+static const struct file_operations nfs_dir_operations;
+static const struct inode_operations nfs_dir_inode_operations;
+static const struct file_operations nfs_file_operations;
+static const struct inode_operations nfs_symlink_inode_operations = {
+	.get_link = nfs_get_link,
+};
+
+static int nfs_init_inode(struct nfs_priv *npriv, struct inode *inode,
+			  unsigned int mode)
 {
-	struct nfs_dir *ndir = (void *)dir;
+	struct nfs_inode *ninode = nfsi(inode);
 
-	nfs_do_close(ndir->priv);
-	free(ndir->stream.buf);
-	free(ndir);
+	ninode->npriv = npriv;
+
+	inode->i_ino = get_next_ino();
+	inode->i_mode = mode;
+
+	switch (inode->i_mode & S_IFMT) {
+	default:
+		return -EINVAL;
+	case S_IFREG:
+		inode->i_op = &nfs_file_inode_operations;
+		inode->i_fop = &nfs_file_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &nfs_dir_inode_operations;
+		inode->i_fop = &nfs_dir_operations;
+		inc_nlink(inode);
+		break;
+	case S_IFLNK:
+		inode->i_op = &nfs_symlink_inode_operations;
+		break;
+	}
 
 	return 0;
 }
 
-static int nfs_stat(struct device_d *dev, const char *filename, struct stat *s)
+static struct dentry *nfs_lookup(struct inode *dir, struct dentry *dentry,
+				   unsigned int flags)
 {
-	struct file_priv *priv;
+	struct nfs_inode *ndir = nfsi(dir);
+	struct inode *inode = new_inode(dir->i_sb);
+	struct nfs_priv *npriv = ndir->npriv;
+	int ret;
 
-	priv = nfs_do_stat(dev, filename, s);
-	if (IS_ERR(priv)) {
-		return PTR_ERR(priv);
-	} else {
-		nfs_do_close(priv);
-		return 0;
-	}
+	if (!inode)
+		return NULL;
+
+	ret = nfs_lookup_req(npriv, &ndir->fh, dentry->name, inode);
+	if (ret)
+		return NULL;
+
+	nfs_init_inode(npriv, inode, inode->i_mode);
+
+	d_add(dentry, inode);
+
+	return NULL;
 }
 
+static const struct file_operations nfs_dir_operations = {
+	.iterate = nfs_iterate,
+};
+
+static const struct inode_operations nfs_dir_inode_operations =
+{
+	.lookup = nfs_lookup,
+};
+
+static const struct super_operations nfs_ops = {
+	.alloc_inode = nfs_alloc_inode,
+};
+
 static char *rootnfsopts;
 
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
@@ -1347,8 +1273,10 @@ static int nfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct nfs_priv *npriv = xzalloc(sizeof(struct nfs_priv));
+	struct super_block *sb = &fsdev->sb;
 	char *tmp = xstrdup(fsdev->backingstore);
 	char *path;
+	struct inode *inode;
 	int ret;
 
 	dev->priv = npriv;
@@ -1414,6 +1342,13 @@ static int nfs_probe(struct device_d *dev)
 
 	free(tmp);
 
+	sb->s_op = &nfs_ops;
+
+	inode = new_inode(sb);
+	nfs_set_fh(inode, &npriv->rootfh);
+	nfs_init_inode(npriv, inode, S_IFDIR);
+	sb->s_root = d_make_root(inode);
+
 	return 0;
 
 err2:
@@ -1443,17 +1378,8 @@ static struct fs_driver_d nfs_driver = {
 	.close     = nfs_close,
 	.read      = nfs_read,
 	.lseek     = nfs_lseek,
-	.opendir   = nfs_opendir,
-	.readdir   = nfs_readdir,
-	.closedir  = nfs_closedir,
-	.stat      = nfs_stat,
-	.create    = nfs_create,
-	.unlink    = nfs_unlink,
-	.mkdir     = nfs_mkdir,
-	.rmdir     = nfs_rmdir,
 	.write     = nfs_write,
 	.truncate  = nfs_truncate,
-	.readlink  = nfs_readlink,
 	.flags     = 0,
 	.drv = {
 		.probe  = nfs_probe,
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
