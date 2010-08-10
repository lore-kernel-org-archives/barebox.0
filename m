Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OiiH9-0004mU-UJ
	for barebox@lists.infradead.org; Tue, 10 Aug 2010 06:25:28 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 10 Aug 2010 09:25:05 +0300
Message-Id: <2241db062357664544bbe6d88770b6696ed4c4b4.1281421396.git.baruch@tkos.co.il>
In-Reply-To: <82c0fbf5703ae752521a1bea229a616d4d924583.1281421396.git.baruch@tkos.co.il>
References: <82c0fbf5703ae752521a1bea229a616d4d924583.1281421396.git.baruch@tkos.co.il>
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
Subject: [PATCH 2/2] fec: add support for IIM stored mac address
To: barebox@lists.infradead.org

This patch adds support for i.MX25 only, because that's what I have. Extending
this to other i.MX chip should be trivial, given the right IIM_MAC_ADDR define.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    1 +
 drivers/net/fec_imx.c                       |   10 ++++++++++
 2 files changed, 11 insertions(+), 0 deletions(-)

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
index 40a7543..af93eec 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -235,6 +235,16 @@ static void fec_rbd_clean(int last, struct buffer_descriptor *pRbd)
 
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
