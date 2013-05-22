Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3oY-0001PV-1m
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:50:26 +0000
Received: from mailout-de.gmx.net ([10.1.76.35]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0Lu28G-1UVkeT2bDy-011Vgn for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:50:03 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:49:49 +0200
Message-Id: <1369208989-14369-4-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
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
Subject: [RFC, PATCH v2 3/3] MIPS: ar231x: add netgear-wg102
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                      |  1 +
 arch/mips/boards/netgear-wg102/Kconfig  |  6 ++++++
 arch/mips/boards/netgear-wg102/Makefile |  1 +
 arch/mips/boards/netgear-wg102/ram.c    | 13 +++++++++++++
 arch/mips/mach-ar231x/Kconfig           | 10 ++++++++++
 5 files changed, 31 insertions(+)
 create mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 create mode 100644 arch/mips/boards/netgear-wg102/Makefile
 create mode 100644 arch/mips/boards/netgear-wg102/ram.c

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 135259f..dc0fe56 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -73,6 +73,7 @@ machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
 machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
+board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
diff --git a/arch/mips/boards/netgear-wg102/Kconfig b/arch/mips/boards/netgear-wg102/Kconfig
new file mode 100644
index 0000000..ceca6de
--- /dev/null
+++ b/arch/mips/boards/netgear-wg102/Kconfig
@@ -0,0 +1,6 @@
+if BOARD_NETGEAR_WG102
+
+config BOARDINFO
+	default "Netgear WG102"
+
+endif
diff --git a/arch/mips/boards/netgear-wg102/Makefile b/arch/mips/boards/netgear-wg102/Makefile
new file mode 100644
index 0000000..0899b66
--- /dev/null
+++ b/arch/mips/boards/netgear-wg102/Makefile
@@ -0,0 +1 @@
+obj-y += ram.o
diff --git a/arch/mips/boards/netgear-wg102/ram.c b/arch/mips/boards/netgear-wg102/ram.c
new file mode 100644
index 0000000..43beb52
--- /dev/null
+++ b/arch/mips/boards/netgear-wg102/ram.c
@@ -0,0 +1,13 @@
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/memory.h>
+
+static int mem_init(void)
+{
+	/* FIXME: theoretically we can calculate ram size */
+	mips_add_ram0(SZ_16M);
+
+	return 0;
+}
+mem_initcall(mem_init);
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
index 7694fe2..1c6a12f 100644
--- a/arch/mips/mach-ar231x/Kconfig
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -4,4 +4,14 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
+choice
+	prompt "Board type"
+
+config BOARD_NETGEAR_WG102
+	bool "Netgear WG102"
+
+endchoice
+
+source arch/mips/boards/netgear-wg102/Kconfig
+
 endif
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
