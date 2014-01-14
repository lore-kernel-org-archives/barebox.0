Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.24])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2z9h-0003qf-HU
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 08:15:26 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Tue, 14 Jan 2014 09:23:37 +0100
Message-Id: <1389687817-30882-5-git-send-email-list-09_barebox@tqsc.de>
In-Reply-To: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
References: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 4/4] boards: tqma53: add DSR support for eMMC
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

all eMMC cards with DSR support used on different
revisions of TQMa53 needs the same DSR value.
just apply it.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 arch/arm/boards/tqma53/board.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 9069f7c..cc98de9 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -39,6 +39,8 @@
 #include <mach/iim.h>
 #include <mach/imx5.h>
 
+#define TQMA53_EMMC_DSR 0x0100u
+
 static struct fec_platform_data fec_info = {
 	.xcv_type = PHY_INTERFACE_MODE_RMII,
 };
@@ -221,6 +223,8 @@ static struct esdhc_platform_data tqma53_sd3_data = {
 	.cd_type = ESDHC_CD_PERMANENT,
 	.wp_type = ESDHC_WP_NONE,
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
+	.use_dsr = 1,
+	.dsr_val = TQMA53_EMMC_DSR,
 };
 
 static int tqma53_devices_init(void)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
