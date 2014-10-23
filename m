Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x22e.google.com ([2607:f8b0:400d:c01::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XhJHC-00072i-48
 for barebox@lists.infradead.org; Thu, 23 Oct 2014 14:22:06 +0000
Received: by mail-qc0-f174.google.com with SMTP id i8so803967qcq.19
 for <barebox@lists.infradead.org>; Thu, 23 Oct 2014 07:21:44 -0700 (PDT)
From: Dmitry Voytik <voytikd@gmail.com>
Date: Thu, 23 Oct 2014 18:21:38 +0400
Message-Id: <1414074098-13717-1-git-send-email-voytikd@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: imx23-olinuxino: discover usb before ifup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Dmitry Voytik <voytikd@gmail.com>, barebox@lists.infradead.org

i.MX233 in OLinuXino uses LAN9512 for Ethernet connection.
LAN9512 is connected to USB. Execute usb command before bringing
network up.

This patch makes 'ifup eth0' workable.

Signed-off-by: Dmitry Voytik <voytikd@gmail.com>
---
 arch/arm/boards/imx233-olinuxino/env/network/eth0-discover | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 arch/arm/boards/imx233-olinuxino/env/network/eth0-discover

diff --git a/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover b/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
new file mode 100644
index 0000000..76494fe
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+#  In OLinuXino board i.MX233 SoC uses LAN9512 (attached to USB) to connect
+#  to an Ethernet LAN.
+
+usb
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
