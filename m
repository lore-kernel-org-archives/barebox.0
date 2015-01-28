Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGPYB-0000sl-GD
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 10:08:44 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 28 Jan 2015 18:08:15 +0800
Message-ID: <1422439695-20800-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: sama5d4: nand: add has_pmecc parameter
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Add the missing has_pmecc parameter for sama5d4 based boards.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c | 1 +
 arch/arm/boards/sama5d4ek/sama5d4ek.c               | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
index 9547c93..aa2ed8a 100644
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -40,6 +40,7 @@ static struct atmel_nand_data nand_pdata = {
 	.rdy_pin	= -EINVAL,
 	.enable_pin	= -EINVAL,
 	.ecc_mode	= NAND_ECC_HW,
+	.has_pmecc	= 1,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 8,
 	.on_flash_bbt	= 1,
diff --git a/arch/arm/boards/sama5d4ek/sama5d4ek.c b/arch/arm/boards/sama5d4ek/sama5d4ek.c
index bbc53c6..db346d1 100644
--- a/arch/arm/boards/sama5d4ek/sama5d4ek.c
+++ b/arch/arm/boards/sama5d4ek/sama5d4ek.c
@@ -40,6 +40,7 @@ static struct atmel_nand_data nand_pdata = {
 	.rdy_pin	= -EINVAL,
 	.enable_pin	= -EINVAL,
 	.ecc_mode	= NAND_ECC_HW,
+	.has_pmecc	= 1,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 8,
 	.on_flash_bbt	= 1,
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
