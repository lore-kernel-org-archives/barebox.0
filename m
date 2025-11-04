Delivery-date: Tue, 04 Nov 2025 09:08:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC61-00F9Gw-0j
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:08:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC60-000354-5G
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:08:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qMhmCe0kEQK36yF4uR0MVb/3bXvD1fI6dQdM31LiZ8s=; b=bZOxoW7GIonfqySXeEP4mRhPab
	zhDWi03Bzw04prhZJrWuQXa7EhnumoHT2Yrm6ZzTtUnjmhyqoM8BHKcZTz1ndB4+vINwN1lk7KtR3
	ronboseSFLzXydUa3ST68nVMwB4yNxeiluJANPawWlbjr1EijQb93pMWo98glh6ApwvYPZHWtKO7d
	L6ynVBVFZoOw9lJxQWLTvbVgAwBUqerE5TeAZvcKYarK3S7xyDeM3/aKOchQjo1iskPolImb2zeZb
	2CMJxg0Rw4/N0evsW8wDpNn3z8ssurrbas3CDPrb11qhkYukxi1HyRJqJeGOLSviGn8009M8HjmDa
	dG35PcFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5Z-0000000BNwM-0dY8;
	Tue, 04 Nov 2025 08:08:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5W-0000000BNv7-2ZcG
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:08:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-0002nh-7C; Tue, 04 Nov 2025 09:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5M-006zpQ-38;
	Tue, 04 Nov 2025 09:08:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-00000009AfK-1NsS;
	Tue, 04 Nov 2025 09:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 04 Nov 2025 09:08:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-nfs-v1-3-3e69e5c82a41@pengutronix.de>
References: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
In-Reply-To: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243692; l=11349;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9rEypEPrl00H0aGtcD+KCzvmzJ+FQXGF2enkCARVqew=;
 b=Ebqjgr/byQOYf+kJU8HPKp6DKhG+v8Rt8I3cmwTL89PbIZDHuURDtLPZWNaYrPqH/muJfht7m
 mn8SdWBv0ZzA+0Ggc7Cwi0dLzt0GvinyhxZkxvB2v1n5ckHZOC0X5bB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000822_812894_1864BFDA 
X-CRM114-Status: GOOD (  17.73  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] fs: nfs: use dev_* for messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

