Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5xv-0005p1-G9
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 11:21:12 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 952E510506E2
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 13:27:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  5 Oct 2012 13:18:43 +0200
Message-Id: <1349435923-29233-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121005110435.GR26553@game.jcrosoft.org>
 <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] versatilepb: add gpio support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/versatilepb_defconfig      |    2 ++
 arch/arm/mach-versatile/core.c              |   10 ++++++++++
 arch/arm/mach-versatile/include/mach/gpio.h |    1 +
 3 files changed, 13 insertions(+)
 create mode 100644 arch/arm/mach-versatile/include/mach/gpio.h

diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 87aec4d..4c71c3c 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -32,6 +32,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
@@ -43,6 +44,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
+CONFIG_GPIO_PL061=y
 CONFIG_FS_CRAMFS=y
 CONFIG_SHA1=y
 CONFIG_SHA256=y
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 5c75e11..6e913df 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -196,3 +196,13 @@ void __noreturn reset_cpu (unsigned long ignored)
 	while(1);
 }
 EXPORT_SYMBOL(reset_cpu);
+
+static int versatile_init(void)
+{
+	amba_apb_device_add(NULL, "pl061_gpio", 0, 0x101e4000, 4096, NULL, 0);
+	amba_apb_device_add(NULL, "pl061_gpio", 1, 0x101e5000, 4096, NULL, 0);
+	amba_apb_device_add(NULL, "pl061_gpio", 2, 0x101e6000, 4096, NULL, 0);
+	amba_apb_device_add(NULL, "pl061_gpio", 3, 0x101e7000, 4096, NULL, 0);
+	return 0;
+}
+coredevice_initcall(versatile_init);
diff --git a/arch/arm/mach-versatile/include/mach/gpio.h b/arch/arm/mach-versatile/include/mach/gpio.h
new file mode 100644
index 0000000..306ab4c
--- /dev/null
+++ b/arch/arm/mach-versatile/include/mach/gpio.h
@@ -0,0 +1 @@
+#include <asm-generic/gpio.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
