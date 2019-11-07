Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4O-0001wr-Pw
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:11:58 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 7F80FE7421F
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:24 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:02 +0100
Message-Id: <20191107211119.68064-2-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 01/18] ARM: zynq: zedboard: enable MACB driver in defconfig
To: barebox@lists.infradead.org

The board support is a bit more useful with active networking.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/zedboard_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index cc0336875173..be5720fd42b5 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -40,6 +40,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
