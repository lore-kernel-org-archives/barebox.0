Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnF-0007wI-7T
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:50 +0100
Message-Id: <20200217124623.14520-10-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/42] ARM: i.MX8M: Use imx8mq.c for other i.MX8M as well
To: Barebox List <barebox@lists.infradead.org>

Most of the code in imx8mq.c can be reused for i.MX8MM, so rename it
and compile depending on CONFIG_ARCH_IMX8M.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile              | 2 +-
 arch/arm/mach-imx/{imx8mq.c => imx8m.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/mach-imx/{imx8mq.c => imx8m.c} (100%)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index fae81e109b..862dc78ff2 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -15,7 +15,7 @@ CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
-obj-$(CONFIG_ARCH_IMX8MQ) += imx8mq.o
+obj-$(CONFIG_ARCH_IMX8M) += imx8m.o
 lwl-$(CONFIG_ARCH_IMX8MQ) += imx8-ddrc.o atf.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8m.c
similarity index 100%
rename from arch/arm/mach-imx/imx8mq.c
rename to arch/arm/mach-imx/imx8m.c
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
