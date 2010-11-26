Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4sk-0005E9-Kw
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 20:26:59 +0000
Received: by eyd9 with SMTP id 9so1149727eyd.36
	for <barebox@lists.infradead.org>; Fri, 26 Nov 2010 12:26:57 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Fri, 26 Nov 2010 21:23:58 +0100
Message-Id: <1290803038-7084-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290803038-7084-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290803038-7084-1-git-send-email-marek.belisko@open-nandra.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] scripts: Adapt checkpatch.pl for barebox.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Add directories from root of barebox to top_of_kernel_tree()
function for usage of script without additional parameters.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 scripts/checkpatch.pl |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index e3c7fc0..151c53a 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -328,9 +328,9 @@ sub top_of_kernel_tree {
 	my ($root) = @_;
 
 	my @tree_check = (
-		"COPYING", "CREDITS", "Kbuild", "MAINTAINERS", "Makefile",
-		"README", "Documentation", "arch", "include", "drivers",
-		"fs", "init", "ipc", "kernel", "lib", "scripts",
+		"arch", "commands", "common", "COPYING", "CREDITS", "defaultenv",  
+		"Documentation", "Doxyfile", "drivers", "fs", "include", "lib",
+		"MAKEALL", "Makefile", "net", "README", "scripts", "TODO"
 	);
 
 	foreach my $check (@tree_check) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
