Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTzH-00052d-43
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:03:00 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 78465FF8BC2
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:03:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:47:55 +0200
Message-Id: <1333082876-22403-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] at91rm9200ek: update config for network
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

set vendor-id to barebox-at91rm9200ek and the kernel over nfs

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/env/config |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
index d1d9e8e..92101e6 100644
--- a/arch/arm/boards/at91rm9200ek/env/config
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -3,6 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
+dhcp_vendor_id=barebox-at91rm9200ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
@@ -11,7 +12,7 @@ ip=dhcp-barebox
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nor'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nor' or 'initrd'
 rootfs_loc=net
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
