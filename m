Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGooo-0008BP-4j
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:48:56 +0000
Received: by mail-wm0-x242.google.com with SMTP id b84so19654839wmh.0
 for <barebox@lists.infradead.org>; Fri, 02 Jun 2017 08:48:34 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Jun 2017 17:48:28 +0200
Message-Id: <20170602154828.4429-1-aleksander@aleksander.es>
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
Subject: [PATCH] ratp: avoid using already freed memory
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

If ratp_establish() fails we would be accessing the ratp_internal
struct after having disposed it.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index d596a0e8b..22e83636f 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1658,6 +1658,8 @@ int ratp_establish(struct ratp *ratp, bool active, int timeout_ms)
 	}
 
 out:
+	ri->in_ratp--;
+
 	if (ret) {
 		free(ri->recvbuf);
 		free(ri->sendbuf);
@@ -1665,8 +1667,6 @@ out:
 		ratp->internal = NULL;
 	}
 
-	ri->in_ratp--;
-
 	return ret;
 }
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
