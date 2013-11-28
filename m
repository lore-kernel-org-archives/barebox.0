Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm2X3-0004Rx-Tj
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 14:25:31 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0D9B1FF8551
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 15:16:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 15:17:38 +0100
Message-Id: <1385648258-24295-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] vexpress: fix smc911x in defconfig
To: barebox@lists.infradead.org

today we select smc91111

to make the net work under qemu you will have to fix the lan9118 driver

with this patch

diff --git a/hw/net/lan9118.c b/hw/net/lan9118.c
index 2315f99..a48c32d 100644
--- a/hw/net/lan9118.c
+++ b/hw/net/lan9118.c
@@ -1030,6 +1030,8 @@ static void lan9118_writel(void *opaque, hwaddr offset,
         s->int_en = val & ~RESERVED_INT;
         s->int_sts |= val & SW_INT;
         break;
+    case CSR_BYTE_TEST:
+        break;
     case CSR_FIFO_INT:
         DPRINTF("FIFO INT levels %08x\n", val);
         s->fifo_int = val;

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/vexpress_ca9_defconfig | 2 +-
 arch/arm/configs/vexpress_defconfig     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index f16a8ca..e8cf703 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -50,7 +50,7 @@ CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_DRIVER_NET_SMC91111=y
+CONFIG_DRIVER_NET_SMC911X=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index e166078..dafaf18 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -49,7 +49,7 @@ CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_DRIVER_NET_SMC91111=y
+CONFIG_DRIVER_NET_SMC911X=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
