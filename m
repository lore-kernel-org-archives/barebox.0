Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm4N-0008GJ-Ne
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 18:48:17 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 18 Nov 2019 19:48:08 +0100
Message-Id: <20191118184809.27173-2-m.tretter@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: zynqmp: defconfig: fix FIRMWARE_ZYNQMP_FPGA
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The config item has been renamed from FIRMWARE_ZYNQMP_PL to
FIRMWARE_ZYNQMP_FPGA, but the defconfig has not been updated. Update it
now.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/configs/zynqmp_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 834212e30f..50b7556081 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -35,5 +35,5 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 # CONFIG_SPI is not set
-CONFIG_FIRMWARE_ZYNQMP_PL=y
+CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 CONFIG_DIGEST=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
