Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAZy-00012o-Vg
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:10 +0000
Received: by mail-wi0-f178.google.com with SMTP id n15so4817670wiw.17
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:39 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:30 +0200
Message-Id: <1403554235-12674-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/7] ARM: mvebu: set default TEXT_BASE by SoC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

All current boards use the same TEXT_BASE, therefore set the default
TEXT_BASE by SoC instead of by board.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Kconfig | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 70c49ecc6a0a..80e8687916df 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -2,12 +2,10 @@ if ARCH_MVEBU
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
-	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
-	default 0x2000000 if MACH_GLOBALSCALE_GURUPLUG
-	default 0x2000000 if MACH_USI_TOPKICK
-	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
-	default 0x2000000 if MACH_SOLIDRUN_CUBOX
+	default 0x2000000 if ARCH_ARMADA_370
+	default 0x2000000 if ARCH_ARMADA_XP
+	default 0x2000000 if ARCH_DOVE
+	default 0x2000000 if ARCH_KIRKWOOD
 
 choice
 	prompt "Marvell EBU Processor"
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
