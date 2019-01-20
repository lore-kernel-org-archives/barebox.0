Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp60.i.mail.ru ([217.69.128.40])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gl480-0007rK-NZ
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 03:50:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 06:50:22 +0300
Message-Id: <20190120035024.18282-1-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: qemu-virt64: Remove orphan Kconfig
To: barebox@lists.infradead.org

arch/arm/boards/qemu-virt64/Kconfig is not used by build system,
so it can be removed.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/qemu-virt64/Kconfig | 8 --------
 1 file changed, 8 deletions(-)
 delete mode 100644 arch/arm/boards/qemu-virt64/Kconfig

diff --git a/arch/arm/boards/qemu-virt64/Kconfig b/arch/arm/boards/qemu-virt64/Kconfig
deleted file mode 100644
index b7bee3a..0000000
--- a/arch/arm/boards/qemu-virt64/Kconfig
+++ /dev/null
@@ -1,8 +0,0 @@
-
-if MACH_QEMU
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x40000000
-
-endif
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
