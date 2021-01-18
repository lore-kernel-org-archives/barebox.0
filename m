Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1bSJ-0002y7-2X
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:48:56 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bSH-0001d5-RH
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:48:53 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bSH-0002Cg-HK
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:48:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:48:50 +0100
Message-Id: <20210118204850.8420-2-m.felsch@pengutronix.de>
In-Reply-To: <20210118204850.8420-1-m.felsch@pengutronix.de>
References: <20210118204850.8420-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: blspec: Add blspec fixup documentation
To: barebox@lists.infradead.org

Document the fixup mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 60babb513c..fd7575bbe9 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -232,6 +232,28 @@ device where the entry is found on. This makes it possible to use the same rootf
 image on different devices without having to specify a different root= option each
 time.
 
+The following environment variables can be used to update the bootloader spec entry
+values on the fly.
+
+.. warning::
+
+  In most use cases this is not necessary. Modifying the bootloader spec values on
+  the fly can trigger unwanted boot behaviours.
+
++-----------------------------------------+
+| name                                    |
++=========================================+
+| global.blspec.fixup.devicetree          |
++-----------------------------------------+
+| global.blspec.fixup.initrd              |
++-----------------------------------------+
+| global.blspec.fixup.options             |
++-----------------------------------------+
+| global.blspec.fixup.linux               |
++-----------------------------------------+
+| global.blspec.fixup.devicetree-overlay  |
++-----------------------------------------+
+
 Network boot
 ------------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
