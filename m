Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtWQY-0003uh-Ra
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 07:54:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 46390A001D1
 for <barebox@lists.infradead.org>; Tue,  3 Nov 2015 08:54:42 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 3 Nov 2015 08:51:48 +0100
Message-Id: <1446537108-15386-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1446537108-15386-1-git-send-email-t.remmet@phytec.de>
References: <1446537108-15386-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/2] ARM: am335x_defconfig: Enable SMSC phy driver
To: barebox@lists.infradead.org

The phyCORE-AM335x has a SMSC phy mounted. Enabled the driver for it.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/configs/am335x_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 234042f..9563865 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -88,12 +88,12 @@ CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
 CONFIG_MICREL_PHY=y
+CONFIG_SMSC_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
