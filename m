Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxjtY-0005nY-FH
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 21:29:21 +0000
Received: by mail-la0-f44.google.com with SMTP id ty20so1847213lab.31
 for <barebox@lists.infradead.org>; Thu, 19 Jun 2014 14:28:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jun 2014 01:28:39 +0400
Message-Id: <1403213320-28750-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
References: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] ARM: versatile: switch to devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/versatile/versatilepb.c     | 10 ----------
 arch/arm/dts/versatile-pb.dts               | 10 ++++++++++
 arch/arm/mach-versatile/core.c              | 11 -----------
 arch/arm/mach-versatile/include/mach/init.h |  2 --
 4 files changed, 10 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 8f39dc9..fdd0820 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -32,7 +32,6 @@
 
 static int vpb_console_init(void)
 {
-	barebox_set_model("ARM Versatile/PB (ARM926EJ-S)");
 	barebox_set_hostname("versatilepb");
 
 	versatile_register_uart(0);
@@ -40,14 +39,6 @@ static int vpb_console_init(void)
 }
 console_initcall(vpb_console_init);
 
-static int vpb_mem_init(void)
-{
-	versatile_add_sdram(64 * 1024 *1024);
-
-	return 0;
-}
-mem_initcall(vpb_mem_init);
-
 static struct smc91c111_pdata net_pdata = {
 	.qemu_fixup = 1,
 };
@@ -55,7 +46,6 @@ static struct smc91c111_pdata net_pdata = {
 static int vpb_devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
-	versatile_register_i2c();
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
diff --git a/arch/arm/dts/versatile-pb.dts b/arch/arm/dts/versatile-pb.dts
new file mode 100644
index 0000000..8c80f8c
--- /dev/null
+++ b/arch/arm/dts/versatile-pb.dts
@@ -0,0 +1,10 @@
+#include <arm/versatile-ab.dts>
+
+/ {
+	model = "ARM Versatile PB";
+	compatible = "arm,versatile-pb";
+
+	memory {
+		reg = <0x0 0x04000000>;
+	};
+};
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 8aca2a1..84a85a4 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -40,11 +40,6 @@
 #include <mach/platform.h>
 #include <mach/init.h>
 
-void versatile_add_sdram(u32 size)
-{
-	arm_add_mem_device("ram0", 0x00000000, size);
-}
-
 struct clk {
 	unsigned long rate;
 };
@@ -183,12 +178,6 @@ void versatile_register_uart(unsigned id)
 	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
 
-void versatile_register_i2c(void)
-{
-	add_generic_device("versatile-i2c", DEVICE_ID_DYNAMIC, NULL,
-			VERSATILE_I2C_BASE, SZ_4K, IORESOURCE_MEM, NULL);
-}
-
 void __noreturn reset_cpu (unsigned long ignored)
 {
 	u32 val;
diff --git a/arch/arm/mach-versatile/include/mach/init.h b/arch/arm/mach-versatile/include/mach/init.h
index b40e4f9..acb0f66 100644
--- a/arch/arm/mach-versatile/include/mach/init.h
+++ b/arch/arm/mach-versatile/include/mach/init.h
@@ -2,8 +2,6 @@
 #ifndef __VERSATILE_INIT_H__
 #define __VERSATILE_INIT_H__
 
-void versatile_add_sdram(u32 size);
 void versatile_register_uart(unsigned id);
-void versatile_register_i2c(void);
 
 #endif
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
