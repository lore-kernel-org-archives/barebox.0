Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFNQc-0007Fg-Cx
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 10:59:22 +0000
Received: by mail-bk0-f49.google.com with SMTP id ji2so2069215bkc.36
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 03:59:18 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Sat, 22 Sep 2012 12:59:07 +0200
Message-ID: <1348311547.3917.6.camel@mars>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] defaultenv-2: add nameserver IPs to kernel-parameter ip=
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Due to lack of testing environment this patch is untested.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 defaultenv-2/base/bin/bootargs-ip         |    4 +++-
 defaultenv-2/base/bin/bootargs-ip-barebox |    5 ++++-
 defaultenv-2/base/bin/ifup                |    4 ++++
 defaultenv-2/base/network/eth0            |    2 ++
 4 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
index 2d4486c..53623853 100644
--- a/defaultenv-2/base/bin/bootargs-ip
+++ b/defaultenv-2/base/bin/bootargs-ip
@@ -7,5 +7,7 @@
 if [ $ip = dhcp ]; then
 	global.linux.bootargs.dyn.ip="ip=dhcp"
 else
-	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
+	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0::"
+	global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver0:"
+	global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver1"
 fi
diff --git a/defaultenv-2/base/bin/bootargs-ip-barebox b/defaultenv-2/base/bin/bootargs-ip-barebox
index 5a3b984..09f42a8 100644
--- a/defaultenv-2/base/bin/bootargs-ip-barebox
+++ b/defaultenv-2/base/bin/bootargs-ip-barebox
@@ -4,4 +4,7 @@
 
 ifup eth0
 
-global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
+global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:"
+global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.netmask::eth0::"
+global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver0:"
+global.linux.bootargs.dyn.ip="$global.linux.bootargs.dyn.ip$eth0.nameserver1"
diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
index 37b986c..fe5a242 100644
--- a/defaultenv-2/base/bin/ifup
+++ b/defaultenv-2/base/bin/ifup
@@ -26,6 +26,8 @@ netmask=
 gateway=
 serverip=
 ethaddr=
+nameserver0=
+nameserver1=
 
 . $cmd
 
@@ -51,6 +53,8 @@ if [ "$ip" = static ]; then
 	${interface}.netmask=$netmask
 	${interface}.serverip=$serverip
 	${interface}.gateway=$gateway
+	${interface}.nameserver0=$nameserver0
+	${interface}.nameserver1=$nameserver1
 	ret=0
 elif [ "$ip" = dhcp ]; then
 	dhcp
diff --git a/defaultenv-2/base/network/eth0 b/defaultenv-2/base/network/eth0
index 7e731ca..2ed64ca 100644
--- a/defaultenv-2/base/network/eth0
+++ b/defaultenv-2/base/network/eth0
@@ -9,6 +9,8 @@ ipaddr=
 netmask=
 gateway=
 serverip=
+nameserver0=
+nameserver1=
 
 # MAC address if needed
 #ethaddr=xx:xx:xx:xx:xx:xx
-- 
1.7.2.5




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
