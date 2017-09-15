Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsmA8-0001ou-Rv
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 08:39:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dsm9i-0005Jd-Qr
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 10:39:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 15 Sep 2017 10:39:18 +0200
Message-Id: <20170915083922.25134-9-l.stach@pengutronix.de>
In-Reply-To: <20170915083922.25134-1-l.stach@pengutronix.de>
References: <20170915083922.25134-1-l.stach@pengutronix.de>
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
Subject: [PATCH 08/12] docs: add qemu vexpress
To: barebox@lists.infradead.org

Add a basic command line for QEMU vexpress.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/boards/arm-qemu-vexpress.rst | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 Documentation/boards/arm-qemu-vexpress.rst

diff --git a/Documentation/boards/arm-qemu-vexpress.rst b/Documentation/boards/arm-qemu-vexpress.rst
new file mode 100644
index 000000000000..dcbac8e62557
--- /dev/null
+++ b/Documentation/boards/arm-qemu-vexpress.rst
@@ -0,0 +1,20 @@
+QEMU vexpress
+=======
+
+ARM Qemu vexpress
+-----------------
+
+Running barebox on QEMU vexpress machine
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Usage::
+
+	$ qemu-system-arm -m 1024M \
+		-machine vexpress-a9 -cpu cortex-a9 \
+		-nographic -no-reboot \
+		-kernel images/barebox-vexpress-ca9.img
+
+	$ qemu-system-arm -m 1024M \
+		-machine vexpress-a15 -cpu cortex-a15 \
+		-nographic -no-reboot \
+		-kernel images/barebox-vexpress-ca15.img
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
