Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7z-0003qY-Ez
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:56 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:18 +0100
Message-Id: <1425159621-22805-14-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 13/16] sandbox: hostfile: use the memory resource to determine
 the size not the platform_data
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 42ade6bec8a4..d9ca1a423acf 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -70,10 +70,15 @@ static int hf_probe(struct device_d *dev)
 {
 	struct hf_platform_data *hf = dev->platform_data;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
+	struct resource *res;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
 	priv->fd = hf->fd;
 	priv->cdev.name = hf->devname;
-	priv->cdev.size = hf->size;
+	priv->cdev.size = resource_size(res);
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = priv;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
