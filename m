Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS33C-0004dl-Ks
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:32:53 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:17 +0100
Message-Id: <1425213143-4529-12-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 11/17] sandbox: hostfile: remove struct hf_platform_data
 from hf_priv
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 6ec3b87efa86..fef9f5cffa89 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -28,7 +28,6 @@
 
 struct hf_priv {
 	struct cdev cdev;
-	struct hf_platform_data *pdata;
 };
 
 static ssize_t hf_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
@@ -71,8 +70,6 @@ static int hf_probe(struct device_d *dev)
 	struct hf_platform_data *hf = dev->platform_data;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 
-	priv->pdata = hf;
-
 	priv->cdev.name = hf->devname;
 	priv->cdev.size = hf->size;
 	priv->cdev.dev = dev;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
