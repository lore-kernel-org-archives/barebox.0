Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVIH-0005oj-GT
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:26:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id b85so1851561pfc.3
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:25:54 -0800
Message-Id: <20190115202601.24831-11-andrew.smirnov@gmail.com>
In-Reply-To: <20190115202601.24831-1-andrew.smirnov@gmail.com>
References: <20190115202601.24831-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 10/17] reset: Mark local functions as static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are no outside users of of_reset_control_get() or
gpio_reset_control_get(), so mark them as static. This allows us to
avoid "no previous prototype" warning as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/reset/core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 59f75ca475..99b9c80655 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -147,8 +147,8 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  *
  * Use of id names is optional.
  */
-struct reset_control *of_reset_control_get(struct device_node *node,
-					   const char *id)
+static struct reset_control *of_reset_control_get(struct device_node *node,
+						  const char *id)
 {
 	struct reset_control *rstc = ERR_PTR(-ENODEV);
 	struct reset_controller_dev *r, *rcdev;
@@ -194,9 +194,9 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 
 	return rstc;
 }
-EXPORT_SYMBOL_GPL(of_reset_control_get);
 
-struct reset_control *gpio_reset_control_get(struct device_d *dev, const char *id)
+static struct reset_control *
+gpio_reset_control_get(struct device_d *dev, const char *id)
 {
 	struct reset_control *rc;
 	int gpio;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
