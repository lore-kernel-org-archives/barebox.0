Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSs-00061u-H0
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:03 +0200
Message-Id: <20200330091210.18716-2-s.hauer@pengutronix.de>
In-Reply-To: <20200330091210.18716-1-s.hauer@pengutronix.de>
References: <20200330091210.18716-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] nfs: Add function to free packets
To: Barebox List <barebox@lists.infradead.org>

Add to function to free packets rather than freeing them directly. We
will introduce received packet qeueuing with one of the next patches,
this patch is meant to make it better readable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 0ad07aa3f2..0d098f2a66 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -397,6 +397,11 @@ static int rpc_check_reply(struct packet *pkt, int rpc_prog,
 	return 0;
 }
 
+static void nfs_free_packet(struct packet *packet)
+{
+	free(packet);
+}
+
 /*
  * rpc_req - synchronous RPC request
  */
@@ -472,7 +477,7 @@ again:
 				      npriv->rpc_id, &nfserr);
 		if (!ret) {
 			if (rpc_prog == PROG_NFS && nfserr) {
-				free(npriv->nfs_packet);
+				nfs_free_packet(npriv->nfs_packet);
 				return ERR_PTR(nfserr);
 			} else {
 				return npriv->nfs_packet;
@@ -505,7 +510,7 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 
 	port = ntoh32(net_read_uint32(nfs_packet->data + sizeof(struct rpc_reply)));
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	return port;
 }
@@ -676,12 +681,12 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 	if (npriv->rootfh.size > NFS3_FHSIZE) {
 		printf("%s: file handle too big: %lu\n",
 		       __func__, (unsigned long)npriv->rootfh.size);
-		free(nfs_packet);
+		nfs_free_packet(nfs_packet);
 		return -EIO;
 	}
 	memcpy(npriv->rootfh.data, p, npriv->rootfh.size);
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	return 0;
 }
@@ -709,7 +714,7 @@ static void nfs_umount_req(struct nfs_priv *npriv)
 	nfs_packet = rpc_req(npriv, PROG_MOUNT, MOUNT_UMOUNT, data, len);
 
 	if (!IS_ERR(nfs_packet))
-		free(nfs_packet);
+		nfs_free_packet(nfs_packet);
 }
 
 /*
@@ -777,7 +782,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	nfs_read_post_op_attr(p, inode);
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	return 0;
 }
@@ -857,7 +862,7 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 	len = (void *)nfs_packet->data + nfs_packet->len - (void *)p;
 	if (!len) {
 		printf("%s: huh, no payload left\n", __func__);
-		free(nfs_packet);
+		nfs_free_packet(nfs_packet);
 		return NULL;
 	}
 
@@ -865,7 +870,7 @@ static void *nfs_readdirattr_req(struct nfs_priv *npriv, struct nfs_dir *dir)
 
 	memcpy(buf, p, len);
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	xdr_init(&dir->stream, buf, len);
 
@@ -942,13 +947,13 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	p += 2;
 
 	if (readlen && !rlen && !eof) {
-		free(nfs_packet);
+		nfs_free_packet(nfs_packet);
 		return -EIO;
 	}
 
 	kfifo_put(priv->fifo, (char *)p, rlen);
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	return 0;
 }
@@ -1032,7 +1037,7 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 	*target = xzalloc(len + 1);
 	memcpy(*target, p, len);
 
-	free(nfs_packet);
+	nfs_free_packet(nfs_packet);
 
 	return 0;
 }
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
