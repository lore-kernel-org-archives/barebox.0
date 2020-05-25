Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAQj-0001xH-3p
 for barebox@lists.infradead.org; Mon, 25 May 2020 10:34:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 May 2020 12:33:49 +0200
Message-Id: <20200525103349.19449-21-s.hauer@pengutronix.de>
In-Reply-To: <20200525103349.19449-1-s.hauer@pengutronix.de>
References: <20200525103349.19449-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/20] fastboot net: remove may_send
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

This removes the may_send mechanism from fastboot over UDP. Without this
fastboot transfers get stuck when on the command line something like
"sleep 10" is executed before or during a fastboot session. In this case
while (fbn->may_send == MAY_NOT_SEND) will never become false and
barebox is cought in that loop.

It is not yet clear if this is the right approach, so this is an extra
patch currently.

FIXME: This patch has the effect that the keepalive poller doesn't know
if we are inside a fastboot session or not, it will just blindly send a
keepalive every 30s, no matter what. This must be fixed before merging.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/fastboot.c | 28 +++++-----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/net/fastboot.c b/net/fastboot.c
index 42c432c678..3cafad8eec 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -56,7 +56,6 @@ struct fastboot_net {
 	bool active_download;
 	bool download_needs_cleanup;
 	bool reinit;
-	u8 may_send;
 	char command[65];
 
 	IPaddr_t host_addr;
@@ -148,28 +147,11 @@ static int fastboot_write_net(struct fastboot *fb, const char *buf,
 	if (fbn->reinit)
 		return 0;
 
-	while (fbn->may_send == MAY_NOT_SEND) {
-		poller_call();
-		if (fbn->reinit)
-			return 0;
-	}
-
-	if (n && fbn->may_send == MAY_SEND_ACK) {
-		fastboot_send(fbn, fbn->response_header,
-			      "Have message but only ACK allowed");
-		return -EPROTO;
-	} else if (!n && fbn->may_send == MAY_SEND_MESSAGE) {
-		fastboot_send(fbn, fbn->response_header,
-			      "Want to send ACK but message expected");
-		return -EPROTO;
-	}
-
 	response_header = fbn->response_header;
 	response_header.flags = 0;
 	response_header.seq = htons(fbn->sequence_number);
 	++fbn->sequence_number;
 	fbn->sequence_number_seen = false;
-	fbn->may_send = MAY_NOT_SEND;
 
 	packet = net_udp_get_payload(fbn->net_con);
 	packet_base = packet;
@@ -234,7 +216,6 @@ static void fastboot_handle_type_fastboot(struct fastboot_net *fbn,
 {
 	fbn->response_header = header;
 	fbn->host_waits_since = get_time_ns();
-	fbn->may_send = fastboot_data_len ? MAY_SEND_ACK : MAY_SEND_MESSAGE;
 	if (fbn->active_download) {
 		if (!fastboot_data_len && fbn->fastboot.download_bytes
 					   == fbn->fastboot.download_size) {
@@ -394,11 +375,12 @@ static void fastboot_send_keep_alive(struct poller_struct *poller)
 	 * Sending the message will reset may_send to MAY_NOT_SEND and the
 	 * ACK from the host will reset host_waits_since to the current time.
 	 */
-	if (fbn->may_send == MAY_SEND_MESSAGE &&
-	    is_timeout_non_interruptible(fbn->host_waits_since,
+	if (!is_timeout_non_interruptible(fbn->host_waits_since,
 					 30ULL * NSEC_PER_SEC))
-		fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_INFO,
-				  "still busy");
+		return;
+
+	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_INFO, "still busy");
+	fbn->host_waits_since = get_time_ns();
 }
 
 void fastboot_net_free(struct fastboot_net *fbn)
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
