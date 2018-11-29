Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXC-0003j3-9a
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:13 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xH-6c
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000An-EI
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:44 +0100
Message-Id: <20181129113048.31857-12-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 11/15] scripts: link-barebox: kallsyms allow 3-pass generation
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.10 patch: 7e2b37c971a2a20ec8a311a195a626c16c774031

    kbuild: kallsyms allow 3-pass generation if symbols size has changed

    kallsyms generation is not foolproof, due to some linkers adding
    symbols (e.g., branch trampolines) when a binary size changes.
    Have it attempt a 3rd pass automatically if the kallsyms size changes
    in the 2nd pass.

    This allows powerpc64 allyesconfig to build without adding another
    pass when it's not required.

    This can be solved other ways by directing the linker not to add labels
    on branch stubs, or to move kallsyms near the end of the image. The
    former is undesirable for debugging/tracing, and the latter is a more
    significant change that requires more testing and review.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Michal Marek <mmarek@suse.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/link-barebox.sh | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index a783dd6d5532..34fa1944002c 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -200,7 +200,14 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
 	# 2a) We may use an extra pass as this has been necessary to
 	#     woraround some alignment related bugs.
 	#     KALLSYMS_EXTRA_PASS=1 is used to trigger this.
-	# 3)  The correct ${kallsymso} is linked into the final barebox.
+	# 3)  That link may have expanded the kernel image enough that
+	#     more linker branch stubs / trampolines had to be added, which
+	#     introduces new names, which further expands kallsyms. Do another
+	#     pass if that is the case. In theory it's possible this results
+	#     in even more stubs, but unlikely.
+	#     KALLSYMS_EXTRA_PASS=1 may also used to debug or work around
+	#     other bugs.
+	# 4)  The correct ${kallsymso} is linked into the final vmlinux.
 	#
 	# a)  Verify that the System.map from barebox matches the map from
 	#     ${kallsymso}.
@@ -216,8 +223,11 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
 	barebox_link .tmp_kallsyms1.o .tmp_barebox2
 	kallsyms .tmp_barebox2 .tmp_kallsyms2.o
 
-	# step 2a
-	if [ -n "${CONFIG_KALLSYMS_EXTRA_PASS}" ]; then
+	# step 3
+	size1=$(stat -c "%s" .tmp_kallsyms1.o)
+	size2=$(stat -c "%s" .tmp_kallsyms2.o)
+
+	if [ $size1 -ne $size2 ] || [ -n "${CONFIG_KALLSYMS_EXTRA_PASS}" ]; then
 		kallsymso=.tmp_kallsyms3.o
 		kallsyms_barebox=.tmp_barebox3
 
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
