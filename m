Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OjTGV-00055D-AV
	for barebox@lists.infradead.org; Thu, 12 Aug 2010 08:35:59 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 12 Aug 2010 11:35:05 +0300
Message-Id: <ba83c1b01580c57b7ec4ac20722d09331c93515b.1281601710.git.baruch@tkos.co.il>
In-Reply-To: <20100810070909.GB10920@game.jcrosoft.org>
References: <20100810070909.GB10920@game.jcrosoft.org>
In-Reply-To: <5a5cd75e51961a57b99c0727faa8b3eaa619b943.1281601710.git.baruch@tkos.co.il>
References: <5a5cd75e51961a57b99c0727faa8b3eaa619b943.1281601710.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 2/2] fec: add support for IIM stored mac address
To: barebox@lists.infradead.org

This patch adds support for i.MX25 only, because that's what I have. Extending
this to other i.MX chip should be trivial, given the right IIM_MAC_ADDR define.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
Changes from v1:
	Add mach/generic.h include for the cpu_is_mx25 macro.

 arch/arm/mach-imx/include/mach/imx25-regs.h |    1 +
 drivers/net/fec_imx.c                       |   11 +++++++++++
 2 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 7c2b5f9..f3da7b5 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -142,6 +142,7 @@
 
 /* IIM fuse definitions */
 #define IIM_UID		0x820
+#define IIM_MAC_ADDR	0x868
 
 #endif /* __ASM_ARCH_MX25_REGS_H */
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 40a7543..c29119c 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -32,6 +32,7 @@
 #include <mach/imx-regs.h>
 #include <clock.h>
 #include <mach/clock.h>
+#include <mach/generic.h>
 #include <xfuncs.h>
 
 #include "fec_imx.h"
@@ -235,6 +236,16 @@ static void fec_rbd_clean(int last, struct buffer_descriptor *pRbd)
 
 static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
 {
+	int i;
+
+	if (cpu_is_mx25()) {
+		/* get MAC address from the IMM fusebox */
+		for (i = 0; i < 6; i++)
+			mac[i] = readb(IMX_IIM_BASE + IIM_MAC_ADDR + i*4);
+
+		return 0;
+	}
+
 	/* no eeprom */
 	return -1;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
