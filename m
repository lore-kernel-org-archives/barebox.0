Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f50.google.com ([209.85.214.50])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW4M8-0001TZ-Ru
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 13:40:29 +0000
Received: by mail-bk0-f50.google.com with SMTP id w10so304290bkz.9
 for <barebox@lists.infradead.org>; Fri, 04 Apr 2014 06:40:07 -0700 (PDT)
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Fri,  4 Apr 2014 15:40:00 +0200
Message-Id: <1396618800-27692-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: [PATCH 3/3] imx53: add imx53_add_cspi
To: barebox@lists.infradead.org

From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>


Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index d4e9a4a..88be4fd 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -2,6 +2,11 @@
 #include <mach/devices.h>
 #include <mach/imx53-regs.h>
 
+static inline struct device_d *imx53_add_cspi(struct spi_imx_master *pdata)
+{
+	return imx_add_spi_imx35((void *)MX53_CSPI_BASE_ADDR, 0, pdata);
+}
+
 static inline struct device_d *imx53_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
