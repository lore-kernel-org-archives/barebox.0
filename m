Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yl1Pv-0003Wl-Ur
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 20:38:45 +0000
Received: by lbcga7 with SMTP id ga7so189745737lbc.1
 for <barebox@lists.infradead.org>; Wed, 22 Apr 2015 13:38:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 22 Apr 2015 23:39:18 +0300
Message-Id: <1429735158-4250-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] checkpatch: add DT compatible string documentation checks
To: barebox@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Florian Vaussard <florian.vaussard@epfl.ch>

This adds a simple check that any compatible strings in DeviceTree dts
files are present in Documentation/devicetree/bindings and
in dts/Bindings/.

Vendor prefixes are also checked for existing in vendor-prefixes.txt.

This code is based on linux v4.0-rc6 checkpatch.pl dt-checking code by
Rob Herring & Florian Vaussard:

    Rob Herring (2):
        checkpatch: add DT compatible string documentation checks
        checkpatch: fix wildcard DT compatible string checking

    Florian Vaussard (3):
        checkpatch: fix spurious vendor compatible warnings
        checkpatch: check compatible strings in .c and .h too
        checkpatch: improve the compatible vendor match

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Florian Vaussard <florian.vaussard@epfl.ch>
---
 scripts/checkpatch.pl | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index a40d32c..8d96434 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -1466,6 +1466,41 @@ sub process {
 			#print "is_end<$is_end> length<$length>\n";
 		}
 
+# check for DT compatible documentation
+		if (defined $root &&
+			(($realfile =~ /\.dtsi?$/ && $line =~ /^\+\s*compatible\s*=\s*\"/) ||
+			 ($realfile =~ /\.[ch]$/ && $line =~ /^\+.*\.compatible\s*=\s*\"/))) {
+
+			my @compats = $rawline =~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
+
+			# linux device tree files
+			my $dt_path = $root . "/dts/Bindings/";
+			my $vp_file = $dt_path . "vendor-prefixes.txt";
+
+			# barebox-specific bindings
+			$dt_path = $dt_path . " " . $root . "/Documentation/devicetree/bindings/";
+
+			foreach my $compat (@compats) {
+				my $compat2 = $compat;
+				$compat2 =~ s/\,[a-zA-Z0-9]*\-/\,<\.\*>\-/;
+				my $compat3 = $compat;
+				$compat3 =~ s/\,([a-z]*)[0-9]*\-/\,$1<\.\*>\-/;
+				`grep -Erq "$compat|$compat2|$compat3" $dt_path`;
+				if ( $? >> 8 ) {
+					WARN(
+					     "DT compatible string \"$compat\" appears un-documented -- check $dt_path\n" . $herecurr);
+				}
+
+				next if $compat !~ /^([a-zA-Z0-9\-]+)\,/;
+				my $vendor = $1;
+				`grep -Eq "^$vendor\\b" $vp_file`;
+				if ( $? >> 8 ) {
+					WARN(
+					     "DT compatible string vendor \"$vendor\" appears un-documented -- check $vp_file\n" . $herecurr);
+				}
+			}
+		}
+
 # check we are in a valid source file if not then ignore this hunk
 		next if ($realfile !~ /\.(h|c|s|S|pl|sh)$/);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
