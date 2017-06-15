Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk3-0002Yk-D2
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:14 +0000
Received: by mail-wr0-x241.google.com with SMTP id 77so2874544wrb.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:51 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:16 +0200
Message-Id: <20170615111420.5318-13-aleksander@aleksander.es>
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
Subject: [PATCH 12/16] ratp: prefer using ratp_send_ack() in behaviour I1
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Instead of manually constructing an ACK, use the ratp_send_ack()
method, which already does that properly.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 46a2b645c..c7f3f4171 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1330,7 +1330,6 @@ static int msg_recv(struct ratp_internal *ri, void *pkt)
 static int ratp_behaviour_i1(struct ratp_internal *ri, void *pkt)
 {
 	struct ratp_header *hdr = pkt;
-	uint8_t control = 0;
 
 	if (!ratp_has_data (hdr))
 		return 1;
@@ -1341,15 +1340,10 @@ static int ratp_behaviour_i1(struct ratp_internal *ri, void *pkt)
 
 	msg_recv(ri, pkt);
 
-	if (list_empty(&ri->sendmsg) || ri->sendmsg_current) {
-		control = ratp_set_sn(!ri->sn_sent) |
-			ratp_set_an(ri->sn_received + 1) |
-			RATP_CONTROL_ACK;
-
-		ratp_send_hdr(ri, control);
-	} else {
+	if (list_empty(&ri->sendmsg) || ri->sendmsg_current)
+		ratp_send_ack(ri, hdr);
+	else
 		ratp_send_next_data(ri);
-	}
 
 	return 0;
 }
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
