Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S7VwA-0003cV-HJ
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 17:55:07 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C6C00DC15C6
 for <barebox@lists.infradead.org>; Tue, 13 Mar 2012 18:58:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Mar 2012 18:43:15 +0100
Message-Id: <1331660595-9040-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91: set dhcp vendor id on Atmel Reference board
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/config    |    7 +++++++
 arch/arm/boards/at91sam9261ek/env/config    |    7 +++++++
 arch/arm/boards/at91sam9263ek/env/config    |    1 +
 arch/arm/boards/at91sam9m10g45ek/env/config |    1 +
 arch/arm/boards/usb-a926x/env/config        |    1 +
 5 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index 8db18ef..74e793c 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -4,6 +4,13 @@
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
 
+if [ x$armlinux_architecture = x1099 ]
+then
+	dhcp_vendor_id=barebox-at91sam9260ek
+else
+	dhcp_vendor_id=barebox-at91sam9g20ek
+fi
+
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
 #eth0.netmask=a.b.c.d
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index de13010..fca5184 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -4,6 +4,13 @@
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
 
+if [ x$armlinux_architecture = x848 ]
+then
+	dhcp_vendor_id=barebox-at91sam9261ek
+else
+	dhcp_vendor_id=barebox-at91sam9g10ek
+fi
+
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
 #eth0.netmask=a.b.c.d
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 388a939..95eb8af 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -3,6 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+dhcp_vendor_id=barebox-at91sam9263ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 9be6331..6b96599 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -3,6 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+dhcp_vendor_id=barebox-at91sam9m10g45ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index 96a4524..ff097a0 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -3,6 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+dhcp_vendor_id=barebox-at91sam9x5ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
