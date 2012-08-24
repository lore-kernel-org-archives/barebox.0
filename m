Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqW-0005qC-Dq
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:16 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4B660DC0FAF
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:08 +0200
Message-Id: <1345783818-28784-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
 fs/nfs.c |   93 +++++++++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 65 insertions(+), 28 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 79e667f..a4e1f91 100644
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
@@ -742,6 +714,70 @@ static struct file_priv *nfs_do_stat(struct device_d *dev, const char *filename,
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
+	buf[len] = 0;
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
+
+	if (S_ISDIR(s.st_mode))
+		strcat(realname, filename);
+	else
+		strcat(realname, dirname((char*)filename));
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
@@ -1039,6 +1075,7 @@ static struct fs_driver_d nfs_driver = {
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
