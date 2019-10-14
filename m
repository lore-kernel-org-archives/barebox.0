Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0z-0006MH-NM
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 06:39:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 08:39:21 +0200
Message-Id: <20191014063922.17233-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191014063922.17233-1-a.fatoum@pengutronix.de>
References: <20191014063922.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: stm32mp: dk2: add barebox SD-Card update handler
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Now with the SD/MMC controller supported, lets add a bbu handler, so we
can use it to update the second stage boot loader partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c  | 14 ++++++++++++++
 arch/arm/mach-stm32mp/include/mach/bbu.h | 14 ++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 9cb861af85d8..23eb6728b15a 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <mach/stm32.h>
+#include <mach/bbu.h>
 
 static int dk2_mem_init(void)
 {
@@ -15,3 +16,16 @@ static int dk2_mem_init(void)
 	return 0;
 }
 mem_initcall(dk2_mem_init);
+
+static int dk2_postcore_init(void)
+{
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/disk0.ssbl",
+					 BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+
+postcore_initcall(dk2_postcore_init);
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
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
