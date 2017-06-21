Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4u-0004Hm-WC
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:15 +0000
Received: by mail-wr0-x243.google.com with SMTP id x23so29084110wrb.0
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:51 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:10 +0200
Message-Id: <20170621191323.18191-4-aleksander@aleksander.es>
In-Reply-To: <20170621191323.18191-1-aleksander@aleksander.es>
References: <20170621191323.18191-1-aleksander@aleksander.es>
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
Subject: [PATCH v2 03/16] ratp: send missing RST in behavior C2
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

The reference says:

    If SYN was set we assume that the other end crashed and has
    attempted to open a new connection.  We respond by sending a
    legal reset:
        <SN=received AN><AN=received SN+1 modulo 2><CTL=RST, ACK>

Add this missing step.

This issue affects the barebox<->bbremote interaction if bbremote
crashes without closing the channel and restarts opening a complete
new connection.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/lib/ratp.c b/lib/ratp.c
index e9536499e..a8ac52c75 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -731,8 +731,15 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
 		return 1;
 
 	if (hdr->control & RATP_CONTROL_SYN) {
+		uint8_t control;
+
 		ri->status = -ECONNRESET;
 		pr_debug("Error: Connection reset\n");
+
+		control = RATP_CONTROL_RST | RATP_CONTROL_ACK |
+			ratp_set_sn(ratp_an(hdr)) | ratp_set_an(!ratp_sn(hdr));
+		ratp_send_hdr(ri, control);
+
 		ratp_state_change(ri, RATP_STATE_CLOSED);
 		return 1;
 	}
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
