Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCk7-0003n9-Ml
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:07 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:39 +0100
Message-Id: <20191028213943.32071-3-ahmad@a3f.at>
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
References: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: [PATCH v2 2/6] ARM: stm32mp: dk2: add barebox SD-Card update handler
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Now with the SD/MMC controller supported, lets add a bbu handler, so we
can use it to update the second stage boot loader partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c  | 13 +++++++++++++
 arch/arm/dts/stm32mp157a-dk1.dtsi        |  4 ++++
 arch/arm/mach-stm32mp/include/mach/bbu.h | 14 ++++++++++++++
 3 files changed, 31 insertions(+)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 9cb861af85d8..f15ae0b4aff0 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <mach/stm32.h>
+#include <mach/bbu.h>
 
 static int dk2_mem_init(void)
 {
@@ -15,3 +16,15 @@ static int dk2_mem_init(void)
 	return 0;
 }
 mem_initcall(dk2_mem_init);
+
+static int dk2_postcore_init(void)
+{
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
+					 BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+postcore_initcall(dk2_postcore_init);
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index 7f3b6fcf55ae..05a39d32e2fa 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -8,6 +8,10 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	aliases {
+		mmc0 = &sdmmc1;
+	};
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/arch/arm/mach-stm32mp/include/mach/bbu.h
new file mode 100644
index 000000000000..8b9504400e9e
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/bbu.h
@@ -0,0 +1,14 @@
+#ifndef MACH_STM32MP_BBU_H_
+#define MACH_STM32MP_BBU_H_
+
+#include <bbu.h>
+
+static inline int stm32mp_bbu_mmc_register_handler(const char *name,
+						   const char *devicefile,
+						   unsigned long flags)
+{
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_stm32_image_v1);
+}
+
+#endif /* MACH_STM32MP_BBU_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
