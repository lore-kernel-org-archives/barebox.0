Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiQ7W-0002xe-FH
 for barebox@lists.infradead.org; Fri, 31 May 2013 14:15:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 16:15:29 +0200
Message-Id: <1370009729-15784-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: Print internal devicetree information without verbose
To: barebox@lists.infradead.org

It's a precious information that barebox will boot the kernel
with the internal devicetree, so print it even in non verbose
mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 3976eb4..6ce2ca9 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -395,7 +395,7 @@ static int do_bootm(int argc, char *argv[])
 			goto err_out;
 	} else {
 		data.of_root_node = of_get_root_node();
-		if (bootm_verbose(&data) && data.of_root_node)
+		if (data.of_root_node)
 			printf("using internal devicetree\n");
 	}
 #endif
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
