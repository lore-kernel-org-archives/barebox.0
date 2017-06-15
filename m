Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk3-0002Yn-U3
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:16 +0000
Received: by mail-wr0-x243.google.com with SMTP id 77so2874696wrb.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:52 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:17 +0200
Message-Id: <20170615111420.5318-14-aleksander@aleksander.es>
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
Subject: [PATCH 13/16] ratp: send initial data in behaviour B if any pending
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

And also, use ratp_send_ack() instead of manually constructing an ACK
if no data is pending to be sent.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index c7f3f4171..e810a9e54 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -622,11 +622,11 @@ static void ratp_behaviour_b(struct ratp_internal *ri, void *pkt)
 		ri->sn_received = ratp_sn(hdr);
 
 		if (hdr->control & RATP_CONTROL_ACK) {
-			control = ratp_set_sn(ratp_an(hdr)) |
-				ratp_set_an(!ratp_sn(hdr)) |
-				RATP_CONTROL_ACK;
-			ratp_send_hdr(ri, control);
 			ratp_state_change(ri, RATP_STATE_ESTABLISHED);
+			if (list_empty(&ri->sendmsg) || ri->sendmsg_current)
+				ratp_send_ack(ri, hdr);
+			else
+				ratp_send_next_data(ri);
 		} else {
 			struct ratp_header synack = {};
 
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
