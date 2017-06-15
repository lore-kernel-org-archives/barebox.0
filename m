Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x22e.google.com ([2a00:1450:400c:c0c::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSjv-0002YJ-BA
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:06 +0000
Received: by mail-wr0-x22e.google.com with SMTP id 36so17076156wry.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:42 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:07 +0200
Message-Id: <20170615111420.5318-4-aleksander@aleksander.es>
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
Subject: [PATCH 03/16] ratp: send missing RST in behavior C2
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The reference says:

    If SYN was set we assume that the other end crashed and has
    attempted to open a new connection.  We respond by sending a
    legal reset:
        <SN=received AN><AN=received SN+1 modulo 2><CTL=RST, ACK>

Add this missing step.

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
