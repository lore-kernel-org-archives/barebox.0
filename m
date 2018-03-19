Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gJ-B6
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:34 +0100
Message-Id: <20180319091146.4112-3-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] ARM: i.MX: compile arm32 specific errata only for CPU32
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/cpu_init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 6a6c4c5210..5b93d12da9 100644
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
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
