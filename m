Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82i-00042m-7L
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:13:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id t13so3147540ply.13
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:12:03 -0800
Message-Id: <20190109071210.18896-15-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/21] reset: Mark local functions as static
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
index 59f75ca47..99b9c8065 100644
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
