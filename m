Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi0l-0006SM-W9
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 08:40:25 +0000
Received: from geraet.fritz.box (142-252-142-46.pool.kielnet.net
 [46.142.252.142]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 7DAF71BF212
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2019 08:40:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 21 Nov 2019 09:40:05 +0100
Message-Id: <20191121084005.683-3-ahmad@a3f.at>
In-Reply-To: <20191121084005.683-1-ahmad@a3f.at>
References: <20191121084005.683-1-ahmad@a3f.at>
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
Subject: [PATCH 3/3] remoteproc: add .stop device parameter for stopping
 remote processor
To: barebox@lists.infradead.org

Both the STM32 and i.MX7 remote proc drivers populate the .stop member
in the struct rproc, but it's not used anywhere. The firmware API is not
really fitting to 'unload' firmware. Add instead a device parameter to
stop a remote processor, e.g. remoteproc0.stop=1. This is similar to the
probe command used with MMCs.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/remoteproc/remoteproc_core.c | 30 +++++++++++++++++++++++-----
 include/linux/remoteproc.h           |  2 ++
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 8a28c1bafc1b..e031640bc7a0 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -101,6 +101,8 @@ static int rproc_firmware_finish(struct firmware_handler *fh)
 	fw.size = rproc->fw_buf_ofs;
 
 	ret = rproc_start(rproc, &fw);
+	if (ret == 0)
+		rproc->stop = PARAM_TRISTATE_FALSE;
 
 	kfree(rproc->fw_buf);
 
@@ -120,6 +122,19 @@ static int rproc_register_dev(struct rproc *rproc, const char *alias)
 	return register_device(&rproc->dev);
 }
 
+static int rproc_set_stop(struct param_d *param, void *priv)
+{
+	struct rproc *rproc = priv;
+	int (*stop)(struct rproc *);
+
+	stop = rproc->ops->stop;
+
+	if (!stop)
+		return -ENOSYS;
+
+	return stop(rproc);
+}
+
 int rproc_add(struct rproc *rproc)
 {
 	struct device_d *dev = &rproc->dev;
@@ -142,12 +157,17 @@ int rproc_add(struct rproc *rproc)
 	fh->close = rproc_firmware_finish;
 
 	ret = firmwaremgr_register(fh);
-	if (ret)
-		dev_err(dev, "filed to register firmware handler %s\n", rproc->name);
-	else
-		dev_info(dev, "%s is available\n", rproc->name);
+	if (ret) {
+		dev_err(dev, "failed to register firmware handler %s\n", rproc->name);
+		return ret;
+	}
 
-	return ret;
+	rproc->stop = PARAM_TRISTATE_UNKNOWN;
+	dev_add_param_tristate(&rproc->dev, "stop", rproc_set_stop, NULL,
+			   &rproc->stop, rproc);
+
+	dev_info(dev, "%s is available\n", rproc->name);
+	return 0;
 }
 
 struct rproc *rproc_alloc(struct device_d *dev, const char *name,
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index c6264d1c0a49..af35837fb39a 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -41,6 +41,8 @@ struct rproc {
 
 	void *fw_buf;
 	size_t fw_buf_ofs;
+
+	int stop;
 };
 
 struct rproc *rproc_alloc(struct device_d *dev, const char *name,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
