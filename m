Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTsjv-0005VR-L9
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 15:01:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Feb 2016 16:00:39 +0100
Message-Id: <1455202840-26501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] blspec: Do not crash on config files without newline on
 last line
To: Barebox List <barebox@lists.infradead.org>

When the last line in a config file has no newline then 'next' is NULL
on the the loop iteration. Check that before derefencing 'next'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index d5ddb4f..0f806ca 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -75,7 +75,7 @@ static struct blspec_entry *blspec_entry_open(struct blspec *blspec,
 
 	next = buf;
 
-	while (*next) {
+	while (next && *next) {
 		char *name, *val;
 
 		line = next;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
