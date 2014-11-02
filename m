Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1RB-0006hc-5f
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:07:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 2CB6C26C2004
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:48 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:45 +0100
Message-Id: <1414959235-18095-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 03/13] tegra: defconfig: enable barebox OF drivers
To: barebox@lists.infradead.org

We use them to configure the environment location
so it's a good idea to have them available by default.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 1402bd6..47e594b 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -38,6 +38,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_RTL8169=y
 CONFIG_MCI=y
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
