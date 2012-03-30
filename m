Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTzK-00052c-0o
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:03:04 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E8B28FF8BB7
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:03:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:47:54 +0200
Message-Id: <1333082876-22403-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330044138.GY444@game.jcrosoft.org>
References: <20120330044138.GY444@game.jcrosoft.org>
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
Subject: [PATCH 4/6] at91: set ip mode to dhcp-barebox
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

As the mainline kernel does not enable the bootp support by default

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/env/config     |    2 +-
 arch/arm/boards/at91sam9260ek/env/config    |    2 +-
 arch/arm/boards/at91sam9261ek/env/config    |    2 +-
 arch/arm/boards/at91sam9263ek/env/config    |    2 +-
 arch/arm/boards/at91sam9m10g45ek/env/config |    2 +-
 arch/arm/boards/tny-a926x/env/config        |    2 +-
 arch/arm/boards/usb-a926x/env/config        |    2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
index 12655c2..d1d9e8e 100644
--- a/arch/arm/boards/at91rm9200ek/env/config
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index 74e793c..2c0f075 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x1099 ]
 then
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index fca5184..be4d37c 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x848 ]
 then
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 95eb8af..93eeb1e 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 dhcp_vendor_id=barebox-at91sam9263ek
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 6b96599..d115132 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 dhcp_vendor_id=barebox-at91sam9m10g45ek
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
index 0ca38d5..b5215dc 100644
--- a/arch/arm/boards/tny-a926x/env/config
+++ b/arch/arm/boards/tny-a926x/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=none
+ip=dhcp-barebox
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index ff097a0..1f72803 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -2,7 +2,7 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
 dhcp_vendor_id=barebox-at91sam9x5ek
 
 # or set your networking parameters here
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
