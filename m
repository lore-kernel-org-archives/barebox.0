Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoXU5-0005yh-Bn
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:11:26 +0000
Received: by fxd20 with SMTP id 20so925324fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 02:11:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 13:10:54 +0400
Message-Id: <1312362661-31340-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
References: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v9 05/12] MIPS: add documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/architecture.dox   |    1 +
 arch/mips/mach-mips.dox |   54 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+), 0 deletions(-)
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
index 0000000..018fc44
--- /dev/null
+++ b/arch/mips/mach-mips.dox
@@ -0,0 +1,54 @@
+/* This document is intended to provide the developer with information
+ * how to integrate a new CPU (MACH) into this part of the barebox tree
+ */
+
+/** @page dev_mips_mach MIPS based CPU (MACH) into the tree
+
+@section mach_mips_reset What's happens when the reset signal is gone
+
+Barebox normally must be linked to RAM region, cached region KSEG0 is preferred.
+This make possible to run fast (because cache used) and skip MMU support.
+
+After reset MIPS CPU starting to fetch instructions from 0xBFC00000.
+
+@note Code running immediately after reset runs at an address it is not linked
+      to: "runtime address != link address". You should only use branches and
+      do not refer to fixed data. This implies the use of assembler code only.
+      After MIPS CPU reset cache and MMU are in random state. They are unusable.
+
+barebox MIPS initialisation sequence:
+
+ * set the CP0 STATUS register to some known and sensible state.
+Now you can load and store reliably in uncached space.
+
+ * call a function \<mach_init_lowlevel\> (if not disabled).
+do some special things required only on specific CPU
+ (e. g. init RAM controller, disable watchdog)
+
+ * call a function \<board_init_lowlevel\> (if not disable).
+do some special things required only on specific board
+ (e. g. setup GPIO to required state).
+
+   ** It is desirable to have some debug code to make some contact
+ with the outside world from assembler code
+(e.g. debug_ll-like functions to write to rs232 console).
+
+ * check integrity of barebox RAM execute location;
+ * copy barebox to RAM execute location;
+
+ * configure cache;
+
+ * setup stack;
+
+   ** after this point you can call a standard C routine.
+
+ * setup exception vectors in RAM;
+ * setup CP0 STATUS to switch exception vector address to RAM;
+
+ * call start_barebox()
+
+Further reading:
+ * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
+ISBN-13: 978-0120884216
+
+*/
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
