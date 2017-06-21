Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4v-0004Ho-Bj
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:16 +0000
Received: by mail-wr0-x242.google.com with SMTP id z45so29080045wrb.2
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:53 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:12 +0200
Message-Id: <20170621191323.18191-6-aleksander@aleksander.es>
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
Subject: [PATCH v2 05/16] ratp: completely ignore RST flagged packets in
 behavior G
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

The reference says:

    This procedure represents the behavior of the CLOSED state of a
    connection. All incoming packets are discarded. If the packet
    had the RST flag set take no action. Otherwise it is necessary
    to build a RST packet.

So, skip building the RST packet if the incoming one had RST set.

This commit fixes an infinite loop of messages sent and received
between both ends during the connection close procedure, found when
testing barebox against a third party ratp implementation.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/ratp.c b/lib/ratp.c
index 43b8b04dc..d3c252047 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1033,6 +1033,9 @@ static int ratp_behaviour_g(struct ratp_internal *ri, void *pkt)
 
 	pr_debug("%s\n", __func__);
 
+	if (hdr->control & RATP_CONTROL_RST)
+		return 0;
+
 	control = RATP_CONTROL_RST;
 
 	if (hdr->control & RATP_CONTROL_ACK)
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
