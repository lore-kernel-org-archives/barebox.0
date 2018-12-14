Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHr-0006la-Tu
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:26 +0100
Message-Id: <20181214141730.26181-20-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/23] ARM: omap: Add AM3517 specific mux configuration
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap3-mux.h | 49 ++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-mux.h b/arch/arm/mach-omap/include/mach/omap3-mux.h
index d6fb9c393c..a679e25567 100644
--- a/arch/arm/mach-omap/include/mach/omap3-mux.h
+++ b/arch/arm/mach-omap/include/mach/omap3-mux.h
@@ -413,4 +413,51 @@
 #define CONTROL_PADCONF_SDRC_CKE0	0x0262
 #define CONTROL_PADCONF_SDRC_CKE1	0x0264
 
-#endif /* _ASM_ARCH_OMAP3_MUX_H_ */
+/* AM3517 specific mux configuration */
+#define CONTROL_PADCONF_SYS_NRESWARM	0x0A08
+/* CCDC */
+#define CONTROL_PADCONF_CCDC_PCLK	0x01E4
+#define CONTROL_PADCONF_CCDC_FIELD	0x01E6
+#define CONTROL_PADCONF_CCDC_HD		0x01E8
+#define CONTROL_PADCONF_CCDC_VD		0x01EA
+#define CONTROL_PADCONF_CCDC_WEN	0x01EC
+#define CONTROL_PADCONF_CCDC_DATA0	0x01EE
+#define CONTROL_PADCONF_CCDC_DATA1	0x01F0
+#define CONTROL_PADCONF_CCDC_DATA2	0x01F2
+#define CONTROL_PADCONF_CCDC_DATA3	0x01F4
+#define CONTROL_PADCONF_CCDC_DATA4	0x01F6
+#define CONTROL_PADCONF_CCDC_DATA5	0x01F8
+#define CONTROL_PADCONF_CCDC_DATA6	0x01FA
+#define CONTROL_PADCONF_CCDC_DATA7	0x01FC
+/* RMII */
+#define CONTROL_PADCONF_RMII_MDIO_DATA	0x01FE
+#define CONTROL_PADCONF_RMII_MDIO_CLK	0x0200
+#define CONTROL_PADCONF_RMII_RXD0	0x0202
+#define CONTROL_PADCONF_RMII_RXD1	0x0204
+#define CONTROL_PADCONF_RMII_CRS_DV	0x0206
+#define CONTROL_PADCONF_RMII_RXER	0x0208
+#define CONTROL_PADCONF_RMII_TXD0	0x020A
+#define CONTROL_PADCONF_RMII_TXD1	0x020C
+#define CONTROL_PADCONF_RMII_TXEN	0x020E
+#define CONTROL_PADCONF_RMII_50MHZ_CLK	0x0210
+#define CONTROL_PADCONF_USB0_DRVBUS	0x0212
+/* CAN */
+#define CONTROL_PADCONF_HECC1_TXD	0x0214
+#define CONTROL_PADCONF_HECC1_RXD	0x0216
+
+#define CONTROL_PADCONF_SYS_BOOT7	0x0218
+#define CONTROL_PADCONF_SDRC_DQS0N	0x021A
+#define CONTROL_PADCONF_SDRC_DQS1N	0x021C
+#define CONTROL_PADCONF_SDRC_DQS2N	0x021E
+#define CONTROL_PADCONF_SDRC_DQS3N	0x0220
+#define CONTROL_PADCONF_STRBEN_DLY0	0x0222
+#define CONTROL_PADCONF_STRBEN_DLY1	0x0224
+#define CONTROL_PADCONF_SYS_BOOT8	0x0226
+
+/* AM/DM37xx specific */
+#define CONTROL_PADCONF_GPIO127		0x0A54
+#define CONTROL_PADCONF_GPIO126		0x0A56
+#define CONTROL_PADCONF_GPIO128		0x0A58
+#define CONTROL_PADCONF_GPIO129		0x0A5A
+
+#endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
