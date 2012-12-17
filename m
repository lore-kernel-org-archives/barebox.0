Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TkVN7-0007pL-Pk
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:44:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Dec 2012 08:44:15 +0100
Message-Id: <1355730256-13520-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355730256-13520-1-git-send-email-s.hauer@pengutronix.de>
References: <1355730256-13520-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] USB ULPI: Add missing ulpi_write function
To: barebox@lists.infradead.org

We currently only have functions to read/modify registers. Add a
function to write registers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/ulpi.c |   17 +++++++++++++++++
 include/usb/ulpi.h     |    1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 61cbada..badb05b 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -111,6 +111,23 @@ int ulpi_clear(u8 bits, int reg, void __iomem *view)
 }
 EXPORT_SYMBOL(ulpi_clear);
 
+int ulpi_write(u8 bits, int reg, void __iomem *view)
+{
+	int ret;
+
+	writel((ULPIVW_RUN | ULPIVW_WRITE |
+		      (reg << ULPIVW_ADDR_SHIFT) |
+		      ((bits & ULPIVW_WDATA_MASK) << ULPIVW_WDATA_SHIFT)),
+		     view);
+
+	/* wait for completion */
+	ret = ulpi_poll(view, ULPIVW_RUN);
+	if (ret < 0)
+		return ret;
+	return 0;
+}
+EXPORT_SYMBOL(ulpi_write);
+
 struct ulpi_info {
 	uint32_t	id;
 	char		*name;
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 542993c..7c868a5 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_ULPI_H
 #define __MACH_ULPI_H
 
+int ulpi_write(u8 bits, int reg, void __iomem *view);
 int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
