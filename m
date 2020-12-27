Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kte4R-0003Ro-P6
 for barebox@lists.infradead.org; Sun, 27 Dec 2020 21:59:24 +0000
Received: from astat.fritz.box (a89-183-86-10.net-htp.de [89.183.86.10])
 by lynxeye.de (Postfix) with ESMTPA id 0F402E7424E
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:50:46 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 27 Dec 2020 22:50:40 +0100
Message-Id: <20201227215042.101009-3-dev@lynxeye.de>
In-Reply-To: <20201227215042.101009-1-dev@lynxeye.de>
References: <20201227215042.101009-1-dev@lynxeye.de>
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
Subject: [PATCH 3/5] ARM: i.mx8mq: add PAD CTL defines
To: barebox@lists.infradead.org

Allows a more readable pad setup.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx8mq.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
index d397e975c023..b6efdda4ff4a 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
@@ -623,6 +623,23 @@ enum {
 	IMX8MQ_PAD_UART4_TXD__GPIO5_IO29			= IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
 };
 
+#define MX8MQ_PAD_CTL_DSE_HIZ	(0 << 0)
+#define MX8MQ_PAD_CTL_DSE_255R	(1 << 0)
+#define MX8MQ_PAD_CTL_DSE_155R	(2 << 0)
+#define MX8MQ_PAD_CTL_DSE_75R	(3 << 0)
+#define MX8MQ_PAD_CTL_DSE_85R	(4 << 0)
+#define MX8MQ_PAD_CTL_DSE_65R	(5 << 0)
+#define MX8MQ_PAD_CTL_DSE_45R	(6 << 0)
+#define MX8MQ_PAD_CTL_DSE_40R	(7 << 0)
+#define MX8MQ_PAD_CTL_SR_50M	(0 << 3)
+#define MX8MQ_PAD_CTL_SR_100M	(1 << 3)
+#define MX8MQ_PAD_CTL_SR_150M	(2 << 3)
+#define MX8MQ_PAD_CTL_SR_200M	(3 << 3)
+#define MX8MQ_PAD_CTL_ODE	BIT(5)
+#define MX8MQ_PAD_CTL_PUE	BIT(6)
+#define MX8MQ_PAD_CTL_HYS	BIT(7)
+#define MX8MQ_PAD_CTL_LVTTL	BIT(8)
+
 static inline void imx8mq_setup_pad(iomux_v3_cfg_t pad)
 {
 	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
