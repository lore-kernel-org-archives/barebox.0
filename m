Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16T-0006lF-8p
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:26 +0100
Message-Id: <20191119105036.12300-12-s.hauer@pengutronix.de>
In-Reply-To: <20191119105036.12300-1-s.hauer@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/21] mci: sdhci: remove 32bit register defines
To: Barebox List <barebox@lists.infradead.org>

The 32bit register defines are no longer used. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index bd98c96060..c1e4f06606 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -82,18 +82,6 @@
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
-#define COMMAND_CMD(x)		((x & 0x3f) << 24)
-#define COMMAND_CMDTYP_NORMAL	0x0
-#define COMMAND_CMDTYP_SUSPEND	0x00400000
-#define COMMAND_CMDTYP_RESUME	0x00800000
-#define COMMAND_CMDTYP_ABORT	0x00c00000
-#define COMMAND_DPSEL		0x00200000
-#define COMMAND_CICEN		0x00100000
-#define COMMAND_CCCEN		0x00080000
-#define COMMAND_RSPTYP_NONE	0
-#define COMMAND_RSPTYP_136	0x00010000
-#define COMMAND_RSPTYP_48	0x00020000
-#define COMMAND_RSPTYP_48_BUSY	0x00030000
 #define TRANSFER_MODE_MSBSEL	0x00000020
 #define TRANSFER_MODE_DTDSEL	0x00000010
 #define TRANSFER_MODE_AC12EN	0x00000004
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
