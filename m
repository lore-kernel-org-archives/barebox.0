Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAvoU-0001hR-Gc
 for barebox@lists.infradead.org; Wed, 17 May 2017 10:04:16 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 17 May 2017 12:03:48 +0200
Message-Id: <20170517100348.6268-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] Documentation: provide documentation for NVMEM interfaces.
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/nvmem.rst       | 30 ++++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 Documentation/user/nvmem.rst

diff --git a/Documentation/user/nvmem.rst b/Documentation/user/nvmem.rst
new file mode 100644
index 0000000000..f860b80fd5
--- /dev/null
+++ b/Documentation/user/nvmem.rst
@@ -0,0 +1,30 @@
+NVMEM subsystem
+===============
+
+The NVMEM framework was partially ported from linux kernel.
+
+Except from linux kernel documentation:
+*NVMEM* is the abbreviation for Non Volatile Memory layer. It is used to
+retrieve configuration of SOC or Device specific data from non volatile
+memories like eeprom, efuses and so on.
+
+Userspace binary interface
+^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Userspace can read/write the raw NVMEM file located at
+/dev/nvmem*
+
+.. code-block:: sh
+
+  md -s /dev/nvmem0 0+4
+  00000000: 00000000                                           ....
+
+  mw -d /dev/nvmem0 0 0x12345678
+
+  md -s /dev/nvmem0 0+4
+  00000000: 12345678                                           xV4.
+
+DeviceTree Binding
+^^^^^^^^^^^^^^^^^^
+
+See linux kernel Documentation/devicetree/bindings/nvmem/nvmem.txt
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 791c8e0979..b66782ef6a 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -34,6 +34,7 @@ Contents:
    system-reset
    state
    random
+   nvmem
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
