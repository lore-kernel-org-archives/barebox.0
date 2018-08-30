Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvVZK-00084L-Ac
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 22:37:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id u12-v6so9437047wrr.4
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 15:37:27 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri, 31 Aug 2018 00:37:20 +0200
Message-Id: <20180830223720.25801-1-aleksander@aleksander.es>
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
Subject: [PATCH] ratp: fix sending data that won't fit in a single RATP packet
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

We need to advance the input buffer used to create messages when the
data doesn't fit in a single RATP packet.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 include/ratp.h | 2 +-
 lib/ratp.c     | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/ratp.h b/include/ratp.h
index 6f4cf8a6f..d2a819235 100644
--- a/include/ratp.h
+++ b/include/ratp.h
@@ -11,7 +11,7 @@ int ratp_establish(struct ratp *ratp, bool active, int timeout_ms);
 void ratp_close(struct ratp *ratp);
 int ratp_recv(struct ratp *ratp, void **data, size_t *len);
 int ratp_send(struct ratp *ratp, const void *data, size_t len);
-int ratp_send_complete(struct ratp *ratp, const void *data, size_t len,
+int ratp_send_complete(struct ratp *ratp, const uint8_t *data, size_t len,
 		   void (*complete)(void *ctx, int status), void *complete_ctx);
 int ratp_poll(struct ratp *ratp);
 bool ratp_closed(struct ratp *ratp);
diff --git a/lib/ratp.c b/lib/ratp.c
index 4c5c748b4..7801cae51 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1734,11 +1734,12 @@ void ratp_close(struct ratp *ratp)
  *
  * Return: 0 if successful, a negative error code otherwise.
  */
-int ratp_send_complete(struct ratp *ratp, const void *data, size_t len,
+int ratp_send_complete(struct ratp *ratp, const uint8_t *data, size_t len,
 		   void (*complete)(void *ctx, int status), void *complete_ctx)
 {
 	struct ratp_internal *ri = ratp->internal;
 	struct ratp_message *msg;
+	int sent = 0;

 	if (!ri || ri->state != RATP_STATE_ESTABLISHED)
 		return -ENETDOWN;
@@ -1754,11 +1755,12 @@ int ratp_send_complete(struct ratp *ratp, const void *data, size_t len,
 		msg = xzalloc(sizeof(*msg));
 		msg->buf = xzalloc(sizeof(struct ratp_header) + now + 2);
 		msg->len = now;
-		memcpy(msg->buf + sizeof(struct ratp_header), data, now);
+		memcpy(msg->buf + sizeof(struct ratp_header), data + sent, now);

 		list_add_tail(&msg->list, &ri->sendmsg);

 		len -= now;
+		sent += now;
 	}

 	msg->eor = 1;
--
2.18.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
