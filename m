Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lA3-0075Bt-Ga
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 13:47:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0006RW-UP
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0000Qz-D8
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:14 +0100
Message-Id: <20210127134423.31587-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 03/12] reset: add of_reset_control_get to header
To: barebox@lists.infradead.org

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/core.c  | 2 +-
 include/linux/reset.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21dff0..1c9eeaec5491 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -147,7 +147,7 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  *
  * Use of id names is optional.
  */
-static struct reset_control *of_reset_control_get(struct device_node *node,
+struct reset_control *of_reset_control_get(struct device_node *node,
 						  const char *id)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 4a92a177bc75..76f40145d949 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -11,6 +11,8 @@ int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
 struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+struct reset_control *of_reset_control_get(struct device_node *node,
+					   const char *id);
 void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
