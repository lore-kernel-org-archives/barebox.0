Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l7-000077-0n
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:35 +0200
Message-Id: <20200511072140.29610-19-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 18/23] usb: xhci-hcd: replace opencoded non-atomic 64-bit MMIO
 with lo_hi helper
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Commit 3c5317e9046 ("usb: xhci-hcd: Make use of lo_hi_readq/writeq()")
had made use of lo_hi_readq/writeq() to implement xhci_read/write_64(),
like Linux does, but this was removed in commit fddd1c7c51a8
("usb: host: remove xhci driver"). Reinstate it to make code clearer.

No functional change.

[Note: Linux doesn't use any readq/writeq, but does two 32-bit access
 always, even on 64-bit systems]

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci.h | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 1a3f7e7642bc..9ffbb103d562 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -18,6 +18,7 @@
 
 #include <asm/types.h>
 #include <io.h>
+#include <io-64-nonatomic-lo-hi.h>
 #include <linux/list.h>
 
 #define MAX_EP_CTX_NUM		31
@@ -1112,10 +1113,7 @@ static inline u64 xhci_readq(__le64 volatile *regs)
 #if BITS_PER_LONG == 64
 	return readq(regs);
 #else
-	__u32 *ptr = (__u32 *)regs;
-	u64 val_lo = readl(ptr);
-	u64 val_hi = readl(ptr + 1);
-	return val_lo + (val_hi << 32);
+	return lo_hi_readq(regs);
 #endif
 }
 
@@ -1124,12 +1122,7 @@ static inline void xhci_writeq(__le64 volatile *regs, const u64 val)
 #if BITS_PER_LONG == 64
 	writeq(val, regs);
 #else
-	__u32 *ptr = (__u32 *)regs;
-	u32 val_lo = lower_32_bits(val);
-	/* FIXME */
-	u32 val_hi = upper_32_bits(val);
-	writel(val_lo, ptr);
-	writel(val_hi, ptr + 1);
+	lo_hi_writeq(val, regs);
 #endif
 }
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
