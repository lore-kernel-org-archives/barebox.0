Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Rse-0003jS-P5
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 13:09:46 +0000
Received: by mail-pg0-x241.google.com with SMTP id n11so7237138pgp.4
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2018 06:09:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Mar 2018 06:09:13 -0700
Message-Id: <20180326130915.8726-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180326130915.8726-1-andrew.smirnov@gmail.com>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] console: Introduce console_drain()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Generalize high baud rate UART polling code found in lib/xmodem.c and
expose it as a generic function in console API.

The usecase for this -- besides X/Y-mode data transfers where the code
originated -- is command/reply type of serial exchages at high baud
rates (~1Mbaud) with payloads exceeding inernal UART FIFOs in
size. Such interactions are not uncommon in serdev device and this
patch is done in preparation for serdev support code that will follow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/console.h | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/xymodem.c     | 30 ++++----------------
 2 files changed, 88 insertions(+), 25 deletions(-)

diff --git a/include/console.h b/include/console.h
index 724168e07..4aa4c8f9e 100644
--- a/include/console.h
+++ b/include/console.h
@@ -23,6 +23,7 @@
 #include <param.h>
 #include <linux/list.h>
 #include <driver.h>
+#include <clock.h>
 
 #define CONSOLE_STDIN           (1 << 0)
 #define CONSOLE_STDOUT          (1 << 1)
@@ -88,6 +89,88 @@ unsigned console_get_active(struct console_device *cdev);
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
 unsigned console_get_baudrate(struct console_device *cdev);
 
+
+/**
+ * console_fifo_fill - fill FIFO with as much console data as possible
+ *
+ * @cdev:	Console to poll for dat
+ * @fifo:	FIFO to store the data in
+ */
+static inline int console_fifo_fill(struct console_device *cdev,
+				    struct kfifo *fifo)
+{
+	size_t len = kfifo_len(fifo);
+	while (cdev->tstc(cdev) && len < fifo->size) {
+		kfifo_putc(fifo, (unsigned char)(cdev->getc(cdev)));
+		len++;
+	}
+
+	return len;
+}
+
+/**
+ * __console_drain - Drain console into a buffer via FIFO
+ *
+ * @__is_timeout	Callback used to determine timeout condition
+ * @cdev		Console to drain
+ * @fifo		FIFO to use as a transient buffer
+ * @buf			Buffer to drain console into
+ * @len			Size of the drain buffer
+ * @timeout		Console polling timeout in ns
+ *
+ * This function is optimized to :
+ * - maximize throughput (ie. read as much as is available in lower layer fifo)
+ * - minimize latencies (no delay or wait timeout if data available)
+ * - have a timeout
+ * This is why standard getc() is not used, and input_fifo_fill() exists.
+ */
+static inline int __console_drain(int (*__is_timeout)(uint64_t start_ns,
+						      uint64_t time_offset_ns),
+				  struct console_device *cdev,
+				  struct kfifo *fifo,
+				  unsigned char *buf,
+				  int len,
+				  uint64_t timeout)
+{
+	int i = 0;
+	uint64_t start = get_time_ns();
+
+	if (!len)
+		return -EINVAL;
+
+	do {
+		/*
+		 * To minimize wait time before we start polling Rx
+		 * (to potentially avoid overruning Rx FIFO) we call
+		 * console_fifo_fill first
+		 */
+		if (console_fifo_fill(cdev, fifo))
+			kfifo_getc(fifo, &buf[i++]);
+
+	} while (i < len && !__is_timeout(start, timeout));
+
+	return i;
+}
+
+static inline int console_drain_non_interruptible(struct console_device *cdev,
+						  struct kfifo *fifo,
+						  unsigned char *buf,
+						  int len,
+						  uint64_t timeout)
+{
+	return __console_drain(is_timeout_non_interruptible,
+			       cdev, fifo, buf, len, timeout);
+}
+
+static inline int console_drain(struct console_device *cdev,
+				struct kfifo *fifo,
+				unsigned char *buf,
+				int len,
+				uint64_t timeout)
+{
+	return __console_drain(is_timeout, cdev, fifo, buf, len, timeout);
+}
+
 #ifdef CONFIG_PBL_CONSOLE
 void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
 #else
diff --git a/lib/xymodem.c b/lib/xymodem.c
index a6c4d3cd5..ff052ef8f 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -146,36 +146,16 @@ static const char block_nack[MAX_PROTOS][MAX_CRCS] = {
 	{ 0, 0, 0 },		/* YMODEM-G */
 };
 
-static int input_fifo_fill(struct console_device *cdev, struct kfifo *fifo)
-{
-	while (cdev->tstc(cdev) && kfifo_len(fifo) < INPUT_FIFO_SIZE)
-		kfifo_putc(fifo, (unsigned char)(cdev->getc(cdev)));
-	return kfifo_len(fifo);
-}
-
-/*
- * This function is optimized to :
- * - maximize throughput (ie. read as much as is available in lower layer fifo)
- * - minimize latencies (no delay or wait timeout if data available)
- * - have a timeout
- * This is why standard getc() is not used, and input_fifo_fill() exists.
- */
 static int xy_gets(struct console_device *cdev, struct kfifo *fifo,
 		      unsigned char *buf, int len, uint64_t timeout)
 {
-	int i, rc;
-	uint64_t start = get_time_ns();
+	int rc;
 
-	for (i = 0, rc = 0; rc >= 0 && i < len; ) {
-		if (is_timeout(start, timeout)) {
-			rc = -ETIMEDOUT;
-			continue;
-		}
-		if (input_fifo_fill(cdev, fifo))
-			kfifo_getc(fifo, &buf[i++]);
-	}
+	rc = console_drain(cdev, fifo, buf, len, timeout);
+	if (rc != len)
+		return -ETIMEDOUT;
 
-	return rc < 0 ? rc : i;
+	return len;
 }
 
 static void xy_putc(struct console_device *cdev, unsigned char c)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
