Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOonB-0004xJ-IB
 for barebox@lists.infradead.org; Tue, 12 Dec 2017 17:56:35 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 12 Dec 2017 18:55:53 +0100
Message-Id: <20171212175557.20067-2-linux@rempel-privat.de>
In-Reply-To: <20171212175557.20067-1-linux@rempel-privat.de>
References: <20171212175557.20067-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 1/5] MIPS: provide HAS_NO_BOARD_HL_CODE
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

some boards have PBL code, but no board specific
high level code.
Instead of creating dummy.c files, better provide
config to avoid compiling of board code.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Kconfig  | 3 +++
 arch/mips/Makefile | 6 +++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 06a516d70..c2c555dc3 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -22,6 +22,9 @@ config GENERIC_LINKER_SCRIPT
 	bool
 	default y
 
+config HAS_NO_BOARD_HL_CODE
+	bool
+
 menu "Machine selection"
 
 config BUILTIN_DTB
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index dd5ceea20..ecc91111b 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -124,7 +124,11 @@ else
 MACH  :=
 endif
 
-common-y += $(BOARD) $(MACH)
+ifndef CONFIG_HAS_NO_BOARD_HL_CODE
+common-y += $(BOARD)
+endif
+
+common-y += $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
