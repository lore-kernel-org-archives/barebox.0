Delivery-date: Tue, 04 Nov 2025 09:08:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC62-00F9HR-0p
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:08:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC61-00035c-2e
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:08:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/gYk7K41EOSwl00nqkzzM0qWH9vWHLnnWQ+Ll/c57/A=; b=E74KKn4QATsnemf6J11kR/rZnW
	UL+9dsFBaFq0TwBcpzqjuenfB15mAbuSs+TNnQJJ51FTHyiehUnmcmRksHrWeSRl/KZ2nrx2nHy6F
	ShnAcdKfGbLD1pGvF432XAXfBFUdUApRnv2lKlhwB+mx3KU8pTkD2fl77MCc+e80bmitVRxCNIBmb
	JXgFecoKQVIiaIwUao/KShyQB3GIYwhpxYy/MPdWMekuitrUE6mlE2wRxtTo9TwqBoM2937AqhYs/
	HSwbiiG+Kn0NX9Kf+nsN7D2pChqTA4YmaQOKYPlyYSa5/iKBcQRApeB10owxtUKdEbe+YDCGGuSVA
	/5S9zj5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5T-0000000BNuD-0JB9;
	Tue, 04 Nov 2025 08:08:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5P-0000000BNs8-32Rv
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-0002nj-92; Tue, 04 Nov 2025 09:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5M-006zpP-37;
	Tue, 04 Nov 2025 09:08:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-00000009AfK-1Mz6;
	Tue, 04 Nov 2025 09:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 04 Nov 2025 09:08:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-nfs-v1-2-3e69e5c82a41@pengutronix.de>
References: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
In-Reply-To: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243692; l=12903;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=D1wuLKMmkiPT+u8YH7zpf299KWUPcHnsu4GaW0oJeYM=;
 b=VaUV0h8p6T+jm/FfyYn1raxqMNFfK+Q3C/zlZipqMU0RgM+z7ori7PqJ3tM6zGlvVVWv1ic66
 gWM3a5U0HWBA2t5t7JnQMiDNvGfz8GUIhy3fbnJo4vvdJeE1pK7MC3Y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000816_078503_06BEC044 
X-CRM114-Status: GOOD (  23.37  )
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
Subject: [PATCH 2/4] fs: nfs: do not read past packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NFS code has hardly any length checks and it blindly trusts length
values in incoming packets. Fix this by introducing a nfs_packet_read()
which is consistently used to read from an incoming packet.

After a packet has been consumed it must be freed with
nfs_free_packet(). This wasn't done in several error cases and is fixed
here as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 288 +++++++++++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 224 insertions(+), 64 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index ef1ab1a6e6497fb40553dde16793f2e1a8808b53..163fd2182c0fc63d88725f0bba6ad5d1a71e2309 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -130,7 +130,8 @@ struct nfs_fh {
 
 struct packet {
 	struct list_head list;
-	int len;
+	unsigned int len;
+	unsigned int pos;
 	char data[];
 };
 
@@ -393,6 +394,51 @@ static int decode_filename(struct xdr_stream *xdr, char *name, u32 *length)
 	return -EIO;
 }
 
+/*
+ * Read @len bytes from a NFS packets. Returns a pointer to the data
+ * or NULL if the packet doesn't contain enough data
+ */
+static void *nfs_packet_read(struct packet *nfs_packet, unsigned int len)
+{
+	void *ret;
+
+	if (nfs_packet->pos + len > nfs_packet->len) {
+		nfs_packet->pos = nfs_packet->len;
+		return NULL;
+	}
+
+	ret = &nfs_packet->data[0];
+	ret += nfs_packet->pos;
+
+	nfs_packet->pos += len;
+
+	return ret;
+}
+
+/*
+ * Return the remaining packet data as an allocated buffer
+ */
+static void *nfs_packet_memdup_rest(struct packet *nfs_packet, unsigned int *len)
+{
+	void *p;
+
+	*len = nfs_packet->len - nfs_packet->pos;
+
+	p = nfs_packet_read(nfs_packet, *len);
+	if (!p)
+		return NULL;
+
+	return xmemdup(p, *len);
+}
+
+/*
+ * Align the read pointer of a NFS packet
+ */
+static void nfs_read_align(struct packet *nfs_packet, unsigned int align)
+{
+	nfs_packet->pos = ALIGN(nfs_packet->pos, align);
+}
+
 /*
  * rpc_add_credentials - Add RPC authentication/verifier entries
  */
