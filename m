Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljR-0001RI-Mr
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:53 +0100
Message-Id: <1425384899-18809-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 07/13] sandbox: hostfile: move fd from platform data to priv
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index fef9f5cffa89..103bcd9badc7 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -28,12 +28,13 @@
 
 struct hf_priv {
 	struct cdev cdev;
+	int fd;
 };
 
 static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
-	struct hf_platform_data *hf = cdev->priv;
-	int fd = hf->fd;
+	struct hf_priv *priv= cdev->priv;
+	int fd = priv->fd;
 
 	if (linux_lseek(fd, offset) != offset)
 		return -EINVAL;
@@ -43,8 +44,8 @@ static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset
 
 static ssize_t hf_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
-	struct hf_platform_data *hf = cdev->priv;
-	int fd = hf->fd;
+	struct hf_priv *priv = cdev->priv;
+	int fd = priv->fd;
 
 	if (linux_lseek(fd, offset) != offset)
 		return -EINVAL;
@@ -70,11 +71,12 @@ static int hf_probe(struct device_d *dev)
 	struct hf_platform_data *hf = dev->platform_data;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 
+	priv->fd = hf->fd;
 	priv->cdev.name = hf->devname;
 	priv->cdev.size = hf->size;
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &hf_fops;
-	priv->cdev.priv = hf;
+	priv->cdev.priv = priv;
 
 	dev->info = hf_info;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
