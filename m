Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5aiu-0007CN-4c
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:42:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:41 +0400
Message-Id: <1360755704-24105-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 6/9] ARM: clep7212: Fix NULL pointer exception if MMU is
 enabled
To: barebox@lists.infradead.org

NOR-flash is placed at address 0x0, so if MMU is turned on, initialization
will fails. This patch fix this problem.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/clep7212.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index a32337f..b96e480 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -14,6 +14,7 @@
 #include <io.h>
 #include <sizes.h>
 #include <asm/armlinux.h>
+#include <asm/mmu.h>
 #include <generated/mach-types.h>
 
 #include <mach/clps711x.h>
@@ -32,6 +33,7 @@ mem_initcall(clps711x_mem_init);
 static int clps711x_devices_init(void)
 {
 	u32 serial_h = 0, serial_l = readl(UNIQID);
+	void *cfi_io;
 
 	/* Setup Chipselects */
 	clps711x_setup_memcfg(0, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_16);
@@ -40,7 +42,9 @@ static int clps711x_devices_init(void)
 			      MEMCFG_CLKENB);
 	clps711x_setup_memcfg(3, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_32);
 
-	add_cfi_flash_device(0, CS0_BASE, SZ_32M, 0);
+	cfi_io = map_io_sections(CS0_BASE, (void *)0x90000000, SZ_32M);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_io, SZ_32M,
+			     IORESOURCE_MEM);
 
 	devfs_add_partition("nor0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED,
 			    "self0");
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
