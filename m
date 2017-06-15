Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSjz-0002Yh-60
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:09 +0000
Received: by mail-wr0-x244.google.com with SMTP id 77so2874299wrb.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:49 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:14 +0200
Message-Id: <20170615111420.5318-11-aleksander@aleksander.es>
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
Subject: [PATCH 10/16] ratp: fix sending ACKs without data
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

All ACKs without data must be built in the same way from the input
message:
     <SN=received AN><AN=received SN+1 modulo 2><CTL=ACK>

The code was actually doing this instead:
     <SN=0><AN=SN><CTL=ACK>

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
