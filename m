Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDMCd-0005YN-JI
 for barebox@lists.infradead.org; Sat, 24 Aug 2013 22:21:04 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Sun, 25 Aug 2013 00:20:32 +0200
Message-Id: <1377382832-24868-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] mci: sdhci: fix IRQSTAT_DMAE bit shift
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

According to the SD Host Controller Specification Version 3.00, the ADMA error
status bit is on the wrong bit. Fix this.

While at it, add the missing standard error status bits.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/sdhci.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index b2d6779..2c8b6f5 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -37,8 +37,10 @@
 #define TRANSFER_MODE_BCEN	0x00000002
 #define TRANSFER_MODE_DMAEN	0x00000001
 
-#define IRQSTAT_DMAE		0x10000000
+#define IRQSTAT_TE		0x04000000
+#define IRQSTAT_DMAE		0x02000000
 #define IRQSTAT_AC12E		0x01000000
+#define IRQSTAT_CLE		0x00800000
 #define IRQSTAT_DEBE		0x00400000
 #define IRQSTAT_DCE		0x00200000
 #define IRQSTAT_DTOE		0x00100000
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
