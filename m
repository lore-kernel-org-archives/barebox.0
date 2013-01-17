Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f179.google.com ([209.85.212.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TveSV-00052q-Pi
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 01:40:01 +0000
Received: by mail-wi0-f179.google.com with SMTP id o1so1858212wic.6
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 17:39:57 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 17 Jan 2013 02:39:18 +0100
Message-Id: <1358386760-9249-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
References: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/3] OMAP4: use OPPs recommended in datasheet
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/include/mach/omap4-clock.h | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index 469c716..8f49aa3 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -307,7 +307,9 @@ struct dpll_param {
 #define OMAP4_MPU_DPLL_PARAM_38M4_MPU600	{0x7d, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 #define OMAP4_MPU_DPLL_PARAM_38M4_MPU1000	{0x69, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 /* dpll locked at 1840 MHz MPU clk at 920 MHz(OPP Turbo 4460) - DCC OFF */
-#define OMAP4_MPU_DPLL_PARAM_19M2_MPU920	{0x23F, 0x11, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU920	{0x30, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU1200	{0x7d, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU1500	{0x4e, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 
 #define OMAP4_IVA_DPLL_PARAM_19M2		{0x61, 0x01, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
 #define OMAP4_IVA_DPLL_PARAM_38M4		{0x61, 0x03, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
@@ -321,11 +323,11 @@ struct dpll_param {
 #define OMAP4_USB_DPLL_PARAM_19M2		{0x32, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0}
 #define OMAP4_USB_DPLL_PARAM_38M4		{0x32, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0}
 
-#define OMAP4_CORE_DPLL_PARAM_19M2_DDR200	{0x7d, 0x02, 0x02, 0x05, 0x08, 0x04, 0x06, 0x05}
+#define OMAP4_CORE_DPLL_PARAM_19M2_DDR200	{0x7d, 0x02, 0x02, 0x05, 0x08, 0x04, 0x06, 0x06}
 #define OMAP4_CORE_DPLL_PARAM_19M2_DDR333	{0x410,	0x09, 0x03, 0x0c, 0x14, 0x0a, 0x0f, 0x0c}
-#define OMAP4_CORE_DPLL_PARAM_19M2_DDR400	{0x7d, 0x02, 0x01, 0x05, 0x08, 0x04, 0x06, 0x05}
-#define OMAP4_CORE_DPLL_PARAM_38M4_DDR200	{0x7d, 0x05, 0x02, 0x05, 0x08, 0x04, 0x06, 0x05}
-#define OMAP4_CORE_DPLL_PARAM_38M4_DDR400	{0x7d, 0x05, 0x01, 0x05, 0x08, 0x04, 0x06, 0x05}
+#define OMAP4_CORE_DPLL_PARAM_19M2_DDR400	{0x7d, 0x02, 0x01, 0x05, 0x08, 0x04, 0x06, 0x06}
+#define OMAP4_CORE_DPLL_PARAM_38M4_DDR200	{0x7d, 0x05, 0x02, 0x05, 0x08, 0x04, 0x06, 0x06}
+#define OMAP4_CORE_DPLL_PARAM_38M4_DDR400	{0x7d, 0x05, 0x01, 0x05, 0x08, 0x04, 0x06, 0x06}
 
 void omap4_configure_mpu_dpll(const struct dpll_param *dpll_param);
 void omap4_configure_iva_dpll(const struct dpll_param *dpll_param);
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
