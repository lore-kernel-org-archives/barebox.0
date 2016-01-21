Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMGfq-0000Ql-GV
 for barebox@lists.infradead.org; Thu, 21 Jan 2016 14:57:23 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 21 Jan 2016 15:55:49 +0100
Message-Id: <1453388151-8424-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1453388151-8424-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1453388151-8424-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 1/3] include: linux: add circular buffers
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/circ_buf.h | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 include/linux/circ_buf.h

diff --git a/include/linux/circ_buf.h b/include/linux/circ_buf.h
new file mode 100644
index 000000000000..90f2471dc6f2
--- /dev/null
+++ b/include/linux/circ_buf.h
@@ -0,0 +1,36 @@
+/*
+ * See Documentation/circular-buffers.txt for more information.
+ */
+
+#ifndef _LINUX_CIRC_BUF_H
+#define _LINUX_CIRC_BUF_H 1
+
+struct circ_buf {
+	char *buf;
+	int head;
+	int tail;
+};
+
+/* Return count in buffer.  */
+#define CIRC_CNT(head,tail,size) (((head) - (tail)) & ((size)-1))
+
+/* Return space available, 0..size-1.  We always leave one free char
+   as a completely full buffer has head == tail, which is the same as
+   empty.  */
+#define CIRC_SPACE(head,tail,size) CIRC_CNT((tail),((head)+1),(size))
+
+/* Return count up to the end of the buffer.  Carefully avoid
+   accessing head and tail more than once, so they can change
+   underneath us without returning inconsistent results.  */
+#define CIRC_CNT_TO_END(head,tail,size) \
+	({int end = (size) - (tail); \
+	  int n = ((head) + end) & ((size)-1); \
+	  n < end ? n : end;})
+
+/* Return space available up to the end of the buffer.  */
+#define CIRC_SPACE_TO_END(head,tail,size) \
+	({int end = (size) - 1 - (head); \
+	  int n = (end + (tail)) & ((size)-1); \
+	  n <= end ? n : end+1;})
+
+#endif /* _LINUX_CIRC_BUF_H  */
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
