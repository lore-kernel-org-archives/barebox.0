Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rC-QG
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:22 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id 9DC8418B425F
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:50 +0100
Message-Id: <1391762936-2747-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 08/14] usb: ulpi: fix logic-op
To: barebox@lists.infradead.org

Checking register bits is a bitwise operation.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/otg/ulpi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index e0aa201..6fef5f2 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -51,7 +51,7 @@ int ulpi_read(int reg, void __iomem *view)
 	int ret;
 
 	/* make sure interface is running */
-	if (!(readl(view) && ULPIVW_SS)) {
+	if (!(readl(view) & ULPIVW_SS)) {
 		writel(ULPIVW_WU, view);
 
 		/* wait for wakeup */
@@ -73,7 +73,7 @@ int ulpi_set(u8 bits, int reg, void __iomem *view)
 	int ret;
 
 	/* make sure the interface is running */
-	if (!(readl(view) && ULPIVW_SS)) {
+	if (!(readl(view) & ULPIVW_SS)) {
 		writel(ULPIVW_WU, view);
 		/* wait for wakeup */
 		ret = ulpi_poll(view, ULPIVW_WU);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
