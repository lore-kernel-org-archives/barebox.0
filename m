Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AU-4m
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:38 +0400
Message-Id: <1332597640-31268-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
References: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] Rename function ulpi_init to ulpi_detect
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/otg/ulpi.c |    4 ++--
 include/usb/ulpi.h     |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 5d52511..6d00ff0 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -134,7 +134,7 @@ static struct ulpi_info ulpi_ids[] = {
 	ULPI_INFO(ULPI_ID(0x0424, 0x0006), "SMSC USB331x"),
 };
 
-int ulpi_init(void __iomem *view)
+int ulpi_probe(void __iomem *view)
 {
 	int i, vid, pid, ret;
 	uint32_t ulpi_id = 0;
@@ -160,7 +160,7 @@ int ulpi_init(void __iomem *view)
 
 	return -1;
 }
-EXPORT_SYMBOL(ulpi_init);
+EXPORT_SYMBOL(ulpi_probe);
 
 int ulpi_set_vbus(void __iomem *view, int on)
 {
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 75197e1..235d006 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -4,7 +4,7 @@
 int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
-int ulpi_init(void __iomem *view);
+int ulpi_probe(void __iomem *view);
 int ulpi_set_vbus(void __iomem *view, int on);
 
 /* ULPI register addresses */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
