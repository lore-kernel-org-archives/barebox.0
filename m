Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWLau-0007jM-Tj
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 13:27:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gWLah-0003gh-Je
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 14:27:19 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Dec 2018 14:27:19 +0100
Message-Id: <20181210132719.15419-1-l.stach@pengutronix.de>
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
Subject: [PATCH] lib/xymodem: Decrease read block timeout
To: barebox@lists.infradead.org

From: Andrey Smirnov <andrew.smirnov@gmail.com>

When operating at hight baudrates (> 1Mbaud) on a system that perfoms
several polling tasks, it is often the case that xy_read_block()
errors out due to the fact that incoming data overran serial FIFO and
some of the payload got lost. For those kind of situations it is not
very beneficital to wait for 3 seconds for every block lost this way,
and decreasing it in order to force a quick NAK to the host is
beneficial to overall throughput.

This patch changes the timeout to be the bigger of 50ms or 10 times
the about of time it'd take to transfer a single payload block for a
given baudrate.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
lst: Replaced 64bit division with do_div.
---
 lib/xymodem.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/lib/xymodem.c b/lib/xymodem.c
index 9e4ce58b6015..0ccf3825a4ba 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -32,6 +32,7 @@
 #include <kfifo.h>
 #include <linux/byteorder/generic.h>
 #include <xymodem.h>
+#include <asm-generic/div64.h>
 
 #define xy_dbg(fmt, args...)
 
@@ -87,6 +88,7 @@ enum proto_state {
  * @total_SOH: number of SOH frames received (128 bytes chunks)
  * @total_STX: number of STX frames received (1024 bytes chunks)
  * @total_CAN: nubmer of CAN frames received (cancel frames)
+ * @read_block_timeout: Timeout to wait before NACKing a block
  */
 struct xyz_ctxt {
 	struct console_device *cdev;
@@ -100,6 +102,7 @@ struct xyz_ctxt {
 	int nb_received;
 	int next_blk;
 	int total_SOH, total_STX, total_CAN, total_retries;
+	uint64_t read_block_timeout;
 };
 
 /**
@@ -418,6 +421,18 @@ static struct xyz_ctxt *xymodem_open(struct console_device *cdev,
 	proto->mode = proto_mode;
 	proto->cdev = cdev;
 	proto->crc_mode = CRC_CRC16;
+	/*
+	 * Set read block timeout to 10 times the amount of time
+	 * needed to receive a block-size bytes at a given baud-rate,
+	 * but no less than 50ms.
+	 *
+	 * 50ms is just a setting arrived experimentally and might not
+	 * be optimal on every setup
+	 */
+	proto->read_block_timeout = 10 * sizeof(struct xy_block) * SECOND;
+	do_div(proto->read_block_timeout, console_get_baudrate(cdev));
+	proto->read_block_timeout = max(proto->read_block_timeout,
+					50 * MSECOND);
 
 	if (is_xmodem(proto)) {
 		proto->fd = xmodem_fd;
@@ -463,7 +478,8 @@ static int xymodem_handle(struct xyz_ctxt *proto)
 			xy_putc(proto->cdev, invite);
 			/* Fall through */
 		case PROTO_STATE_RECEIVE_BODY:
-			rc = xy_read_block(proto, &blk, 3 * SECOND);
+			rc = xy_read_block(proto, &blk,
+					   proto->read_block_timeout);
 			if (rc > 0) {
 				rc = check_blk_seq(proto, &blk, rc);
 				proto->state = PROTO_STATE_RECEIVE_BODY;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
