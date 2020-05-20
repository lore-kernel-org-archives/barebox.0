Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKKj-0004dc-RG
 for barebox@lists.infradead.org; Wed, 20 May 2020 08:44:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 May 2020 10:44:01 +0200
Message-Id: <20200520084402.24585-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ratp: Free buffers
To: Barebox List <barebox@lists.infradead.org>

recvbuf and sendbuf are never freed, free them to avoid memory holes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/ratp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/ratp.c b/lib/ratp.c
index 8167c5bd4c..1901cc8ea8 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1714,6 +1714,8 @@ void ratp_close(struct ratp *ratp)
 	list_for_each_entry_safe(msg, tmp, &ri->sendmsg, list)
 		ratp_msg_done(ri, msg, -ECONNRESET);
 
+	free(ri->recvbuf);
+	free(ri->sendbuf);
 	free(ri);
 	ratp->internal = NULL;
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
