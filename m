Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHWvI-0001rn-1I
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:59:37 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CA904FF9046
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 11:00:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Apr 2012 10:42:18 +0200
Message-Id: <1334047344-8533-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120410082259.GH29577@game.jcrosoft.org>
References: <20120410082259.GH29577@game.jcrosoft.org>
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
Subject: [PATCH 1/7] usb-a926x: update DHCP vendor ID
To: barebox@lists.infradead.org

Depending on machine id.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/env/config |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index 1f72803..d073620 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -3,7 +3,9 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-at91sam9x5ek
+[ x$armlinux_architecture = x1709 ] && dhcp_vendor_id=barebox-usb-a9260
+[ x$armlinux_architecture = x1710 ] && dhcp_vendor_id=barebox-usb-a9263
+[ x$armlinux_architecture = x1841 ] && dhcp_vendor_id=barebox-usb-a9g20
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
