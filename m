Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4x-0004IN-Ph
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:19 +0000
Received: by mail-wr0-x243.google.com with SMTP id 77so29049409wrb.3
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:58 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:17 +0200
Message-Id: <20170621191323.18191-11-aleksander@aleksander.es>
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
Subject: [PATCH v2 10/16] ratp: fix sending ACKs without data
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

All ACKs without data must be built in the same way from the input
message:
     <SN=received AN><AN=received SN+1 modulo 2><CTL=ACK>

The code was actually doing this instead:
     <SN=0><AN=SN><CTL=ACK>

This change fixes how the retransmissions are ACK-ed by the peer, and
would have affected the barebox<->bbremote interactions.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 321721ab7..5c52d3b5f 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -364,13 +364,12 @@ static bool ratp_sn_expected(struct ratp_internal *ri, struct ratp_header *hdr)
 
 static int ratp_send_ack(struct ratp_internal *ri, struct ratp_header *hdr)
 {
-	uint8_t control = RATP_CONTROL_ACK;
+	uint8_t control;
 	int ret;
 
-	if (hdr->control & RATP_CONTROL_SN)
-		control |= RATP_CONTROL_AN;
-	else
-		control |= 0;
+	control = ratp_set_sn(ratp_an(hdr)) |
+		ratp_set_an(ratp_sn(hdr) + 1) |
+		RATP_CONTROL_ACK;
 
 	ret = ratp_send_hdr(ri, control);
 	if (ret)
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
