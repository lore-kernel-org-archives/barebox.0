Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVjlD-0001ef-9u
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 10:50:40 +0000
From: Eric Benard <eric@eukrea.com>
Date: Fri, 15 Jan 2010 11:50:17 +0100
Message-Id: <1263552619-4601-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1263552619-4601-1-git-send-email-eric@eukrea.com>
References: <1263552619-4601-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/4] Add necessary clocks & defines to get I2C support for
	i.MX27
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
 arch/arm/mach-imx/speed-imx27.c             |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 33d67d6..6c31ccd 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -16,6 +16,7 @@
 #define IMX_UART2_BASE             (0x0b000 + IMX_IO_BASE)
 #define IMX_UART3_BASE             (0x0c000 + IMX_IO_BASE)
 #define IMX_UART4_BASE             (0x0d000 + IMX_IO_BASE)
+#define IMX_I2C1_BASE              (0x12000 + IMX_IO_BASE)
 #define IMX_GPIO_BASE              (0x15000 + IMX_IO_BASE)
 #define IMX_TIM4_BASE              (0x19000 + IMX_IO_BASE)
 #define IMX_TIM5_BASE              (0x1a000 + IMX_IO_BASE)
diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
index deaca1e..cdcd419 100644
--- a/arch/arm/mach-imx/speed-imx27.c
+++ b/arch/arm/mach-imx/speed-imx27.c
@@ -154,6 +154,11 @@ ulong imx_get_lcdclk(void)
 	return imx_get_perclk3();
 }
 
+ulong imx_get_i2cclk(void)
+{
+	return imx_get_ipgclk();
+}
+
 void imx_dump_clocks(void)
 {
 	uint32_t	cid = CID;
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
