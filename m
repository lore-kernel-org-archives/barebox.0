Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0CYZ-0008CV-Jc
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 21:20:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id p10-v6so2873304ljg.2
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 14:20:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Sep 2018 00:19:51 +0300
Message-Id: <20180912211951.30092-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] checkpatch: don't check TODO file presence
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

The commit b3baf2d86149 ("TODO: remove unused file") drops
the TODO file. Alas scripts/checkpatch.pl checks TODO file
presence in top_of_kernel_tree(). Without TODO checkpatch.pl
exits with 'Must be run from the top-level dir. of a kernel tree'.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 48ad4938d9..9a6f6e2298 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -330,7 +330,7 @@ sub top_of_kernel_tree {
 	my @tree_check = (
 		"arch", "commands", "common", "COPYING", "defaultenv",
 		"Documentation", "drivers", "fs", "include", "lib",
-		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
+		"MAKEALL", "Makefile", "net", "README", "scripts"
 	);
 
 	foreach my $check (@tree_check) {
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
