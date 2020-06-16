Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7u9-0002QV-56
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 09:29:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jun 2020 11:29:05 +0200
Message-Id: <20200616092906.2626-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ratp: Fix closing connections
To: Barebox List <barebox@lists.infradead.org>

When entering the LAST_ACK state we have to set the saved SN to the
received SN of the current packet. With this we properly accept the
final incoming packet and close the connection. Without this we
interpret the final incoming packet as a duplicate of the previous
packet and close the connection only after a timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/ratp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/ratp.c b/lib/ratp.c
index 1901cc8ea8..ce30223bac 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1109,6 +1109,8 @@ static int ratp_behaviour_h2(struct ratp_internal *ri, void *pkt)
 
 	ratp_state_change(ri, RATP_STATE_LAST_ACK);
 
+	ri->sn_received = ratp_sn(hdr);
+
 	return 1;
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
