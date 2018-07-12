Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdfdg-0002HG-9S
 for barebox@lists.infradead.org; Thu, 12 Jul 2018 17:44:25 +0000
Received: by mail-vk0-x242.google.com with SMTP id d74-v6so16797492vke.10
 for <barebox@lists.infradead.org>; Thu, 12 Jul 2018 10:44:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 12 Jul 2018 14:45:03 -0300
Message-Id: <1531417503-11837-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH v2] mx5: Implement Spectre v2 workaround for Cortex-A8
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Since 4.18-rc1 kernel the following warning is seen on i.MX51 and
i.MX53:
    
CPU0: Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable
    
Implement the suggested workaround by setting the IBE bit in the
auxiliary control register, which allows the kernel to flush the
BTB properly.

Based on commit 7b37a9c732bf ("ARM: Introduce ability to enable ACR::IBE
on Cortex-A8 for CVE-2017-5715") from U-Boot.
    
With this patch applied the kernel now reports:
    
CPU0: Spectre v2: using BPIALL workaround

Tested on a imx51 babbage.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Rename the function name (Lucas)
- Improve the commit log (Lucas)

 arch/arm/include/asm/errata.h | 9 +++++++++
 arch/arm/mach-imx/cpu_init.c  | 3 ++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
index 98137b5..c0e0f5a 100644
--- a/arch/arm/include/asm/errata.h
+++ b/arch/arm/include/asm/errata.h
@@ -86,3 +86,12 @@ static inline void enable_arm_errata_845369_war(void)
 		"mcr	p15, 0, r0, c15, c0, 1\n"
 	);
 }
+
+static inline void enable_arm_errata_cortexa8_enable_ibe(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c1, c0, 1\n"
+		"orr	r0, r0, #1 << 6\n"
+		"mcr	p15, 0, r0, c1, c0, 1\n"
+	);
+}
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 5b93d12..e1d88c7 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -22,6 +22,7 @@ void imx5_cpu_lowlevel_init(void)
 	arm_cpu_lowlevel_init();
 
 	enable_arm_errata_709718_war();
+	enable_arm_errata_cortexa8_enable_ibe();
 }
 
 void imx6_cpu_lowlevel_init(void)
@@ -51,4 +52,4 @@ void vf610_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 }
-#endif
\ No newline at end of file
+#endif
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
