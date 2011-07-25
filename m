Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlJvw-000589-0Q
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 12:06:57 +0000
Received: by fxg17 with SMTP id 17so7107733fxg.16
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 05:06:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 25 Jul 2011 16:06:35 +0400
Message-Id: <1311595600-20091-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311595600-20091-1-git-send-email-antonynpavlov@gmail.com>
References: <1311595600-20091-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v8 08/12] MIPS: add qemu-malta documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                   |    5 +++++
 arch/mips/boards/qemu-malta/qemu-malta.dox |   15 +++++++++++++++
 arch/mips/mach-malta/mach-malta.dox        |    7 +++++++
 arch/mips/mach-mips.dox                    |    3 +++
 4 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/boards/qemu-malta/qemu-malta.dox
 create mode 100644 arch/mips/mach-malta/mach-malta.dox

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 8087f01..17771c6 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -44,6 +44,11 @@ x86 type:
 
 @li @subpage generic_pc
 
+
+MIPS type:
+
+@li @subpage qemu_malta
+
 */
 
 /* TODO
diff --git a/arch/mips/boards/qemu-malta/qemu-malta.dox b/arch/mips/boards/qemu-malta/qemu-malta.dox
new file mode 100644
index 0000000..2e03636
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/qemu-malta.dox
@@ -0,0 +1,15 @@
+/** @page qemu_malta QEmu malta emulated board
+
+Specific to this emulated board is, it does not require any setup code to bring the SDRAM and RS232 up.
+
+Emulator run string:
+@verbatim
+qemu-system-mips -nodefaults -M malta -m 256 -nographic -serial stdio -monitor null -bios barebox.bin
+@endverbatim
+
+Links:
+@li http://www.mips.com/products/development-kits/malta/
+@li http://www.linux-mips.org/wiki/Mips_Malta
+@li http://www.qemu.org/
+
+*/
diff --git a/arch/mips/mach-malta/mach-malta.dox b/arch/mips/mach-malta/mach-malta.dox
new file mode 100644
index 0000000..85351e1
--- /dev/null
+++ b/arch/mips/mach-malta/mach-malta.dox
@@ -0,0 +1,7 @@
+/** @page dev_malta_mach MIPS Malta in barebox
+
+@section malta_boards MIPS Malta boards
+
+@li @subpage qemu_malta
+
+*/
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
index 018fc44..50dbbd2 100644
--- a/arch/mips/mach-mips.dox
+++ b/arch/mips/mach-mips.dox
@@ -51,4 +51,7 @@ Further reading:
  * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
 ISBN-13: 978-0120884216
 
+@subsection mach_mips_malta_info Malta boards
+
+@li @subpage dev_malta_mach
 */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
