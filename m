Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kO-PO
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:18 +0200
Message-Id: <1437036628-29439-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: i.MX6: Add i.MX6 entry function
To: Barebox List <barebox@lists.infradead.org>

Add a i.MX6 specific entry function which automatically detects the SDRAM
size. The prototype has already been present, but it was never implemented.
Rename it to imx6q_ since the other variants need other functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c              | 11 +++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h |  2 +-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a8ef854..2f9f5e9 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -576,3 +576,14 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 
 	barebox_arm_entry(base, size, boarddata);
 }
+
+void __noreturn imx6q_barebox_entry(void *boarddata)
+{
+	u64 size_cs0 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 0);
+	u64 size_cs1 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 1);
+	u64 total    = size_cs0 + size_cs1;
+
+	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
+
+	barebox_arm_entry(0x10000000, size, boarddata);
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 468a928..cf8d89d 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -135,7 +135,7 @@ void __noreturn imx31_barebox_entry(void *boarddata);
 void __noreturn imx35_barebox_entry(void *boarddata);
 void __noreturn imx51_barebox_entry(void *boarddata);
 void __noreturn imx53_barebox_entry(void *boarddata);
-void __noreturn imx6_barebox_entry(void *boarddata);
+void __noreturn imx6q_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
