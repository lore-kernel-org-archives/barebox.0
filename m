Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duQCY-0001y8-JX
 for barebox@lists.infradead.org; Tue, 19 Sep 2017 21:37:08 +0000
Received: by mail-pf0-x241.google.com with SMTP id h4so359496pfk.0
 for <barebox@lists.infradead.org>; Tue, 19 Sep 2017 14:36:46 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 19 Sep 2017 14:36:41 -0700
Message-Id: <20170919213641.28512-1-aleksander@aleksander.es>
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
Subject: [PATCH] lib,ratp: avoid too verbose info messages
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

When using a cli-based RATP that opens and closes the RATP channel for
each command sent/received, it gets annoying to get the "Closed"
message printed all the time in console after each RATP channel close
operation. Just demote it to debug level.

E.g.:
    barebox@barebox sandbox:/ ratp: Closed
    ratp: Closed
    ratp: Closed
    ratp: Closed
    ...

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index e7fbf640a..4c5c748b4 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1717,7 +1717,7 @@ void ratp_close(struct ratp *ratp)
 	free(ri);
 	ratp->internal = NULL;
 
-	pr_info("Closed\n");
+	pr_debug("Closed\n");
 }
 
 /**
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
