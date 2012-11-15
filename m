Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYx2g-0005Xi-FJ
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 10:51:31 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 15 Nov 2012 11:51:11 +0100
Message-Id: <1352976671-17492-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH] imx53: implement imx53_add_kpp
To: barebox@lists.infradead.org

Allows usage of imx keypad driver in imx53 platforms

---
 arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 5f967ea..6692396 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -82,3 +82,8 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 
 	return dev;
 }
+
+static inline struct device_d *imx53_add_kpp(struct matrix_keymap_data *pdata)
+{
+	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
+}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
