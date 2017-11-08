Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eCUlv-0007r1-JX
 for barebox@lists.infradead.org; Wed, 08 Nov 2017 18:08:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1eCUlX-0007D0-Lp
 for barebox@lists.infradead.org; Wed, 08 Nov 2017 19:07:55 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1eCUlX-0004GJ-F1
 for barebox@lists.infradead.org; Wed, 08 Nov 2017 19:07:55 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  8 Nov 2017 19:07:47 +0100
Message-Id: <20171108180747.16208-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2] uimage: fix: add can_lseek_backward and use in uimage_open
To: barebox@lists.infradead.org

Since commit ce0cc7fe we support forward seek on tftpfs. This feature
breaks the condition to check rather we open an uimage over tftp. Since
backward seeking is the problem here, we add the function
can_lseek_backward and check for it instead of the simple lseek.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - added can_lseek_backward
          - also fixed check in uimagefs
          - aligned comments to check

common/uimage.c |  4 ++--
 fs/uimagefs.c   |  4 ++--
 include/fs.h    | 20 ++++++++++++++++++++
 3 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 28a25bba2d..b6f0f109ca 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -111,9 +111,9 @@ again:
 	/*
 	 * Hack around tftp fs. We need lseek for uImage support, but
 	 * this cannot be implemented in tftp fs, so we detect this
-	 * by doing a test lseek and copy the file to ram if it fails
+	 * and copy the file to ram if it fails
 	 */
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && lseek(fd, 0, SEEK_SET)) {
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && !can_lseek_backward(fd)) {
 		close(fd);
 		ret = copy_file(filename, uimage_tmp, 0);
 		if (ret)
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 13c1fbac05..c0c5750c2c 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -374,9 +374,9 @@ again:
 	/*
 	 * Hack around tftp fs. We need lseek for uImage support, but
 	 * this cannot be implemented in tftp fs, so we detect this
-	 * by doing a test lseek and copy the file to ram if it fails
+	 * and copy the file to ram if it fails
 	 */
-	if (IS_BUILTIN(CONFIG_FS_TFTP) && lseek(fd, 0, SEEK_SET)) {
+	if (IS_BUILTIN(CONFIG_FS_TFTP) && !can_lseek_backward(fd)) {
 		close(fd);
 		ret = copy_file(priv->filename, priv->tmp, 0);
 		if (ret)
diff --git a/include/fs.h b/include/fs.h
index d7fa7714b4..f8a3b8bda4 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -100,6 +100,26 @@ struct fs_device_d {
 	char *linux_rootarg;
 };
 
+/*
+ * Some filesystems i.e. tftpfs only support lseek into one direction.
+ * To detect this limited functionality we add this extra function.
+ * Additionaly we also return 0 if we even can not seek forward.
+ */
+static inline int can_lseek_backward(int fd)
+{
+	int ret;
+
+	ret = lseek(fd, 1, SEEK_SET);
+	if (ret < 0)
+		return 0;
+
+	ret = lseek(fd, 0, SEEK_SET);
+	if (ret < 0)
+		return 0;
+
+	return ret;
+}
+
 #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
 
 int flush(int fd);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
