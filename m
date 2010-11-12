Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGtD9-0001zQ-BD
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 12:58:36 +0000
Received: by bwz5 with SMTP id 5so3058080bwz.36
	for <barebox@lists.infradead.org>; Fri, 12 Nov 2010 04:58:34 -0800 (PST)
From: Marek Belisko <marek.belisko@gmail.com>
Date: Fri, 12 Nov 2010 14:00:50 +0100
Message-Id: <1289566850-20398-1-git-send-email-marek.belisko@gmail.com>
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
Subject: [PATCH] pcm037: Fix compilation warning.
To: barebox@lists.infradead.org

This patch fix following compilation warning:
../devices-imx31.h: In function 'imx31_add_fb':
../devices-imx31.h:34: warning: passing argument 2 of 'imx_add_ipufb'
from incompatible pointer type

Signed-off-by: Marek Belisko <marek.belisko@gmail.com>
---
 arch/arm/mach-imx/include/mach/devices-imx31.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 1f5a48a..5dcea82 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -29,7 +29,7 @@ static inline struct device_d *imx31_add_nand(struct imx_nand_platform_data *pda
 	return imx_add_nand((void *)0xb8000000, pdata);
 }
 
-static inline struct device_d *imx31_add_fb(struct imx_fb_platform_data *pdata)
+static inline struct device_d *imx31_add_fb(struct imx_ipu_fb_platform_data *pdata)
 {
 	return imx_add_ipufb((void *)IPU_BASE, pdata);
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
