Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLM-0005lx-Ak
 for barebox@lists.infradead.org; Wed, 15 May 2019 09:37:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 11:36:44 +0200
Message-Id: <20190515093644.9691-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190515093644.9691-1-a.fatoum@pengutronix.de>
References: <20190515093644.9691-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 4/4] checkpatch: apply barebox-specific modifications
To: barebox@lists.infradead.org

For future reference, following barebox changes were applied
on top of the scripts/checkpatch.pl copied from upstream:

4a7f56056d ("scripts: Adapt checkpatch.pl for barebox.")
2671c30c25 ("scripts/checkpatch.pl: don't search for Doxyfile when checking top_of_kernel_tree()")
ad3c55fbf2 ("scripts/checkpatch.pl: don't search for CREDITS when checking top_of_kernel_tree()")
13b0f4666d ("checkpatch: don't check TODO file presence")

	These adjust sub top_of_kernel_tree's @tree_check to eventually contain
		(
			"arch", "commands", "common", "COPYING", "defaultenv",
			"Documentation", "drivers", "fs", "include", "lib",
			"MAKEALL", "Makefile", "net", "README", "scripts"
		);

9e809ef431 ("scripts: allow lines longer than 80 cols with printf() in checkpatch")

	adds an exception for printf, same as printk.

9496896fbf ("checkpatch: add DT compatible string documentation checks")

	searches dts/Bindings as well as Documentation/devicetree/bindings
	for compatibles.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/checkpatch.pl | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index a09333fd7cef..65c2cfad45f7 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -457,7 +457,7 @@ our $typeTypedefs = qr{(?x:
 our $zero_initializer = qr{(?:(?:0[xX])?0+$Int_type?|NULL|false)\b};
 
 our $logFunctions = qr{(?x:
-	printk(?:_ratelimited|_once|_deferred_once|_deferred|)|
+	printf|printk(?:_ratelimited|_once|_deferred_once|_deferred|)|
 	(?:[a-z0-9]+_){1,2}(?:printk|emerg|alert|crit|err|warning|warn|notice|info|debug|dbg|vdbg|devel|cont|WARN)(?:_ratelimited|_once|)|
 	TP_printk|
 	WARN(?:_RATELIMIT|_ONCE|)|
@@ -1095,9 +1095,9 @@ sub top_of_kernel_tree {
 	my ($root) = @_;
 
 	my @tree_check = (
-		"COPYING", "CREDITS", "Kbuild", "MAINTAINERS", "Makefile",
-		"README", "Documentation", "arch", "include", "drivers",
-		"fs", "init", "ipc", "kernel", "lib", "scripts",
+		"arch", "commands", "common", "COPYING", "defaultenv",
+		"Documentation", "drivers", "fs", "include", "lib",
+		"MAKEALL", "Makefile", "net", "README", "scripts"
 	);
 
 	foreach my $check (@tree_check) {
@@ -3008,8 +3008,12 @@ sub process {
 
 			my @compats = $rawline =~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
 
-			my $dt_path = $root . "/Documentation/devicetree/bindings/";
-			my $vp_file = $dt_path . "vendor-prefixes.txt";
+			# linux device tree files
+			my $dt_path = $root . "/dts/Bindings/";
+ 			my $vp_file = $dt_path . "vendor-prefixes.txt";
+
+			# barebox-specific bindings
+			$dt_path = $dt_path . " " . $root . "/Documentation/devicetree/bindings/";
 
 			foreach my $compat (@compats) {
 				my $compat2 = $compat;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
