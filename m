Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SK-Nx
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:41 +0200
Message-Id: <1401956624-31802-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] PPC: FSL DDR: Fix compiler warning
To: barebox@lists.infradead.org

Fixes:

arch/ppc/boards/freescale-p1022ds/ddr.c: In function 'fsl_ddr_board_info':
arch/ppc/boards/freescale-p1022ds/ddr.c:39:21: warning: assignment discards 'const' qualifier from pointer target type [enabled by default]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/fsl_ddr_sdram.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
index f0f3a63..2c45608 100644
--- a/arch/ppc/include/asm/fsl_ddr_sdram.h
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -90,7 +90,7 @@ struct ddr_board_info_s {
 	uint32_t i2c_slave;
 	uint32_t i2c_speed;
 	void __iomem *i2c_base;
-	uint8_t *spd_i2c_addr;
+	const uint8_t *spd_i2c_addr;
 };
 
 /*
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
