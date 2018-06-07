Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuXp-00088c-Ir
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:01:42 +0000
Received: by mail-pl0-x22f.google.com with SMTP id n10-v6so6110070plp.0
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:18 -0700
Message-Id: <20180607130108.5339-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 02/52] ARM: i.MX: compile arm32 specific errata only for
 CPU32
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/cpu_init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 6a6c4c521..5b93d12da 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -16,6 +16,7 @@
 #include <asm/errata.h>
 #include <linux/types.h>
 
+#ifdef CONFIG_CPU_32
 void imx5_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
@@ -50,3 +51,4 @@ void vf610_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 }
+#endif
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
