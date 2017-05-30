Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFhqj-0004YY-Qc
 for barebox@lists.infradead.org; Tue, 30 May 2017 14:10:21 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 30 May 2017 16:09:43 +0200
Message-Id: <20170530140947.3988-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/5] cdev: make file operations const
To: barebox@lists.infradead.org

scripts/checkpatch.pl warns that struct file_operations should be const,
but cdev->ops is not const, so without this patch we can choose between
a warning from checkpatch and a warning from the compiler about
discarding the const attribute when assigning the struct file_operations
cdev->ops.

Since there is no reason to modify the contents of cdev->ops after
probing, make it const.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 52e06f7d62..086e44636b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -440,7 +440,7 @@ struct file_operations {
 #define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
 
 struct cdev {
-	struct file_operations *ops;
+	const struct file_operations *ops;
 	void *priv;
 	struct device_d *dev;
 	struct device_node *device_node;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
