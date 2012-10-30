Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTCh0-00082w-HD
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:21:24 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 30 Oct 2012 15:21:14 +0100
Message-Id: <1351606875-31558-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 2/3] dma: apbh: check for errors when resetting ip core
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/dma/apbh_dma.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 363878f..d30b8fb 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -555,7 +555,9 @@ int mxs_dma_init(void)
 	int ret, channel;
 	u32 val, reg;
 
-	mxs_reset_block(apbh_regs, 0);
+	ret = mxs_reset_block(apbh_regs, 0);
+	if (ret)
+		return ret;
 
 	/* HACK: Get CPUID and determine APBH version */
 	val = readl(0x8001c310) >> 16;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
