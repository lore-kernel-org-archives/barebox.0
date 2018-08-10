Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo4sP-0000aG-Qn
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 10:42:39 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 10 Aug 2018 12:42:19 +0200
Message-Id: <20180810104220.4391-1-bst@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: imx: add fusemap entries for i.MX6SDL silicon
 revision >=1.4
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/ocotp-fusemap.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
index 44b58ca6e8..aec50dbf8a 100644
--- a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
@@ -23,7 +23,11 @@
 #define OCOTP_BOOT_CFG2			(OCOTP_WORD(0x450) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
 #define OCOTP_BOOT_CFG3			(OCOTP_WORD(0x450) | OCOTP_BIT(16) | OCOTP_WIDTH(8))
 #define OCOTP_BOOT_CFG4			(OCOTP_WORD(0x450) | OCOTP_BIT(24) | OCOTP_WIDTH(8))
+/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
+#define OCOTP_SDP_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
 #define OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x460) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
+/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
+#define OCOTP_SDP_READ_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(2) | OCOTP_WIDTH(1))
 #define OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x460) | OCOTP_BIT(3) | OCOTP_WIDTH(1))
 #define OCOTP_BT_FUSE_SEL		(OCOTP_WORD(0x460) | OCOTP_BIT(4) | OCOTP_WIDTH(1))
 #define OCOTP_SJC_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
@@ -31,6 +35,8 @@
 #define OCOTP_JTAG_SMODE		(OCOTP_WORD(0x460) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
 #define OCOTP_KTE			(OCOTP_WORD(0x460) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
 #define OCOTP_JTAG_HEO			(OCOTP_WORD(0x460) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
+#define OCOTP_FORCE_INTERNAL_BOOT	(OCOTP_WORD(0x460) | OCOTP_BIT(31) | OCOTP_WIDTH(1))
 #define OCOTP_NAND_READ_CMD_CODE1	(OCOTP_WORD(0x470) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
 #define OCOTP_NAND_READ_CMD_CODE2	(OCOTP_WORD(0x470) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
 #define OCOTP_TEMP_SENSE		(OCOTP_WORD(0x4e0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
