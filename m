Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEjet-0003ND-Hb
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 16:31:24 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 20 Sep 2012 17:31:08 +0100
Message-Id: <1348158669-14034-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/5] FSL mdio: configuration and build file
To: barebox@lists.infradead.org

The configuration and build files are updated to compile the FSL mdio
support.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/net/Kconfig  |    5 +++++
 drivers/net/Makefile |    1 +
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 7db2837..c780340 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -128,8 +128,13 @@ config DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
 	depends on ARCH_MPC85XX
+	select FSL_MDIO
 	select MIIDEV
 
+config FSL_MDIO
+	bool
+	default n
+
 source "drivers/net/usb/Kconfig"
 
 config DRIVER_NET_MICREL
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 2057963..af19d20 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -15,5 +15,6 @@ obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
+obj-$(CONFIG_FSL_MDIO)			+= fsl_mdio.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
 obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