@@ -424,8 +470,13 @@ static uint32_t *rpc_add_credentials(uint32_t *p)
 static int rpc_check_reply(struct packet *pkt, uint32_t rpc_id)
 {
 	struct rpc_reply rpc;
+	void *p;
+
+	p = nfs_packet_read(pkt, sizeof(rpc));
+	if (!p)
+		return -EINVAL;
 
-	memcpy(&rpc, pkt->data, sizeof(rpc));
+	memcpy(&rpc, p, sizeof(rpc));
 
 	if (ntoh32(rpc.id) != rpc_id)
 		return -EAGAIN;
@@ -537,6 +588,8 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 	uint32_t data[16];
 	struct packet *nfs_packet;
 	uint32_t port;
+	void *p;
+	int ret;
 
 	data[0] = 0; data[1] = 0;	/* auth credential */
 	data[2] = 0; data[3] = 0;	/* auth verifier */
@@ -549,7 +602,13 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 
-	port = ntoh32(net_read_uint32(nfs_packet->data + sizeof(struct rpc_reply)));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	port = ntoh32(net_read_uint32(p));
 
 	nfs_free_packet(nfs_packet);
 
@@ -560,6 +619,11 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 	}
 
 	return port;
+
+err_free_packet:
+	nfs_free_packet(nfs_packet);
+
+	return ret;
 }
 
 static uint32_t *nfs_add_uint32(uint32_t *p, uint32_t val)
@@ -672,8 +736,10 @@ static int nfs_fattr3_to_stat(uint32_t *p, struct inode *inode)
 	return 0;
 }
 
-static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct inode *inode)
+static int nfs_read_post_op_attr(struct packet *nfs_packet, struct inode *inode)
 {
+	void *p;
+
 	/*
 	 * union post_op_attr switch (bool attributes_follow) {
 	 * case TRUE:
@@ -683,12 +749,18 @@ static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct inode *inode)
 	 * };
 	 */
 
-	if (ntoh32(net_read_uint32(p++))) {
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p)
+		return -EINVAL;
+
+	if (ntoh32(net_read_uint32(p))) {
+		p = nfs_packet_read(nfs_packet, 21 * sizeof(uint32_t));
+		if (!p)
+			return -EINVAL;
 		nfs_fattr3_to_stat(p, inode);
-		p += 21;
 	}
 
-	return p;
+	return 0;
 }
 
 /*
@@ -700,6 +772,7 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 	uint32_t *p, status;
 	int len;
 	int pathlen;
+	int ret;
 	struct packet *nfs_packet;
 
 	pathlen = strlen(npriv->path);
@@ -722,31 +795,50 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 
-	p = (void *)nfs_packet->data + sizeof(struct rpc_reply);
-
 	/*
 	 * Theoretically the error status is one of MNT3ERR_..., but the NFS
 	 * constants are identical.
 	 */
-	status = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		int ret;
 		pr_err("Mounting failed: %s\n", nfserrstr(status, &ret));
-		return ret;
+		goto err_free_packet;
 	}
 
-	npriv->rootfh.size = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	npriv->rootfh.size = ntoh32(net_read_uint32(p));
 	if (npriv->rootfh.size > NFS3_FHSIZE) {
 		printf("%s: file handle too big: %lu\n",
 		       __func__, (unsigned long)npriv->rootfh.size);
-		nfs_free_packet(nfs_packet);
-		return -EIO;
+		ret = -EIO;
+		goto err_free_packet;
+	}
+
+	p = nfs_packet_read(nfs_packet, npriv->rootfh.size);
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
 	}
+
 	memcpy(npriv->rootfh.data, p, npriv->rootfh.size);
 
+	ret = 0;
+
+err_free_packet:
 	nfs_free_packet(nfs_packet);
 
-	return 0;
+	return ret;
 }
 
 /*
@@ -787,6 +879,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	uint32_t data[1024];
 	uint32_t *p, status;
 	int len;
+	int ret = 0;
 	struct packet *nfs_packet;
 
 	/*
@@ -827,29 +920,50 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 
-	p = (void *)nfs_packet->data + sizeof(struct rpc_reply);
-	status = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		int ret;
 		pr_err("Lookup failed: %s\n", nfserrstr(status, &ret));
-		return ret;
+		goto err_free_packet;
 	}
 
-	ninode->fh.size = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	ninode->fh.size = ntoh32(net_read_uint32(p));
 	if (ninode->fh.size > NFS3_FHSIZE) {
-		nfs_free_packet(nfs_packet);
 		debug("%s: file handle too big: %u\n", __func__,
 		      ninode->fh.size);
-		return -EIO;
+		ret = -EIO;
+		goto err_free_packet;
 	}
+
+	p = nfs_packet_read(nfs_packet, ninode->fh.size);
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
 	memcpy(ninode->fh.data, p, ninode->fh.size);
-	p += DIV_ROUND_UP(ninode->fh.size, 4);
 
-	nfs_read_post_op_attr(p, inode);
+	nfs_read_align(nfs_packet, 4);
 
+	nfs_read_post_op_attr(nfs_packet, inode);
+
+	ret = 0;
+
+err_free_packet:
 	nfs_free_packet(nfs_packet);
 
-	return 0;
+	return ret;
 }
 
 /*
@@ -862,7 +976,8 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 	uint32_t *p, status;
 	int len;
 	struct packet *nfs_packet;
-	void *buf;
+	void *buf = NULL;
+	int ret;
 
 	/*
 	 * struct READDIR3args {
@@ -917,37 +1032,43 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 	if (IS_ERR(nfs_packet))
 		return NULL;
 
-	p = (void *)nfs_packet->data + sizeof(struct rpc_reply);
-	status = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
 		pr_err("Readdir failed: %s\n", nfserrstr(status, NULL));
-		return NULL;
+		ret = -EIO;
+		goto err_free_packet;
 	}
 
-	p = nfs_read_post_op_attr(p, NULL);
+	ret = nfs_read_post_op_attr(nfs_packet, NULL);
+	if (ret)
+		goto err_free_packet;
 
 	/* update cookieverf */
