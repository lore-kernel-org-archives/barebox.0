Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002en-9x
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:01 +0100
Message-Id: <20200218142305.26992-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200218142305.26992-1-a.fatoum@pengutronix.de>
References: <20200218142305.26992-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/6] regmap: make internal.h a self-contained header
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Follow up commit will add a new user for "internal.h".
Prepare the header for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/internal.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index 52df5290a18d..5b19459828fe 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -1,5 +1,10 @@
+#ifndef REGMAP_INTERNAL_H_
+#define REGMAP_INTERNAL_H_
 
 #include <linux/list.h>
+#include <driver.h>
+
+struct regmap_bus;
 
 struct regmap {
 	struct device_d *dev;
@@ -15,4 +20,6 @@ struct regmap {
 	unsigned int max_register;
 
 	struct cdev cdev;
-};
\ No newline at end of file
+};
+
+#endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
