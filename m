Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLld-0002Em-Ar
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so855409pfq.8
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:04 -0700
Message-Id: <20190522073414.9308-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/18] usb: host: ehci: Simplify ehci_td_buffer()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Rework the code of ehci_td_buffer() with following trivial changes:

    * Switch to using dma_addr_t for 'delta' and 'next'
    * Convert while to for loop
    * Replace explicit magic number with dedicated contants derived
      via ARRAY_SIZE
    * Use ALIGN_DOWN to calculate 'next'
    * Return -ENOMEM instead of -1 when we ran out of buffers

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9758e1ed7..6742a67de 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -31,6 +31,7 @@
 #include <of.h>
 #include <usb/ehci.h>
 #include <linux/err.h>
+#include <linux/sizes.h>
 
 #include "ehci.h"
 
@@ -186,24 +187,23 @@ out:
 
 static int ehci_td_buffer(struct qTD *td, dma_addr_t addr, size_t sz)
 {
-	uint32_t delta, next;
+	const size_t buffer_count = ARRAY_SIZE(td->qt_buffer);
+	dma_addr_t delta, next;
 	int idx;
 
-	idx = 0;
-	while (idx < 5) {
+	for (idx = 0; idx < buffer_count; idx++) {
 		td->qt_buffer[idx] = cpu_to_hc32(addr);
-		next = (addr + 4096) & ~4095;
+		next = ALIGN_DOWN(addr + SZ_4K, SZ_4K);
 		delta = next - addr;
 		if (delta >= sz)
 			break;
 		sz -= delta;
 		addr = next;
-		idx++;
 	}
 
-	if (idx == 5) {
+	if (idx == buffer_count) {
 		pr_debug("out of buffer pointers (%u bytes left)\n", sz);
-		return -1;
+		return -ENOMEM;
 	}
 
 	return 0;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
