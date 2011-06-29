Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QblON-0001z8-7G
	for barebox@lists.infradead.org; Wed, 29 Jun 2011 03:24:44 +0000
Received: by bwf12 with SMTP id 12so972798bwf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 20:24:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 29 Jun 2011 07:24:18 +0400
Message-Id: <1309317858-11861-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/4] MISP: add documentation template.
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/architecture.dox   |    1 +
 arch/mips/mach-mips.dox |    9 +++++++++
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/mach-mips.dox

diff --git a/arch/architecture.dox b/arch/architecture.dox
index 67e2c38..2d2cf05 100644
--- a/arch/architecture.dox
+++ b/arch/architecture.dox
@@ -86,6 +86,7 @@ TODO
 
 @li @subpage dev_arm_mach
 @li @subpage dev_bf_mach
+@li @subpage dev_mips_mach
 @li @subpage dev_ppc_mach
 @li @subpage dev_x86_mach
 
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
new file mode 100644
index 0000000..023a829
--- /dev/null
+++ b/arch/mips/mach-mips.dox
@@ -0,0 +1,9 @@
+/* This document is intended to provide the developer with information
+ * how to integrate a new CPU (MACH) into this part of the barebox tree
+ */
+
+/** @page dev_arm_mach MIPS based CPU (MACH) into the tree
+
+FIXME
+
+*/
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
