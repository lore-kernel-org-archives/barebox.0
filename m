Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deiUw-00014m-5r
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 13:55:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1deiUZ-0001PZ-HD
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 15:54:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 Aug 2017 15:54:46 +0200
Message-Id: <20170807135447.11161-2-l.stach@pengutronix.de>
In-Reply-To: <20170807135447.11161-1-l.stach@pengutronix.de>
References: <20170807135447.11161-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: imx: build imx6.o as ARMv7
To: barebox@lists.infradead.org

Otherwise the WFI instruction might not be available in a multi-image build.

Fixes: 1e9458720a23 (ARM: i.MX: provide handler for power off over standby)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index fc5305f051db..747b22bf805b 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -12,6 +12,7 @@ pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
+CFLAGS_imx6.o :=-Wa,-march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
