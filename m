Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wpx67-0001Xm-Ms
 for barebox@lists.infradead.org; Thu, 29 May 2014 09:58:08 +0000
Received: by mail-wi0-f178.google.com with SMTP id cc10so293000wib.17
 for <barebox@lists.infradead.org>; Thu, 29 May 2014 02:57:45 -0700 (PDT)
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Thu, 29 May 2014 11:55:33 +0200
Message-Id: <1401357333-6426-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH] sama5d3x: fix AT91_SMC_CS offset stride
To: barebox@lists.infradead.org

Acked-by: Bo Shen <voice.shen@atmel.com>
---
 arch/arm/mach-at91/sam9_smc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index a137da4..65c4558 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -16,7 +16,11 @@
 
 #include <mach/at91sam9_smc.h>
 
+#ifdef CONFIG_ARCH_SAMA5D3
+#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x14))
+#else
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
+#endif
 
 static void __iomem *smc_base_addr[2];
 
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
