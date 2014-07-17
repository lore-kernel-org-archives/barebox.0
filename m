Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kOQ-0004AL-OV
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 12:02:35 +0000
Received: by mail-lb0-f172.google.com with SMTP id z11so1639240lbi.31
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 05:02:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 17 Jul 2014 16:02:03 +0400
Message-Id: <1405598523-2835-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] scripts/checkpatch.pl: don't search for Doxyfile when
 checking top_of_kernel_tree()
To: barebox@lists.infradead.org

Doxygen documentation is removed in the commit

  commit 98360be0fefd58bf27df03c47d887dd676a31d73
  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Tue Jun 17 10:27:03 2014 +0200

      Documentation: remove doxygen documentation

But checkpatch.pl still trying to check 'Doxyfile' presence.
There is not such 'Doxyfile' and checkpatch.pl exits with
'Must be run from the top-level dir. of a kernel tree' message.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index e80926f..153af8d 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -329,7 +329,7 @@ sub top_of_kernel_tree {
 
 	my @tree_check = (
 		"arch", "commands", "common", "COPYING", "CREDITS", "defaultenv",  
-		"Documentation", "Doxyfile", "drivers", "fs", "include", "lib",
+		"Documentation", "drivers", "fs", "include", "lib",
 		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
 	);
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
