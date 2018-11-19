Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003Eq-27
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:51 +0100
Message-Id: <20181119084454.17599-10-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] usb: musb: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

phy-am335x.c and phy-am335x-control.c both implement functions that they
do not include the header file providing the prototype for. Add the
missing include and remove the duplicate definition of struct
phy_control.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/musb/phy-am335x-control.c | 5 +----
 drivers/usb/musb/phy-am335x.c         | 1 +
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index 55a2ed27b7..c84525ec7e 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -4,10 +4,7 @@
 #include <linux/err.h>
 #include <linux/spinlock.h>
 
-struct phy_control {
-	void (*phy_power)(struct phy_control *phy_ctrl, u32 id, bool on);
-	void (*phy_wkup)(struct phy_control *phy_ctrl, u32 id, bool on);
-};
+#include "am35x-phy-control.h"
 
 struct am335x_control_usb {
 	struct device_d *dev;
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index ec8c0f538b..df31255d89 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -5,6 +5,7 @@
 #include <linux/err.h>
 #include "am35x-phy-control.h"
 #include "musb_core.h"
+#include "phy-am335x.h"
 
 struct am335x_usbphy {
 	void __iomem *base;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
