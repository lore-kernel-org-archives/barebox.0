Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-000727-C0
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:11:02 +0400
Message-Id: <1397290265-21273-9-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 09/12] ata: pata-imx: Remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/ata/pata-imx.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 7f9e39b..6bd7524 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -78,9 +78,6 @@ static void pata_imx_set_bus_timing(void __iomem *base, unsigned long clkrate,
 {
 	uint32_t T = 1000000000 / clkrate;
 
-	struct mxc_ata_config_regs *ata_regs;
-	ata_regs = (struct mxc_ata_config_regs *)base;
-
 	if (mode >= ARRAY_SIZE(pio_t1))
 		return;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
