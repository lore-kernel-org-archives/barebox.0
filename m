Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdQi-0007ob-Vo
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:10 +0000
Received: by mail-pf0-x242.google.com with SMTP id b74-v6so3573573pfl.5
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:44:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:43:54 -0700
Message-Id: <20180606184431.10348-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 01/38] ARM: i.MX: xload: Fix compiler warning
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

the ESDHC controller is a 32bit device, so can do DMA only on the
lower 32bit. Fix the compiler warning about casting a pointer to integer
of different size on aarch64 by casting to unsigned long first. Error
out if the destination does not fit into 32bit though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-esdhc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index e774e4e68..bd58bdc64 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -109,8 +109,13 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 	__udelay(1);
 
 	if (data) {
+		unsigned long dest = (unsigned long)data->dest;
+
+		if (dest > 0xffffffff)
+			return -EINVAL;
+
 		/* Set up for a data transfer if we have one */
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)dest);
 		esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
 	}
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