nfs uses a mixture of pr_*(), printf() and debug() functions for
messageds. Consistently use dev_*().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 77 ++++++++++++++++++++++++++++++++++++++--------------------------
 1 file changed, 46 insertions(+), 31 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 163fd2182c0fc63d88725f0bba6ad5d1a71e2309..c9dc5d14ccec67e252750ce2bed076cf0b63cbd8 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -136,6 +136,7 @@ struct packet {
 };
 
 struct nfs_priv {
+	struct device *dev;
 	struct net_connection *con;
 	IPaddr_t server;
 	char *path;
@@ -366,8 +367,10 @@ static __be32 *xdr_inline_decode(struct xdr_stream *xdr, size_t nbytes)
 /*
  * name is expected to point to a buffer with a size of at least 256 bytes.
  */
-static int decode_filename(struct xdr_stream *xdr, char *name, u32 *length)
+static int decode_filename(struct nfs_priv *npriv, struct xdr_stream *xdr,
+			   char *name, u32 *length)
 {
+	struct device *dev = npriv->dev;
 	__be32 *p;
 	u32 count;
 
@@ -386,11 +389,11 @@ static int decode_filename(struct xdr_stream *xdr, char *name, u32 *length)
 	return 0;
 
 out_nametoolong:
-	pr_err("%s: returned a too long filename: %u\n", __func__, count);
+	dev_err(dev, "%s: returned a too long filename: %u\n", __func__, count);
 	return -ENAMETOOLONG;
 
 out_overflow:
-	pr_err("%s: premature end of packet\n", __func__);
+	dev_err(dev, "%s: premature end of packet\n", __func__);
 	return -EIO;
 }
 
@@ -502,6 +505,7 @@ static void nfs_free_packet(struct packet *packet)
 static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 			      int rpc_proc, uint32_t *data, int datalen)
 {
+	struct device *dev = npriv->dev;
 	struct rpc_call pkt;
 	unsigned short dport;
 	int ret;
@@ -517,7 +521,7 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 	pkt.prog = hton32(rpc_prog);
 	pkt.proc = hton32(rpc_proc);
 
-	debug("%s: prog: %d, proc: %d\n", __func__, rpc_prog, rpc_proc);
+	dev_dbg(dev, "%s: prog: %d, proc: %d\n", __func__, rpc_prog, rpc_proc);
 
 	if (rpc_prog == PROG_PORTMAP) {
 		dport = SUNRPC_PORT;
@@ -585,6 +589,7 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
  */
 static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 {
+	struct device *dev = npriv->dev;
 	uint32_t data[16];
 	struct packet *nfs_packet;
 	uint32_t port;
@@ -613,7 +618,7 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 	nfs_free_packet(nfs_packet);
 
 	if (port == 0) {
-		pr_warn("No UDP port for RPC program %i! "
+		dev_warn(dev, "No UDP port for RPC program %i! "
 		        "Is your NFS server TCP only?\n", prog);
 		return -ENOENT;
 	}
@@ -686,8 +691,10 @@ static const struct {
 	{ 0x00800, S_ISUID },
 };
 
-static int nfs_fattr3_to_stat(uint32_t *p, struct inode *inode)
+static int nfs_fattr3_to_stat(struct nfs_priv *npriv, uint32_t *p,
+			      struct inode *inode)
 {
+	struct device *dev = npriv->dev;
 	uint32_t mode;
 	size_t i;
 
@@ -718,7 +725,7 @@ static int nfs_fattr3_to_stat(uint32_t *p, struct inode *inode)
 		inode->i_mode = S_IFIFO;
 		break;
 	default:
-		printf("%s: invalid mode %x\n",
+		dev_err(dev, "%s: invalid mode %x\n",
 				__func__, ntoh32(net_read_uint32(p + 0)));
 		return -EIO;
 	}
@@ -736,7 +743,8 @@ static int nfs_fattr3_to_stat(uint32_t *p, struct inode *inode)
 	return 0;
 }
 
-static int nfs_read_post_op_attr(struct packet *nfs_packet, struct inode *inode)
+static int nfs_read_post_op_attr(struct nfs_priv *npriv, struct packet *nfs_packet,
+				 struct inode *inode)
 {
 	void *p;
 
@@ -757,7 +765,7 @@ static int nfs_read_post_op_attr(struct packet *nfs_packet, struct inode *inode)
 		p = nfs_packet_read(nfs_packet, 21 * sizeof(uint32_t));
 		if (!p)
 			return -EINVAL;
-		nfs_fattr3_to_stat(p, inode);
+		nfs_fattr3_to_stat(npriv, p, inode);
 	}
 
 	return 0;
@@ -768,6 +776,7 @@ static int nfs_read_post_op_attr(struct packet *nfs_packet, struct inode *inode)
  */
 static int nfs_mount_req(struct nfs_priv *npriv)
 {
+	struct device *dev = npriv->dev;
 	uint32_t data[1024];
 	uint32_t *p, status;
 	int len;
@@ -777,7 +786,7 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 
 	pathlen = strlen(npriv->path);
 
-	debug("%s: %s\n", __func__, npriv->path);
+	dev_dbg(dev, "%s: %s\n", __func__, npriv->path);
 
 	p = &(data[0]);
 	p = rpc_add_credentials(p);
@@ -807,7 +816,7 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		pr_err("Mounting failed: %s\n", nfserrstr(status, &ret));
+		dev_err(dev, "Mounting failed: %s\n", nfserrstr(status, &ret));
 		goto err_free_packet;
 	}
 
@@ -819,7 +828,7 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 
 	npriv->rootfh.size = ntoh32(net_read_uint32(p));
 	if (npriv->rootfh.size > NFS3_FHSIZE) {
-		printf("%s: file handle too big: %lu\n",
+		dev_err(dev, "%s: file handle too big: %lu\n",
 		       __func__, (unsigned long)npriv->rootfh.size);
 		ret = -EIO;
 		goto err_free_packet;
@@ -875,6 +884,7 @@ static void nfs_umount_req(struct nfs_priv *npriv)
 static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 			  const char *filename, struct inode *inode)
 {
+	struct device *dev = npriv->dev;
 	struct nfs_inode *ninode = nfsi(inode);
 	uint32_t data[1024];
 	uint32_t *p, status;
@@ -928,7 +938,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		pr_err("Lookup failed: %s\n", nfserrstr(status, &ret));
+		dev_err(dev, "Lookup failed: %s\n", nfserrstr(status, &ret));
 		goto err_free_packet;
 	}
 
@@ -940,7 +950,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	ninode->fh.size = ntoh32(net_read_uint32(p));
 	if (ninode->fh.size > NFS3_FHSIZE) {
-		debug("%s: file handle too big: %u\n", __func__,
+		dev_dbg(dev, "%s: file handle too big: %u\n", __func__,
 		      ninode->fh.size);
 		ret = -EIO;
 		goto err_free_packet;
@@ -956,7 +966,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	nfs_read_align(nfs_packet, 4);
 
-	nfs_read_post_op_attr(nfs_packet, inode);
+	nfs_read_post_op_attr(npriv, nfs_packet, inode);
 
 	ret = 0;
 
@@ -972,6 +982,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
  */
 static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 {
+	struct device *dev = npriv->dev;
 	uint32_t data[1024];
 	uint32_t *p, status;
 	int len;
@@ -1040,12 +1051,12 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		pr_err("Readdir failed: %s\n", nfserrstr(status, NULL));
+		dev_err(dev, "Readdir failed: %s\n", nfserrstr(status, NULL));
 		ret = -EIO;
 		goto err_free_packet;
 	}
 
-	ret = nfs_read_post_op_attr(nfs_packet, NULL);
+	ret = nfs_read_post_op_attr(npriv, nfs_packet, NULL);
 	if (ret)
 		goto err_free_packet;
 
@@ -1077,6 +1088,8 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 		uint32_t readlen)
 {
+	struct nfs_priv *npriv = priv->npriv;
+	struct device *dev = npriv->dev;
 	uint32_t data[1024];
 	uint32_t *p, status;
 	int len, ret;
@@ -1129,11 +1142,11 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		pr_err("Read failed: %s\n", nfserrstr(status, &ret));
+		dev_err(dev, "Read failed: %s\n", nfserrstr(status, &ret));
 		goto err_free_packet;
 	}
 
-	ret = nfs_read_post_op_attr(nfs_packet, NULL);
+	ret = nfs_read_post_op_attr(npriv, nfs_packet, NULL);
 	if (ret) {
 		ret = -EINVAL;
 		goto err_free_packet;
@@ -1208,6 +1221,7 @@ static void nfs_do_close(struct file_priv *priv)
 static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 			    char **target)
 {
+	struct device *dev = npriv->dev;
 	uint32_t data[1024];
 	uint32_t *p, status;
 	uint32_t len;
@@ -1254,11 +1268,11 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		pr_err("Readlink failed: %s\n", nfserrstr(status, &ret));
+		dev_err(dev, "Readlink failed: %s\n", nfserrstr(status, &ret));
 		goto err_free_packet;
 	}
 
-	nfs_read_post_op_attr(nfs_packet, NULL);
+	nfs_read_post_op_attr(npriv, nfs_packet, NULL);
 
 	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
 	if (!p) {
@@ -1408,7 +1422,7 @@ static int nfs_iterate(struct file *file, struct dir_context *ctx)
 			if (!p)
 				goto err_eop;
 
-			ret = decode_filename(xdr, name, &len);
+			ret = decode_filename(npriv, xdr, name, &len);
 			if (ret)
 				goto out;
 
@@ -1586,10 +1600,11 @@ static int nfs_probe(struct device *dev)
 	int ret;
 
 	dev->priv = npriv;
+	npriv->dev = dev;
 
 	INIT_LIST_HEAD(&npriv->packets);
 
-	debug("nfs: mount: %s\n", fsdev->backingstore);
+	dev_dbg(dev, "mount: %s\n", fsdev->backingstore);
 
 	path = strchr(tmp, ':');
 	if (!path) {
@@ -1603,11 +1618,11 @@ static int nfs_probe(struct device *dev)
 
 	ret = resolv(tmp, &npriv->server);
 	if (ret) {
-		printf("cannot resolve \"%s\": %pe\n", tmp, ERR_PTR(ret));
+		dev_err(dev, "cannot resolve \"%s\": %pe\n", tmp, ERR_PTR(ret));
 		goto err1;
 	}
 
-	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
+	dev_dbg(dev, "server: %s path: %s\n", tmp, npriv->path);
 
 	npriv->con = net_udp_new(npriv->server, SUNRPC_PORT, nfs_handler, npriv);
 	if (IS_ERR(npriv->con)) {
@@ -1623,7 +1638,7 @@ static int nfs_probe(struct device *dev)
 		if (!npriv->mount_port) {
 			ret = rpc_lookup_req(npriv, PROG_MOUNT, 3);
 			if (ret < 0) {
-				printf("lookup mount port failed with %d\n", ret);
+				dev_err(dev, "lookup mount port failed with %d\n", ret);
 				goto err2;
 			}
 			npriv->mount_port = ret;
@@ -1635,7 +1650,7 @@ static int nfs_probe(struct device *dev)
 		if (!npriv->nfs_port) {
 			ret = rpc_lookup_req(npriv, PROG_NFS, 3);
 			if (ret < 0) {
-				printf("lookup nfs port failed with %d\n", ret);
+				dev_err(dev, "lookup nfs port failed with %d\n", ret);
 				goto err2;
 			}
 			npriv->nfs_port = ret;
@@ -1644,7 +1659,7 @@ static int nfs_probe(struct device *dev)
 		}
 	} else {
 		if (nfsport_default > U16_MAX) {
-			printf("invalid NFS port: %d\n", nfsport_default);
+			dev_err(dev, "invalid NFS port: %d\n", nfsport_default);
 			return -EINVAL;
 		}
 
@@ -1652,12 +1667,12 @@ static int nfs_probe(struct device *dev)
 		npriv->manual_nfs_port = npriv->manual_mount_port = 1;
 	}
 
-	debug("mount port: %hu\n", npriv->mount_port);
-	debug("nfs port: %d\n", npriv->nfs_port);
+	dev_dbg(dev, "mount port: %hu\n", npriv->mount_port);
+	dev_dbg(dev, "nfs port: %d\n", npriv->nfs_port);
 
 	ret = nfs_mount_req(npriv);
 	if (ret) {
-		printf("mounting failed with %d\n", ret);
+		dev_err(dev, "mounting failed with %d\n", ret);
 		goto err2;
 	}
 

-- 
2.47.3



