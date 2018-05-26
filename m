Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg4C-0003z0-P2
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:45:34 +0000
Received: by mail-pl0-x241.google.com with SMTP id c41-v6so5005762plj.10
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:45:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:04 -0700
Message-Id: <20180526204451.16530-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/48] ARM: i.MX: xload: Fix compiler warning
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
