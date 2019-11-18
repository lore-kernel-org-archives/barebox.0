Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm4O-0008GH-CX
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 18:48:18 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 18 Nov 2019 19:48:09 +0100
Message-Id: <20191118184809.27173-3-m.tretter@pengutronix.de>
In-Reply-To: <20191118184809.27173-1-m.tretter@pengutronix.de>
References: <20191118184809.27173-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: zynqmp: defconfig: reenable DRIVER_NET_MACB
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Commit d952a0eeba37 ("Regenerate defconfig files") disabled the macb
driver in the ZynqMP defconfig, because CONFIG_NET was not enabled in
the defconfig. While not strictly required, you probably want to enable
the macb driver on the ZynqMP.

Enable CONFIG_NET and reenable CONFIG_DRIVER_NET_MACB.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/configs/zynqmp_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 50b7556081..762103c541 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -33,7 +33,9 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 CONFIG_DIGEST=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
