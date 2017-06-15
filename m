Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSju-0002YG-5s
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:04 +0000
Received: by mail-wr0-x241.google.com with SMTP id x23so2894182wrb.0
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:41 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:05 +0200
Message-Id: <20170615111420.5318-2-aleksander@aleksander.es>
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
Subject: [PATCH 01/16] ratp: add missing transition to SYN-RECEIVED in
 behavior B
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The reference says:

    If the SYN flag was set but the ACK was not set then the other
    end of the connection has executed an active open also.
    Acknowledge the SYN, choose your MDL, and send:
        <SN=0><AN=received SN+1 modulo 2><CTL=SYN, ACK><LENGTH=MDL>
    Go to the SYN-RECEIVED state without any further processing.

Add this missing step.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 22e83636f..0d384aa4e 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -619,21 +619,25 @@ static void ratp_behaviour_b(struct ratp_internal *ri, void *pkt)
 	if (hdr->control & RATP_CONTROL_SYN) {
 		uint8_t control;
 
+		ri->sn_received = ratp_sn(hdr);
+
 		if (hdr->control & RATP_CONTROL_ACK) {
 			control = ratp_set_sn(ratp_an(hdr)) |
 				ratp_set_an(!ratp_sn(hdr)) |
 				RATP_CONTROL_ACK;
+			ratp_send_hdr(ri, control);
+			ratp_state_change(ri, RATP_STATE_ESTABLISHED);
 		} else {
+			struct ratp_header synack = {};
+
 			control = ratp_set_an(!ratp_sn(hdr)) |
 				RATP_CONTROL_SYN |
 				RATP_CONTROL_ACK;
 
+			ratp_create_packet(ri, &synack, control, 255);
+			ratp_send_pkt(ri, &synack, sizeof(synack));
+			ratp_state_change(ri, RATP_STATE_SYN_RECEIVED);
 		}
-
-		ri->sn_received = ratp_sn(hdr);
-
-		ratp_send_hdr(ri, control);
-		ratp_state_change(ri, RATP_STATE_ESTABLISHED);
 	}
 }
 
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
