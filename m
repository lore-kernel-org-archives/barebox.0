Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKR-00033s-Hy
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id c4so6734117pls.11
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:21 -0800
Message-Id: <20190220072930.14300-17-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/25] usb: xhci-hcd: Make use of lo_hi_readq/writeq()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make use of lo_hi_readq/writeq() to implement xhci_read/write_64()
helpers, same as it is done in the Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci.h | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index dfbfe579b..84a14dd1f 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -24,6 +24,8 @@
 #ifndef __XHCI_H
 #define __XHCI_H
 
+#include <io-64-nonatomic-lo-hi.h>
+
 #define NUM_COMMAND_TRBS	8
 #define NUM_TRANSFER_TRBS	8
 #define NUM_EVENT_SEGM		1	/* only one supported */
@@ -1165,19 +1167,11 @@ struct xhci_erst_entry {
  */
 static inline u64 xhci_read_64(__le64 __iomem *regs)
 {
-	__u32 __iomem *ptr = (__u32 __iomem *)regs;
-	u64 val_lo = readl(ptr);
-	u64 val_hi = readl(ptr + 1);
-	return val_lo + (val_hi << 32);
+	return lo_hi_readq(regs);
 }
 static inline void xhci_write_64(const u64 val, __le64 __iomem *regs)
 {
-	__u32 __iomem *ptr = (__u32 __iomem *)regs;
-	u32 val_lo = lower_32_bits(val);
-	u32 val_hi = upper_32_bits(val);
-
-	writel(val_lo, ptr);
-	writel(val_hi, ptr + 1);
+	lo_hi_writeq(val, regs);
 }
 
 /*
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
