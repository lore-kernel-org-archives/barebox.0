Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR8I2-0001ok-2o
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 05:51:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 07:49:50 +0200
Message-Id: <20200422054951.11970-1-s.hauer@pengutronix.de>
In-Reply-To: <20200415092916.21285-1-a.fatoum@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] iopoll: Introduce read_poll_timeout
To: Barebox List <barebox@lists.infradead.org>

barebox adoption of Linux commit:

| commit 5f5323a14cad19323060a8cbf9d96f2280a462dd
| Author: Dejin Zheng <zhengdejin5@gmail.com>
| Date:   Mon Mar 23 23:05:51 2020 +0800
|
|     iopoll: introduce read_poll_timeout macro
|
|     this macro is an extension of readx_poll_timeout macro. the accessor
|     function op just supports only one parameter in the readx_poll_timeout
|     macro, but this macro can supports multiple variable parameters for
|     it. so functions like phy_read(struct phy_device *phydev, u32 regnum)
|     and phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum) can
|     also use this poll timeout core. and also expand it can sleep some time
|     before read operation.
|
|     Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
|     Signed-off-by: David S. Miller <davem@davemloft.net>

Also, implement readx_poll_timeout using read_poll_timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/iopoll.h | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 66c8f652ca..8bf912e173 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -13,12 +13,12 @@
 #include <pbl.h>
 
 /**
- * readx_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
+ * read_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
  * @op: accessor function (takes @addr as its only argument)
- * @addr: Address to poll
  * @val: Variable to read the value into
  * @cond: Break condition (usually involving @val)
  * @timeout_us: Timeout in us, 0 means never timeout
+ * @args: arguments for @op poll
  *
  * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
  * case, the last read value at @addr is stored in @val.
@@ -29,24 +29,43 @@
  * We do not have timing functions in the PBL, so ignore the timeout value and
  * loop infinitely here.
  */
-#define readx_poll_timeout(op, addr, val, cond, timeout_us)	\
+#define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start; \
 	if (!IN_PBL && timeout_us) \
 		start = get_time_ns(); \
 	for (;;) { \
-		(val) = op(addr); \
+		(val) = op(args); \
 		if (cond) \
 			break; \
 		if (!IN_PBL && timeout_us && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
-			(val) = op(addr); \
+			(val) = op(args); \
 			break; \
 		} \
 	} \
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
+/**
+ * readx_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
+ * @op: accessor function (takes @addr as its only argument)
+ * @addr: Address to poll
+ * @val: Variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @timeout_us: Timeout in us, 0 means never timeout
+ *
+ * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
+ * case, the last read value at @addr is stored in @val.
+ *
+ * When available, you'll probably want to use one of the specialized
+ * macros defined below rather than this macro directly.
+ *
+ * We do not have timing functions in the PBL, so ignore the timeout value and
+ * loop infinitely here.
+ */
+#define readx_poll_timeout(op, addr, val, cond, timeout_us)	\
+	read_poll_timeout(op, val, cond, timeout_us, addr)
 
 #define readb_poll_timeout(addr, val, cond, timeout_us) \
 	readx_poll_timeout(readb, addr, val, cond, timeout_us)
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
