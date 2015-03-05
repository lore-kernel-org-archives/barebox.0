Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWtd-0004L5-Km
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:37:07 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu,  5 Mar 2015 15:36:40 +0100
Message-Id: <1425566201-31989-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] fixup! sandbox: hostfile: completely switch to OF based
 probing
To: barebox@lists.infradead.org

hostfile: add "barebox" prefix to properties

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 41ded73a3a21..c1a2643bc7ff 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -85,11 +85,12 @@ static int hf_probe(struct device_d *dev)
 	if (!dev->device_node)
 		return -ENODEV;
 
-	err = of_property_read_u32(dev->device_node, "fd", &priv->fd);
+	err = of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
 	if (err)
 		return err;
 
-	err = of_property_read_string(dev->device_node, "filename", &priv->filename);
+	err = of_property_read_string(dev->device_node, "barebox,filename",
+				      &priv->filename);
 	if (err)
 		return err;
 
@@ -132,7 +133,8 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 
 	node = of_new_node(root, hf->devname);
 
-	ret = of_property_write_u32(node, "fd", hf->fd);
+	ret = of_set_property(node, "compatible", hostfile_dt_ids->compatible,
+			      strlen(hostfile_dt_ids->compatible) + 1, 1);
 	if (ret)
 		return ret;
 
@@ -140,12 +142,11 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		return ret;
 
-	ret = of_set_property(node, "compatible", hostfile_dt_ids->compatible,
-			      strlen(hostfile_dt_ids->compatible) + 1, 1);
+	ret = of_property_write_u32(node, "barebox,fd", hf->fd);
 	if (ret)
 		return ret;
 
-	ret = of_set_property(node, "filename", hf->filename,
+	ret = of_set_property(node, "barebox,filename", hf->filename,
 			      strlen(hf->filename) + 1, 1);
 
 	return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
