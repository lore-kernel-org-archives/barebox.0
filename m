Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLYwL-0003vI-Q1
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 21:05:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id 131so610680lfh.11
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 14:05:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 Apr 2020 00:05:34 +0300
Message-Id: <20200406210534.3375-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] checkpatch.pl: Update DT vendor prefix check
To: barebox@lists.infradead.org

In commit 796af3473b82 ("dts: update to v5.2-rc1")
vendor-prefixes.txt has been converted to a DT schema.
Update the checkpatch.pl DT check to extract vendor prefixes from the new
vendor-prefixes.yaml file.

Based on this linux kernel commit 852d095d16a6
("checkpatch.pl: Update DT vendor prefix check").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 65c2cfad45..b8bd4e1a59 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3010,7 +3010,7 @@ sub process {
 
 			# linux device tree files
 			my $dt_path = $root . "/dts/Bindings/";
- 			my $vp_file = $dt_path . "vendor-prefixes.txt";
++			my $vp_file = $dt_path . "vendor-prefixes.yaml";
 
 			# barebox-specific bindings
 			$dt_path = $dt_path . " " . $root . "/Documentation/devicetree/bindings/";
@@ -3028,7 +3028,7 @@ sub process {
 
 				next if $compat !~ /^([a-zA-Z0-9\-]+)\,/;
 				my $vendor = $1;
-				`grep -Eq "^$vendor\\b" $vp_file`;
++				`grep -Eq "\\"\\^\Q$vendor\E,\\.\\*\\":" $vp_file`;
 				if ( $? >> 8 ) {
 					WARN("UNDOCUMENTED_DT_STRING",
 					     "DT compatible string vendor \"$vendor\" appears un-documented -- check $vp_file\n" . $herecurr);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
