Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qL-0000MM-He
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:35 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EC01CDC37C5
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:31 +0100
Message-Id: <1325344898-7076-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 05/12] at91: add sram memory devices
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c       |    2 ++
 arch/arm/mach-at91/at91sam9260_devices.c      |   12 ++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c      |    7 +++++++
 arch/arm/mach-at91/at91sam9263_devices.c      |    4 ++++
 arch/arm/mach-at91/at91sam9g45_devices.c      |    2 ++
 arch/arm/mach-at91/include/mach/at91sam9260.h |   10 ++++++++++
 arch/arm/mach-at91/include/mach/at91sam9261.h |    3 +++
 7 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 8c19846..7032789 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -23,6 +23,8 @@
 void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	add_mem_device("sram0", AT91RM9200_SRAM_BASE, AT91RM9200_SRAM_SIZE,
+			IORESOURCE_MEM_WRITEABLE);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 945530f..25a68ca 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -18,12 +18,24 @@
 #include <mach/at91sam9260_matrix.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#include <mach/cpu.h>
 
 #include "generic.h"
 
 void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	if (cpu_is_at91sam9g20()) {
+		add_mem_device("sram0", AT91SAM9G20_SRAM0_BASE,
+			AT91SAM9G20_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
+		add_mem_device("sram1", AT91SAM9G20_SRAM1_BASE,
+			AT91SAM9G20_SRAM1_SIZE, IORESOURCE_MEM_WRITEABLE);
+	} else {
+		add_mem_device("sram0", AT91SAM9260_SRAM0_BASE,
+			AT91SAM9260_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
+		add_mem_device("sram1", AT91SAM9260_SRAM1_BASE,
+			AT91SAM9260_SRAM1_SIZE, IORESOURCE_MEM_WRITEABLE);
+	}
 }
 
 #if defined(CONFIG_USB_OHCI)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 4fd3c79..ff7a938 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -18,12 +18,19 @@
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#include <mach/cpu.h>
 
 #include "generic.h"
 
 void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	if (cpu_is_at91sam9g10())
+		add_mem_device("sram0", AT91SAM9G10_SRAM_BASE,
+			AT91SAM9G10_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
+	else
+		add_mem_device("sram0", AT91SAM9261_SRAM_BASE,
+			AT91SAM9261_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index bbadc5d..d447e24 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -24,6 +24,10 @@
 void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	add_mem_device("sram0", AT91SAM9263_SRAM0_BASE,
+			AT91SAM9263_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
+	add_mem_device("sram1", AT91SAM9263_SRAM1_BASE,
+			AT91SAM9263_SRAM1_SIZE, IORESOURCE_MEM_WRITEABLE);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 1d47dcf..5f1a45a 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -24,6 +24,8 @@
 void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_6, size);
+	add_mem_device("sram0", AT91SAM9G45_SRAM_BASE,
+			AT91SAM9G45_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 7d166b7..771e756 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -126,6 +126,16 @@
 #define AT91SAM9XE_FLASH_BASE	0x00200000	/* Internal FLASH base address */
 #define AT91SAM9XE_SRAM_BASE	0x00300000	/* Internal SRAM base address */
 
+#define AT91SAM9G20_ROM_BASE	0x00100000	/* Internal ROM base address */
+#define AT91SAM9G20_ROM_SIZE	SZ_32K		/* Internal ROM size (32Kb) */
+
+#define AT91SAM9G20_SRAM0_BASE	0x00200000	/* Internal SRAM 0 base address */
+#define AT91SAM9G20_SRAM0_SIZE	SZ_16K		/* Internal SRAM 0 size (16Kb) */
+#define AT91SAM9G20_SRAM1_BASE	0x00300000	/* Internal SRAM 1 base address */
+#define AT91SAM9G20_SRAM1_SIZE	SZ_16K		/* Internal SRAM 1 size (16Kb) */
+
+#define AT91SAM9G20_UHP_BASE	0x00500000	/* USB Host controller */
+
 /*
  * Cpu Name
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index b303e07..c863887 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -95,6 +95,9 @@
 #define AT91SAM9261_SRAM_BASE	0x00300000	/* Internal SRAM base address */
 #define AT91SAM9261_SRAM_SIZE	0x00028000	/* Internal SRAM size (160Kb) */
 
+#define AT91SAM9G10_SRAM_BASE	AT91SAM9261_SRAM_BASE	/* Internal SRAM base address */
+#define AT91SAM9G10_SRAM_SIZE	0x00004000	/* Internal SRAM size (16Kb) */
+
 #define AT91SAM9261_ROM_BASE	0x00400000	/* Internal ROM base address */
 #define AT91SAM9261_ROM_SIZE	SZ_32K		/* Internal ROM size (32Kb) */
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
