Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoRg-0002IN-MT
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 10:01:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0003Ty-Ao
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0001xt-2D
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 17 Jun 2019 12:00:54 +0200
Message-Id: <20190617100056.25331-3-m.felsch@pengutronix.de>
In-Reply-To: <20190617100056.25331-1-m.felsch@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] defaultenv-2: net: fix comment
To: barebox@lists.infradead.org

Since commit acc3a3ef90 ("net: environment: update automounts") the tftp
automount mechanism uses all network interfaces.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 defaultenv/defaultenv-2-base/init/automount | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/init/automount b/defaultenv/defaultenv-2-base/init/automount
index 5e0cb4d938..0996cea04d 100644
--- a/defaultenv/defaultenv-2-base/init/automount
+++ b/defaultenv/defaultenv-2-base/init/automount
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-# automount tftp server based on $eth0.serverip
+# automount tftp server
 
 mkdir -p /mnt/tftp
 automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
