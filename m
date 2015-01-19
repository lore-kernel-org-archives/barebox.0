Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDJQ6-0002nc-KX
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 20:59:35 +0000
Received: by mail-la0-f49.google.com with SMTP id hs14so31031963lab.8
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 12:59:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 19 Jan 2015 23:56:08 +0300
Message-Id: <1421700968-758-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] scripts/checkpatch.pl: don't search for CREDITS when checking
 top_of_kernel_tree()
To: barebox@lists.infradead.org

The CREDITS file is removed in the commit

    commit 6570288f2d97d3a3dceb3e631b4e4f4305352dc8
    Author: Masahiro Yamada <yamada.m@jp.panasonic.com>
    Date:   Tue Jan 13 14:27:07 2015 +0900

        Remove the CREDITS file

But checkpatch.pl still trying to check it presence.
There is not such CREDITS file and checkpatch.pl exits with
'Must be run from the top-level dir. of a kernel tree' message.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 419436d..a40d32c 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -328,7 +328,7 @@ sub top_of_kernel_tree {
 	my ($root) = @_;
 
 	my @tree_check = (
-		"arch", "commands", "common", "COPYING", "CREDITS", "defaultenv",  
+		"arch", "commands", "common", "COPYING", "defaultenv",
 		"Documentation", "drivers", "fs", "include", "lib",
 		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
 	);
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
