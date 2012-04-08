Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGq9F-0007jr-45
 for barebox@lists.infradead.org; Sun, 08 Apr 2012 11:19:10 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B94FEFF8315
 for <barebox@lists.infradead.org>; Sun,  8 Apr 2012 13:20:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  8 Apr 2012 13:02:21 +0200
Message-Id: <1333882941-19479-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mx53loco: set dhcp vendor id
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx53-loco/env/config |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index 92e2b18..98f5eaf 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -7,6 +7,7 @@ user=
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+dhcp_vendor_id=barebox-mx53-loco
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
