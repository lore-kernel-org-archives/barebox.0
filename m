Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VDg-00011Z-RJ
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:17:33 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id 2D12E18B4263
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:24 +0100
Message-Id: <1389572250-1482-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/9] dt-bindings: import irq.h
To: barebox@lists.infradead.org

Straight copy from the Linux kernel.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/dt-bindings/interrupt-controller/irq.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 include/dt-bindings/interrupt-controller/irq.h

diff --git a/include/dt-bindings/interrupt-controller/irq.h b/include/dt-bindings/interrupt-controller/irq.h
new file mode 100644
index 0000000..33a1003
--- /dev/null
+++ b/include/dt-bindings/interrupt-controller/irq.h
@@ -0,0 +1,19 @@
+/*
+ * This header provides constants for most IRQ bindings.
+ *
+ * Most IRQ bindings include a flags cell as part of the IRQ specifier.
+ * In most cases, the format of the flags cell uses the standard values
+ * defined in this header.
+ */
+
+#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
+#define _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
+
+#define IRQ_TYPE_NONE		0
+#define IRQ_TYPE_EDGE_RISING	1
+#define IRQ_TYPE_EDGE_FALLING	2
+#define IRQ_TYPE_EDGE_BOTH	(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING)
+#define IRQ_TYPE_LEVEL_HIGH	4
+#define IRQ_TYPE_LEVEL_LOW	8
+
+#endif
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
