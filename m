Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OkdRJ-0000Kr-Os
	for barebox@lists.infradead.org; Sun, 15 Aug 2010 13:39:54 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 15 Aug 2010 16:39:28 +0300
Message-Id: <1da6b4f3c4cf5edd1634d6ea7e0516b981fb7613.1281877781.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281877781.git.baruch@tkos.co.il>
References: <cover.1281877781.git.baruch@tkos.co.il>
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
Subject: [PATCH 5/5] fec: add support for IIM stored mac address
To: barebox@lists.infradead.org

This patch adds support for i.MX25 only, because that's what I have. Extending
this to other i.MX chip should be trivial, given the right IIM_MAC_ADDR define.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    1 +
 drivers/net/fec_imx.c                       |   11 +++++++++++
 2 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index f8908f2..ddd3e04 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -142,6 +142,7 @@
 
 /* IIM fuse definitions */
 #define IIM_UID		0x820
+#define IIM_MAC_ADDR	0x868
 
 #define IIM_BANK_SIZE	32	/* excluding alignment padding for each row */
 #define IIM_BANK0_BASE	(IMX_IIM_BASE + 0x800)
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
