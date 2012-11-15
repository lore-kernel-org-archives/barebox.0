Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYy5A-0000fE-9G
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 11:58:08 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 60EE2FFB5BD
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 13:05:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 12:56:02 +0100
Message-Id: <1352980562-25383-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mx53 loco: enable smsc phy driver
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/freescale_mx53_loco_defconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index 37aa182..b50b050 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -53,6 +53,7 @@ CONFIG_NET_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_SMSC_PHY=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
