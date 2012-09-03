Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8TZe-0001rx-HF
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 10:08:14 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5EFBDDC3414
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 12:13:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  3 Sep 2012 12:08:08 +0200
Message-Id: <1346666898-19347-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120903100409.GC24296@game.jcrosoft.org>
 <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/18] nfs: add readlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 MAKEALL  |    1 +
 fs/nfs.c |   86 ++++++++++++++++++++++++++++++++++++++++++--------------------
 2 files changed, 59 insertions(+), 28 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 1ba4710..056a4d0 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -264,3 +264,4 @@ then
 else
 	do_build_target ${ARCH} $1
 fi
+exit $nb_errors
diff --git a/fs/nfs.c b/fs/nfs.c
index 79e667f..4a880cd 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -605,34 +605,6 @@ static int nfs_read_req(struct file_priv *priv, int offset, int readlen)
 	return 0;
 }
 
-#if 0
-static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
-{
-	uint32_t *data;
-	char *path;
-	int rlen;
-//	int ret;
-
-	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
-
-	data++;
-
-	rlen = ntohl(net_read_uint32(data)); /* new path length */
-
-	data++;
-	path = (char *)data;
-
-	if (*path != '/') {
-		strcat(nfs_path, "/");
-		strncat(nfs_path, path, rlen);
-	} else {
-		memcpy(nfs_path, path, rlen);
-		nfs_path[rlen] = 0;
-	}
-	return 0;
-}
-#endif
-
 static void nfs_handler(void *ctx, char *packet, unsigned len)
 {
 	char *pkt = net_eth_to_udp_payload(packet);
@@ -742,6 +714,63 @@ static struct file_priv *nfs_do_stat(struct device_d *dev, const char *filename,
 	return priv;
 }
 
+static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
+{
+	uint32_t data[1024];
+	uint32_t *p;
+	int len;
+	int ret;
+	char *path;
+	uint32_t *filedata;
+
+	p = &(data[0]);
+	p = rpc_add_credentials(p);
+
+	memcpy(p, priv->filefh, NFS_FHSIZE);
+	p += (NFS_FHSIZE / 4);
+
+	len = p - &(data[0]);
+
+	ret = rpc_req(priv->npriv, PROG_NFS, NFS_READLINK, data, len);
+	if (ret)
+		return ret;
+
+	filedata = nfs_packet + sizeof(struct rpc_reply);
+	filedata++;
+
+	len = ntohl(net_read_uint32(filedata)); /* new path length */
+	filedata++;
+
+	path = (char *)filedata;
+
+	if (len > size)
+		len = size;
+
+	memcpy(buf, path, len);
+
+	return 0;
+}
+
+static int nfs_readlink(struct device_d *dev, const char *filename,
+			char *realname, size_t size)
+{
+	struct file_priv *priv;
+	int ret;
+	struct stat s;
+
+	priv = nfs_do_stat(dev, filename, &s);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
+
+	ret = nfs_readlink_req(priv, realname, size);
+	if (ret) {
+		nfs_do_close(priv);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
@@ -1039,6 +1068,7 @@ static struct fs_driver_d nfs_driver = {
 	.rmdir     = nfs_rmdir,
 	.write     = nfs_write,
 	.truncate  = nfs_truncate,
+	.readlink  = nfs_readlink,
 	.flags     = 0,
 	.drv = {
 		.probe  = nfs_probe,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
