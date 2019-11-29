Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahze-00052g-Qb
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-BE
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:15:02 +0100
Message-Id: <20191129151505.23946-37-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 36/39] ARM: mvebu: correct DTB rule for MARVELL_ARMADA_XP_DB
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 294a0bfa5525..9566e975551e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -33,7 +33,8 @@ lwl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 lwl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
 lwl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
-lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o armada-xp-db-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
 lwl-dtb-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
 lwl-dtb-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
 lwl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
