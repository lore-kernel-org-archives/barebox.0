Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001lg-LT
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:16 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:49 +0100
Message-Id: <20210121112958.25937-4-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 04/13] reset: add of_reset_control_get to header
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/core.c  | 2 +-
 include/linux/reset.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21df..1c9eeaec54 100644
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
index 4a92a177bc..76f40145d9 100644
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
