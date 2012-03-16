Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.mail.ru ([94.100.176.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8Ulg-0002rL-0S
 for barebox@lists.infradead.org; Fri, 16 Mar 2012 10:52:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 16 Mar 2012 14:52:03 +0400
Message-Id: <1331895123-8143-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] i.MX51: add support for UART3
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/devices-imx51.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index d9bed8c..27fcaa2 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -37,6 +37,11 @@ static inline struct device_d *imx51_add_uart1(void)
 	return imx_add_uart((void *)MX51_UART2_BASE_ADDR, 1);
 }
 
+static inline struct device_d *imx51_add_uart2(void)
+{
+	return imx_add_uart((void *)MX51_UART3_BASE_ADDR, 2);
+}
+
 static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
