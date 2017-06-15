Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk4-0002Yt-5R
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:17 +0000
Received: by mail-wr0-x244.google.com with SMTP id z45so2891716wrb.2
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:54 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:19 +0200
Message-Id: <20170615111420.5318-16-aleksander@aleksander.es>
In-Reply-To: <20170615111420.5318-1-aleksander@aleksander.es>
References: <20170615111420.5318-1-aleksander@aleksander.es>
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
Subject: [PATCH 15/16] ratp: consolidate setting the next AN or SN flags
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Setting the next AN or SN flag was being done in two different ways
throughout the code; e.g. here for AN:

    ratp_set_an(ratp_sn(hdr) + 1);
or:
    ratp_set_an(!ratp_sn(hdr));

We define a pair of new ratp_set_next_sn() and ratp_set_next_an()
macros that make it clear that the next value is desired, and also
hide the computation of the actual flag value within the macro, so the
previous example would now look like:

    ratp_set_next_an(ratp_sn(hdr));

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 2dee41009..46a82c69a 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -139,8 +139,10 @@ static bool ratp_an(struct ratp_header *hdr)
 	return hdr->control & RATP_CONTROL_AN ? 1 : 0;
 }
 
-#define ratp_set_sn(sn) (((sn) % 2) ? RATP_CONTROL_SN : 0)
-#define ratp_set_an(an) (((an) % 2) ? RATP_CONTROL_AN : 0)
+#define ratp_set_sn(sn) (sn ? RATP_CONTROL_SN : 0)
+#define ratp_set_an(an) (an ? RATP_CONTROL_AN : 0)
+#define ratp_set_next_sn(sn) (((sn + 1) % 2) ? RATP_CONTROL_SN : 0)
+#define ratp_set_next_an(an) (((an + 1) % 2) ? RATP_CONTROL_AN : 0)
 
 static inline int ratp_header_ok(struct ratp_internal *ri, struct ratp_header *h)
 {
@@ -368,7 +370,7 @@ static int ratp_send_ack(struct ratp_internal *ri, struct ratp_header *hdr)
 	int ret;
 
 	control = ratp_set_sn(ratp_an(hdr)) |
-		ratp_set_an(ratp_sn(hdr) + 1) |
+		ratp_set_next_an(ratp_sn(hdr)) |
 		RATP_CONTROL_ACK;
 
 	ret = ratp_send_hdr(ri, control);
@@ -404,8 +406,8 @@ static int ratp_send_next_data(struct ratp_internal *ri)
 
 	len = msg->len;
 
-	control = ratp_set_sn(ri->sn_sent + 1) |
-		ratp_set_an(ri->sn_received + 1) |
+	control = ratp_set_next_sn(ri->sn_sent) |
+		ratp_set_next_an(ri->sn_received) |
 		RATP_CONTROL_ACK;
 
 	hdr = msg->buf;
@@ -630,7 +632,7 @@ static void ratp_behaviour_b(struct ratp_internal *ri, void *pkt)
 		} else {
 			struct ratp_header synack = {};
 
-			control = ratp_set_an(!ratp_sn(hdr)) |
+			control = ratp_set_next_an(ratp_sn(hdr)) |
 				RATP_CONTROL_SYN |
 				RATP_CONTROL_ACK;
 
@@ -734,7 +736,7 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
 		pr_debug("Error: Connection reset\n");
 
 		control = RATP_CONTROL_RST | RATP_CONTROL_ACK |
-			ratp_set_sn(ratp_an(hdr)) | ratp_set_an(!ratp_sn(hdr));
+			ratp_set_sn(ratp_an(hdr)) | ratp_set_next_an(ratp_sn(hdr));
 		ratp_send_hdr(ri, control);
 
 		ratp_state_change(ri, RATP_STATE_CLOSED);
@@ -1035,7 +1037,7 @@ static int ratp_behaviour_g(struct ratp_internal *ri, void *pkt)
 	if (hdr->control & RATP_CONTROL_ACK)
 		control |= ratp_set_sn(ratp_an(hdr));
 	else
-		control |= ratp_set_an(ratp_sn(hdr) + 1) | RATP_CONTROL_ACK;
+		control |= ratp_set_next_an(ratp_sn(hdr)) | RATP_CONTROL_ACK;
 
 	ratp_send_hdr(ri, control);
 
@@ -1099,7 +1101,7 @@ static int ratp_behaviour_h2(struct ratp_internal *ri, void *pkt)
 	ri->status = -ENETDOWN;
 
 	control = ratp_set_sn(ratp_an(hdr)) |
-		ratp_set_an(ratp_sn(hdr) + 1) |
+		ratp_set_next_an(ratp_sn(hdr)) |
 		RATP_CONTROL_FIN |
 		RATP_CONTROL_ACK;
 
@@ -1165,7 +1167,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
 
 	if (ratp_has_data(hdr)) {
 		control = ratp_set_sn(ratp_an(hdr)) |
-			ratp_set_an(ratp_sn(hdr) + 1) |
+			ratp_set_next_an(ratp_sn(hdr)) |
 			RATP_CONTROL_RST |
 			RATP_CONTROL_ACK;
 		ratp_send_hdr(ri, control);
@@ -1176,7 +1178,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
 	}
 
 	control = ratp_set_sn(ratp_an(hdr)) |
-		ratp_set_an(ratp_sn(hdr) + 1) |
+		ratp_set_next_an(ratp_sn(hdr)) |
 		RATP_CONTROL_ACK;
 
 	expected = ratp_an_expected(ri, hdr);
@@ -1278,7 +1280,7 @@ static int ratp_behaviour_h6(struct ratp_internal *ri, void *pkt)
 	if (!(hdr->control & RATP_CONTROL_FIN))
 		return 1;
 
-	control = ratp_set_sn(ratp_an(hdr) + 1) | RATP_CONTROL_ACK;
+	control = ratp_set_next_sn(ratp_an(hdr)) | RATP_CONTROL_ACK;
 
 	ratp_send_hdr(ri, control);
 
@@ -1695,8 +1697,8 @@ void ratp_close(struct ratp *ratp)
 
 		ratp_state_change(ri, RATP_STATE_FIN_WAIT);
 
-		control = ratp_set_sn(!ri->sn_sent) |
-			ratp_set_an(ri->sn_received + 1) |
+		control = ratp_set_next_sn(ri->sn_sent) |
+			ratp_set_next_an(ri->sn_received) |
 			RATP_CONTROL_FIN | RATP_CONTROL_ACK;
 
 		ratp_create_packet(ri, &fin, control, 0);
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
