Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqG1r-0006LW-Qr
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 09:24:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 21 Mar 2017 10:24:07 +0100
Message-Id: <20170321092411.8844-4-o.rempel@pengutronix.de>
In-Reply-To: <20170321092411.8844-1-o.rempel@pengutronix.de>
References: <20170321092411.8844-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 3/7] caamrng: port to hwrng framework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/crypto/caam/Kconfig   |  1 +
 drivers/crypto/caam/caamrng.c | 40 ++++++++++++----------------------------
 2 files changed, 13 insertions(+), 28 deletions(-)

diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index cf05d1c07..2ab509d11 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -29,6 +29,7 @@ config CRYPTO_DEV_FSL_CAAM_RINGSIZE
 config CRYPTO_DEV_FSL_CAAM_RNG
 	bool "Register caam RNG device"
 	depends on CRYPTO_DEV_FSL_CAAM
+	depends on HWRNG
 	default y
 	help
 	  Selecting this will register the SEC4 hardware rng.
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 0fef171a2..aabad0416 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -35,6 +35,7 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/spinlock.h>
+#include <linux/hw_random.h>
 
 #include "regs.h"
 #include "intern.h"
@@ -71,7 +72,7 @@ struct caam_rng_ctx {
 	unsigned int cur_buf_idx;
 	int current_buf;
 	struct buf_data bufs[2];
-	struct cdev cdev;
+	struct hwrng rng;
 };
 
 static struct caam_rng_ctx *rng_ctx;
@@ -116,8 +117,9 @@ static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 	return err;
 }
 
-static int caam_read(struct caam_rng_ctx *ctx, void *data, size_t max, bool wait)
+static int caam_read(struct hwrng *rng, void *data, size_t max, bool wait)
 {
+	struct caam_rng_ctx *ctx = container_of(rng, struct caam_rng_ctx, rng);
 	struct buf_data *bd = &ctx->bufs[ctx->current_buf];
 	int next_buf_idx, copied_idx;
 	int err;
@@ -162,7 +164,7 @@ static int caam_read(struct caam_rng_ctx *ctx, void *data, size_t max, bool wait
 	dev_dbg(ctx->jrdev, "switched to buffer %d\n", ctx->current_buf);
 
 	/* since there already is some data read, don't wait */
-	return copied_idx + caam_read(ctx, data + copied_idx,
+	return copied_idx + caam_read(rng, data + copied_idx,
 				      max - copied_idx, false);
 }
 
@@ -248,29 +250,6 @@ static int caam_init_rng(struct caam_rng_ctx *ctx, struct device_d *jrdev)
 	return 0;
 }
 
-static ssize_t random_read(struct cdev *cdev, void *buf, size_t count,
-			   loff_t offset, ulong flags)
-{
-	struct caam_rng_ctx *ctx = container_of(cdev, struct caam_rng_ctx, cdev);
-
-	return caam_read(ctx, buf, count, true);
-}
-
-static struct file_operations randomops = {
-	.read  = random_read,
-	.lseek = dev_lseek_default,
-};
-
-static int caam_init_devrandom(struct caam_rng_ctx *ctx, struct device_d *dev)
-{
-	ctx->cdev.name = "hwrng";
-	ctx->cdev.flags = DEVFS_IS_CHARACTER_DEV;
-	ctx->cdev.ops = &randomops;
-	ctx->cdev.dev = dev;
-
-	return devfs_create(&ctx->cdev);
-}
-
 int caam_rng_probe(struct device_d *dev, struct device_d *jrdev)
 {
 	int err;
@@ -281,9 +260,14 @@ int caam_rng_probe(struct device_d *dev, struct device_d *jrdev)
 	if (err)
 		return err;
 
-	err = caam_init_devrandom(rng_ctx, dev);
-	if (err)
+	rng_ctx->rng.name = dev->name;
+	rng_ctx->rng.read = caam_read;
+
+	err = hwrng_register(dev, &rng_ctx->rng);
+	if (err) {
+		dev_err(dev, "rng-caam registering failed (%d)\n", err);
 		return err;
+	}
 
 	dev_info(dev, "registering rng-caam\n");
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
