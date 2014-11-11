Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoCdp-0006ku-BZ
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:41:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 049F9A004AC
 for <barebox@lists.infradead.org>; Tue, 11 Nov 2014 15:41:44 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 11 Nov 2014 15:40:56 +0100
Message-Id: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/4] ARM: update imx_v7_defconfig
To: barebox@lists.infradead.org

Enable micrel phy

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 2c8eb85..7076ecd 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -107,6 +107,7 @@ CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_AT803X_PHY=y
+CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
