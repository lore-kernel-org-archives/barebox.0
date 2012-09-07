Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR4-0005sG-JB
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:24 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EE963FF876A
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:21:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:33 +0200
Message-Id: <1347020017-12110-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/11] defaultenv-2/ip: add dhcp-barebox support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/bootargs-ip |    2 ++
 defaultenv-2/base/bin/ifup        |    2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
index 2d4486c..caeb5dd 100644
--- a/defaultenv-2/base/bin/bootargs-ip
+++ b/defaultenv-2/base/bin/bootargs-ip
@@ -6,6 +6,8 @@
 
 if [ $ip = dhcp ]; then
 	global.linux.bootargs.dyn.ip="ip=dhcp"
+elif [ $ip = dhcp-barebox ]; then
+	global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
 else
 	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
 fi
diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
index 37b986c..554c35e 100644
--- a/defaultenv-2/base/bin/ifup
+++ b/defaultenv-2/base/bin/ifup
@@ -52,7 +52,7 @@ if [ "$ip" = static ]; then
 	${interface}.serverip=$serverip
 	${interface}.gateway=$gateway
 	ret=0
-elif [ "$ip" = dhcp ]; then
+elif [ "$ip" = dhcp -o "$ip" = dhcp-barebox ]; then
 	dhcp
 	ret=$?
 	if [ $ret = 0 -a -n "$serverip" ]; then
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
