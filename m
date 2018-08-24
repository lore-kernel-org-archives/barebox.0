Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Pl-0006GW-Lq
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 03:05:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id u24-v6so3805886pfn.13
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 20:05:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 20:05:11 -0700
Message-Id: <20180824030511.23021-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180824030511.23021-1-andrew.smirnov@gmail.com>
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ARM: start: Place malloc pool within 32-bit address space
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some 64-bit SoC have IP cores whose DMA capability is limited to
32-bits only. To handles such cases introduced DMA_32_BIT_ONLY as well
as add the code to make sure that malloc pool (which will be used for
DMA buffers) is accessible using 32-bit address.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/Kconfig |  3 +++
 arch/arm/cpu/start.c | 23 +++++++++++++++++++++++
 drivers/mci/Kconfig  |  1 +
 drivers/net/Kconfig  |  1 +
 4 files changed, 28 insertions(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 2359c56b3..d9f68d9d0 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -3,6 +3,9 @@ comment "Processor Type"
 config PHYS_ADDR_T_64BIT
 	bool
 
+config DMA_32_BIT_ONLY
+	bool
+
 config CPU_32
 	bool
 	select HAS_MODULES
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 898f7ae19..3fc322d52 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -203,6 +203,29 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		}
 	}
 
+	if (IS_ENABLED(CONFIG_DMA_32_BIT_ONLY) &&
+	    /* If membase is past 4GiB there's nothing we can do */
+	    !WARN_ON(membase > U32_MAX)) {
+		/*
+		 * Using SZ_4G against unsigned long will produce
+		 * warning when compiling for 32-bit machines, so we
+		 * defined the constant below so we can compare
+		 * against U32_MAX instead.
+		 */
+		const unsigned long __malloc_end = malloc_end - 1;
+
+		if (__malloc_end > U32_MAX) {
+			/*
+			 * Some ARMv8 SoCs use IP blocks that are
+			 * only do DMA transfers in first 4GiB of
+			 * address space. To avoid allocating bad
+			 * DMA buffers we move our malloc pool to
+			 * reside within that region.
+			 */
+			malloc_end = U32_MAX + 1;
+		}
+	}
+
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 954f957bc..0687841a7 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -83,6 +83,7 @@ config MCI_IMX
 config MCI_IMX_ESDHC
 	bool "i.MX esdhc"
 	depends on ARCH_IMX
+	select DMA_32_BIT_ONLY if PHYS_ADDR_T_64BIT
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX25/35/51 based system.
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index b633a3ac4..a1679d8f6 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -135,6 +135,7 @@ config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
 	depends on ARCH_HAS_FEC_IMX
 	select PHYLIB
+	select DMA_32_BIT_ONLY if PHYS_ADDR_T_64BIT
 
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
