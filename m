Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jw3w3-0007DU-UZ
 for barebox@lists.infradead.org; Thu, 16 Jul 2020 13:28:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0012027E084E
 for <barebox@lists.infradead.org>; Thu, 16 Jul 2020 15:28:26 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 16 Jul 2020 15:28:16 +0200
Message-Id: <20200716132816.16400-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] startup: Add missing newline to notice message
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index 511675ed5..10dbe754e 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -155,7 +155,7 @@ static int load_environment(void)
 			envfs_load(default_environment_path, "/env", 0);
 	} else {
 		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-			pr_notice("No support for persistent environment. Using default environment");
+			pr_notice("No support for persistent environment. Using default environment\n");
 	}
 
 	nvvar_load();
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
