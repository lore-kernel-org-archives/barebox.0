Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4x-0004IP-Pd
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:19 +0000
Received: by mail-wr0-x243.google.com with SMTP id k67so997123wrc.1
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:59 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:18 +0200
Message-Id: <20170621191323.18191-12-aleksander@aleksander.es>
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
Subject: [PATCH v2 11/16] ratp: consolidate ratp_sn_expected() and
 ratp_an_expected()
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

This is no code change in ratp_sn_expected(), it's just rewritten in
the same way as ratp_an_expected(), which follows the RFC916 approach.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 5c52d3b5f..46a2b645c 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -359,7 +359,7 @@ static bool ratp_an_expected(struct ratp_internal *ri, struct ratp_header *hdr)
 
 static bool ratp_sn_expected(struct ratp_internal *ri, struct ratp_header *hdr)
 {
-	return ratp_sn(hdr) != ri->sn_received;
+	return ratp_sn(hdr) == (ri->sn_received + 1) % 2;
 }
 
 static int ratp_send_ack(struct ratp_internal *ri, struct ratp_header *hdr)
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
