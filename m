Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFNQP-0007Fg-QJ
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 10:59:09 +0000
Received: by bkcji2 with SMTP id ji2so2069215bkc.36
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 03:59:02 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Sat, 22 Sep 2012 12:58:50 +0200
Message-ID: <1348311530.3917.5.camel@mars>
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
Subject: [PATCH 1/2] net: add nameserver IPs to kernel-parameter ip=
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Kernel-parameter "ip=" is used to assign network configuration.
With linux kernel 3.7 it is also possible to set nameserver IPs.

This patch adds two new options (nameserver0 and nameserver1) to
ethernet device parameter. It also updates defaultenv version 1.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 defaultenv/bin/boot |    4 +++-
 defaultenv/config   |    2 ++
 net/eth.c           |    2 ++
 3 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4e2056e..d5b5844 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -61,7 +61,9 @@ if [ x$ip = xdhcp -o ]; then
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:"
+	bootargs="$bootargs$eth0.netmask::eth0::"
+	bootargs="$bootargs$eth0.nameserver0:$eth0.nameserver1"
 fi
 
 
diff --git a/defaultenv/config b/defaultenv/config
index 391ba47..6596753 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -18,6 +18,8 @@ global.dhcp.vendor_id=barebox
 #eth0.netmask=a.b.c.d
 #eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
+#eth0.nameserver0=a.b.c.d
+#eth0.nameserver1=a.b.c.d
 
 # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
 kernel_loc=tftp
diff --git a/net/eth.c b/net/eth.c
index d42a72d..bb8157b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -229,6 +229,8 @@ int eth_register(struct eth_device *edev)
 	dev_add_param(dev, "gateway", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "nameserver0", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "nameserver1", eth_set_ipaddr, NULL, 0);
 
 	edev->init(edev);
 
-- 
1.7.2.5




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
