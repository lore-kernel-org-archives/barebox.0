Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-v.mail.gandi.net ([217.70.178.75])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NfIg0-0001fu-RN
	for barebox@lists.infradead.org; Wed, 10 Feb 2010 19:56:50 +0000
Date: Wed, 10 Feb 2010 20:56:15 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100210195615.GE374@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edb93xx: Fix SDRAM initialization
To: barebox@lists.infradead.org

Before programming the SDRAM mode registers, mode register update mode must be
selected by setting the MRS bit and clearing INIT in GlConfig

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 board/edb93xx/sdram_cfg.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/board/edb93xx/sdram_cfg.c b/board/edb93xx/sdram_cfg.c
index 9f56f72..25b214b 100644
--- a/board/edb93xx/sdram_cfg.c
+++ b/board/edb93xx/sdram_cfg.c
@@ -111,6 +111,11 @@ static void setup_refresh_timer(void)
 
 static void program_mode_registers(void)
 {
+	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
+
+	/* Select mode register update mode */
+	writel(GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
+
 	PROGRAM_MODE_REG(0);
 
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
