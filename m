Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSjz-0002Yd-7E
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:10 +0000
Received: by mail-wr0-x243.google.com with SMTP id 77so2874008wrb.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:46 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:11 +0200
Message-Id: <20170615111420.5318-8-aleksander@aleksander.es>
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
Subject: [PATCH 07/16] ratp: fix single byte sending flagged with SO
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

When a single data byte is sent, it is flagged as SO and the actual
data goes in the length byte within the header.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index c946bea1a..846f8130c 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -384,6 +384,7 @@ static int ratp_send_next_data(struct ratp_internal *ri)
 	uint16_t crc;
 	uint8_t control;
 	struct ratp_header *hdr;
+	uint8_t *data;
 	int pktlen;
 	struct ratp_message *msg;
 	int len;
@@ -409,19 +410,19 @@ static int ratp_send_next_data(struct ratp_internal *ri)
 		RATP_CONTROL_ACK;
 
 	hdr = msg->buf;
+	data = (uint8_t *)(hdr + 1);
 
 	if (msg->eor)
 		control |= RATP_CONTROL_EOR;
 
+	pktlen = sizeof(struct ratp_header);
 	if (len > 1) {
-		void *data = hdr + 1;
-		pktlen = sizeof(*hdr) + len + 2;
+		pktlen += len + 2;
 		crc = cyg_crc16(data, len);
 		put_unaligned_be16(crc, data + len);
-	} else {
-		pktlen = sizeof(struct ratp_header);
+	} else if (len == 1) {
 		control |= RATP_CONTROL_SO;
-		len = 0;
+		len = *data;
 	}
 
 	ratp_create_packet(ri, hdr, control, len);
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
