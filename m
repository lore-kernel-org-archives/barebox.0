Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv32h-0007r8-O9
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 17:46:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iv32e-0003Dd-Hx
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 18:46:48 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Jan 2020 18:46:48 +0100
Message-Id: <20200124174648.31650-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx6: properly check for IPU presence
To: barebox@lists.infradead.org

Since a73850bd76d0 (ARM: imx: disable IPU QoS setup for correct SoCs), which
fixed the condition to not execute the IPU QoS fixups on SoCs that don't have
a IPU, the fixups aren't applied on i.MX6Q/DP anymore, since those SoCs were
missing from the whitelist.

Add a function to make it a bit more clearer what we are checking here and add
the Q/DP SoCs.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 41e0066add09..e1c821456878 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -114,14 +114,23 @@ static void imx6_init_lowlevel(void)
 	}
 }
 
+static bool imx6_has_ipu(void)
+{
+	if (cpu_mx6_is_mx6qp() || cpu_mx6_is_mx6dp() ||
+	    cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d() ||
+	    cpu_mx6_is_mx6dl() || cpu_mx6_is_mx6s())
+		return true;
+
+	return false;
+}
+
 static void imx6_setup_ipu_qos(void)
 {
 	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
 	void __iomem *fast2 = (void *)MX6_FAST2_BASE_ADDR;
 	uint32_t val;
 
-	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
-	    !cpu_mx6_is_mx6dl() && !cpu_mx6_is_mx6s())
+	if (!imx6_has_ipu())
 		return;
 
 	val = readl(iomux + IOMUXC_GPR4);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