-	memcpy(dir->cookieverf, p, NFS3_COOKIEVERFSIZE);
-	p += NFS3_COOKIEVERFSIZE / 4;
-
-	len = (void *)nfs_packet->data + nfs_packet->len - (void *)p;
-	if (!len) {
-		printf("%s: huh, no payload left\n", __func__);
-		nfs_free_packet(nfs_packet);
-		return NULL;
+	p = nfs_packet_read(nfs_packet, NFS3_COOKIEVERFSIZE);
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
 	}
 
-	buf = xzalloc(len);
-
-	memcpy(buf, p, len);
+	memcpy(dir->cookieverf, p, NFS3_COOKIEVERFSIZE);
 
-	nfs_free_packet(nfs_packet);
+	buf = nfs_packet_memdup_rest(nfs_packet, &len);
 
 	xdr_init(&dir->stream, buf, len);
 
+	ret = 0;
+
 	/* now xdr points to dirlist3 res.resok.reply */
+err_free_packet:
+	nfs_free_packet(nfs_packet);
 
-	return buf;
+	return ret ? NULL : buf;
 }
 
 /*
@@ -1000,19 +1121,37 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 
-	p = (void *)nfs_packet->data + sizeof(struct rpc_reply);
-	status = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
 		pr_err("Read failed: %s\n", nfserrstr(status, &ret));
-		return ret;
+		goto err_free_packet;
 	}
 
-	p = nfs_read_post_op_attr(p, NULL);
+	ret = nfs_read_post_op_attr(nfs_packet, NULL);
+	if (ret) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
 
 	rlen = ntoh32(net_read_uint32(p));
 
-	/* skip over count */
-	p += 1;
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
 
 	eof = ntoh32(net_read_uint32(p));
 
@@ -1020,18 +1159,23 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	 * skip over eof and count embedded in the representation of data
 	 * assuming it equals rlen above.
 	 */
-	p += 2;
+	nfs_packet_read(nfs_packet, sizeof(uint32_t));
 
 	if (readlen && !rlen && !eof) {
-		nfs_free_packet(nfs_packet);
-		return -EIO;
+		ret = -EIO;
+		goto err_free_packet;
 	}
 
+	p = nfs_packet_read(nfs_packet, rlen);
+
 	kfifo_put(priv->fifo, (char *)p, rlen);
 
+	ret = 0;
+
+err_free_packet:
 	nfs_free_packet(nfs_packet);
 
-	return 0;
+	return ret;
 }
 
 static void nfs_handler(void *ctx, char *p, unsigned len)
@@ -1043,6 +1187,7 @@ static void nfs_handler(void *ctx, char *p, unsigned len)
 	packet = xmalloc(sizeof(*packet) + len);
 	memcpy(packet->data, pkt, len);
 	packet->len = len;
+	packet->pos = 0;
 
 	list_add_tail(&packet->list, &npriv->packets);
 }
@@ -1066,6 +1211,7 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	uint32_t data[1024];
 	uint32_t *p, status;
 	uint32_t len;
+	int ret;
 	struct packet *nfs_packet;
 
 	/*
@@ -1100,29 +1246,43 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	if (IS_ERR(nfs_packet))
 		return PTR_ERR(nfs_packet);
 
-	p = (void *)nfs_packet->data + sizeof(struct rpc_reply);
-	status = ntoh32(net_read_uint32(p++));
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
+
+	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		int ret;
 		pr_err("Readlink failed: %s\n", nfserrstr(status, &ret));
-		return ret;
+		goto err_free_packet;
 	}
 
-	p = nfs_read_post_op_attr(p, NULL);
+	nfs_read_post_op_attr(nfs_packet, NULL);
 
-	len = ntoh32(net_read_uint32(p)); /* new path length */
+	p = nfs_packet_read(nfs_packet, sizeof(uint32_t));
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
 
-	len = min_t(unsigned int, len,
-		    nfs_packet->len - sizeof(struct rpc_reply) - sizeof(uint32_t));
+	len = ntoh32(net_read_uint32(p)); /* new path length */
 
-	p++;
+	p = nfs_packet_read(nfs_packet, len);
+	if (!p) {
+		ret = -EINVAL;
+		goto err_free_packet;
+	}
 
 	*target = xzalloc(len + 1);
 	memcpy(*target, p, len);
 
+	ret = 0;
+
+err_free_packet:
 	nfs_free_packet(nfs_packet);
 
-	return 0;
+	return ret;
 }
 
 static const char *nfs_get_link(struct dentry *dentry, struct inode *inode)

-- 
2.47.3



