Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUD-0003NB-9m
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:13 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440130wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:09 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:33 +0100
Message-Id: <4d701d3c.9009d80a.2cd3.5e84@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 19/54] Add arch/nios2/boards/generic/env/config
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/boards/generic/env/config

---
 arch/nios2/boards/generic/env/config |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/env/config

diff --git a/arch/nios2/boards/generic/env/config b/arch/nios2/boards/generic/env/config
new file mode 100644
index 0000000..3ba4eb4
--- /dev/null
+++ b/arch/nios2/boards/generic/env/config
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+# can be either 'net' or 'flash'
+kernel=flash
+root=flash
+
+# use 'dhcp' todo dhcp in barebox and in kernel
+ip=none
+
+eth0.ipaddr=192.168.1.69
+eth0.netmask=255.255.255.0
+eth0.gateway=192.168.0.1
+eth0.serverip=192.168.1.117
+eth0.ethaddr=00:50:C0:C8:10:12
+
+nor_parts="256k(barebox),128k(env),4M(kernel),-(rootfs)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;33mbarebox@\e[1;32mgeneric:\w\e[0m "
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
