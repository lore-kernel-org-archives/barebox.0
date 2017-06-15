Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSju-0002YH-EZ
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:07 +0000
Received: by mail-wr0-x244.google.com with SMTP id 77so2873490wrb.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:42 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:06 +0200
Message-Id: <20170615111420.5318-3-aleksander@aleksander.es>
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
Subject: [PATCH 02/16] ratp: avoid unnecessary variable initializations
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 0d384aa4e..e9536499e 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -382,7 +382,7 @@ static int ratp_send_ack(struct ratp_internal *ri, struct ratp_header *hdr)
 static int ratp_send_next_data(struct ratp_internal *ri)
 {
 	uint16_t crc;
-	uint8_t control = RATP_CONTROL_ACK;
+	uint8_t control;
 	struct ratp_header *hdr;
 	int pktlen;
 	struct ratp_message *msg;
@@ -594,7 +594,7 @@ static void ratp_behaviour_b(struct ratp_internal *ri, void *pkt)
 
 	if ((hdr->control & RATP_CONTROL_ACK) && !ratp_an_expected(ri, hdr)) {
 		if (!(hdr->control & RATP_CONTROL_RST)) {
-			uint8_t control = RATP_CONTROL_RST;
+			uint8_t control;
 
 			control = RATP_CONTROL_RST |
 				ratp_set_sn(ratp_an(hdr));
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
