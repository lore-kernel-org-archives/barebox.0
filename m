Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OePzV-0002RJ-0W
	for barebox@lists.infradead.org; Thu, 29 Jul 2010 10:05:34 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 29 Jul 2010 11:54:20 +0200
Message-Id: <1280397260-4467-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] drivers/usb: regorganisation
To: barebox@lists.infradead.org

move to linux usb driver organisation

as following

drivers/usb/core
drivers/usb/gadget
drivers/usb/host
drivers/usb/otg

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/Kconfig                               |   10 ++--------
 drivers/usb/Makefile                              |    7 +++----
 drivers/usb/core/Makefile                         |    2 ++
 drivers/usb/{ => core}/usb.c                      |    0
 drivers/usb/host/Kconfig                          |    2 ++
 drivers/usb/host/Makefile                         |    1 +
 drivers/usb/{usb_ehci_core.h => host/ehci-core.h} |    0
 drivers/usb/{usb_ehci_core.c => host/ehci-hcd.c}  |    2 +-
 drivers/usb/{usb_ehci.h => host/ehci.h}           |    0
 drivers/usb/otg/Kconfig                           |    6 ++++++
 drivers/usb/otg/Makefile                          |    2 ++
 drivers/usb/{ => otg}/isp1504.c                   |    0
 drivers/usb/{ => otg}/ulpi.c                      |    0
 13 files changed, 19 insertions(+), 13 deletions(-)
 create mode 100644 drivers/usb/core/Makefile
 rename drivers/usb/{ => core}/usb.c (100%)
 create mode 100644 drivers/usb/host/Kconfig
 create mode 100644 drivers/usb/host/Makefile
 rename drivers/usb/{usb_ehci_core.h => host/ehci-core.h} (100%)
 rename drivers/usb/{usb_ehci_core.c => host/ehci-hcd.c} (99%)
 rename drivers/usb/{usb_ehci.h => host/ehci.h} (100%)
 create mode 100644 drivers/usb/otg/Kconfig
 create mode 100644 drivers/usb/otg/Makefile
 rename drivers/usb/{ => otg}/isp1504.c (100%)
 rename drivers/usb/{ => otg}/ulpi.c (100%)

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 839efeb..c7b2c52 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -3,15 +3,9 @@ menuconfig USB
 
 if USB
 
-config USB_EHCI
-	bool "EHCI driver"
+source drivers/usb/host/Kconfig
 
-config USB_ULPI
-	bool
-
-config USB_ISP1504
-	select USB_ULPI
-	bool "ISP1504 Tranceiver support"
+source drivers/usb/otg/Kconfig
 
 endif
 
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 57d0bed..e6f683b 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,6 +1,5 @@
-obj-$(CONFIG_USB)		+= usb.o
-obj-$(CONFIG_USB_EHCI)		+= usb_ehci_core.o
-obj-$(CONFIG_USB_ULPI)		+= ulpi.o
-obj-$(CONFIG_USB_ISP1504)	+= isp1504.o
+obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
+obj-y += host/
+obj-y += otg/
 
diff --git a/drivers/usb/core/Makefile b/drivers/usb/core/Makefile
new file mode 100644
index 0000000..d49c68d
--- /dev/null
+++ b/drivers/usb/core/Makefile
@@ -0,0 +1,2 @@
+
+obj-y += usb.o
diff --git a/drivers/usb/usb.c b/drivers/usb/core/usb.c
similarity index 100%
rename from drivers/usb/usb.c
rename to drivers/usb/core/usb.c
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
new file mode 100644
index 0000000..e1549e8
--- /dev/null
+++ b/drivers/usb/host/Kconfig
@@ -0,0 +1,2 @@
+config USB_EHCI
+	bool "EHCI driver"
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
new file mode 100644
index 0000000..6c48e3a
--- /dev/null
+++ b/drivers/usb/host/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
diff --git a/drivers/usb/usb_ehci_core.h b/drivers/usb/host/ehci-core.h
similarity index 100%
rename from drivers/usb/usb_ehci_core.h
rename to drivers/usb/host/ehci-core.h
diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/host/ehci-hcd.c
similarity index 99%
rename from drivers/usb/usb_ehci_core.c
rename to drivers/usb/host/ehci-hcd.c
index af066de..8995fa3 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -34,7 +34,7 @@
 #include <usb/ehci.h>
 #include <asm/mmu.h>
 
-#include "usb_ehci.h"
+#include "ehci.h"
 
 struct ehci_priv {
 	int rootdev;
diff --git a/drivers/usb/usb_ehci.h b/drivers/usb/host/ehci.h
similarity index 100%
rename from drivers/usb/usb_ehci.h
rename to drivers/usb/host/ehci.h
diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
new file mode 100644
index 0000000..0191c87
--- /dev/null
+++ b/drivers/usb/otg/Kconfig
@@ -0,0 +1,6 @@
+config USB_ULPI
+	bool
+
+config USB_ISP1504
+	select USB_ULPI
+	bool "ISP1504 Tranceiver support"
diff --git a/drivers/usb/otg/Makefile b/drivers/usb/otg/Makefile
new file mode 100644
index 0000000..785f922
--- /dev/null
+++ b/drivers/usb/otg/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_USB_ULPI)		+= ulpi.o
+obj-$(CONFIG_USB_ISP1504)	+= isp1504.o
diff --git a/drivers/usb/isp1504.c b/drivers/usb/otg/isp1504.c
similarity index 100%
rename from drivers/usb/isp1504.c
rename to drivers/usb/otg/isp1504.c
diff --git a/drivers/usb/ulpi.c b/drivers/usb/otg/ulpi.c
similarity index 100%
rename from drivers/usb/ulpi.c
rename to drivers/usb/otg/ulpi.c
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
