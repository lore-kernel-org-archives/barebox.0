Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c98wq-0003iX-M1
 for barebox@lists.infradead.org; Tue, 22 Nov 2016 11:09:14 +0000
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <7189a1ce-2633-97a4-464d-ae95736135bc@systec-electronic.com>
Date: Tue, 22 Nov 2016 12:08:45 +0100
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
Subject: [PATCHv2] ARM: i.MX25/35: Fix bootsource detection
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

This fixes commit 0b47f95340d801a26643e5e1f4ee05287e8ae90e for i.MX25/35.
Otherwise the bootsource was just "unknown".

Signed-off-by: Daniel Krueger <daniel.krueger@systec-electronic.com>
---
 arch/arm/mach-imx/boot.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index b66c29d..4893060 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -69,13 +69,13 @@ static const enum bootsource locations[4][4] = {
  * Note also that I suspect that the boot source pins are only sampled at
  * power up.
  */
-static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
+static enum bootsource imx25_35_boot_source(unsigned int ctrl, unsigned int type)
 {
 	enum bootsource src;
 
 	src = locations[ctrl][type];
 
-	bootsource_set(src);
+	return src;
 }
 
 void imx25_get_boot_source(enum bootsource *src, int *instance)
@@ -84,8 +84,8 @@ void imx25_get_boot_source(enum bootsource *src, int *instance)
 	uint32_t val;
 
 	val = readl(ccm_base + MX25_CCM_RCSR);
-	imx25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			       (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	*src = imx25_35_boot_source((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+				    (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
 void imx25_boot_save_loc(void)
@@ -105,8 +105,8 @@ void imx35_get_boot_source(enum bootsource *src, int *instance)
 	uint32_t val;
 
 	val = readl(ccm_base + MX35_CCM_RCSR);
-	imx25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			       (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	*src = imx25_35_boot_source((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+				    (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
 void imx35_boot_save_loc(void)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
