Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJPc-00015j-C7
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:23:05 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 23 Oct 2019 18:22:58 +0200
Message-Id: <20191023162259.21895-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 1/2] Documentation: add watchdog documentation
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/user-manual.rst |  1 +
 Documentation/user/watchdog.rst    | 85 ++++++++++++++++++++++++++++++
 2 files changed, 86 insertions(+)
 create mode 100644 Documentation/user/watchdog.rst

diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index f04981c3f0..41fdb8805c 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -34,6 +34,7 @@ Contents:
    state
    random
    debugging
+   watchdog
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
new file mode 100644
index 0000000000..7373b81a8d
--- /dev/null
+++ b/Documentation/user/watchdog.rst
@@ -0,0 +1,85 @@
+Watchdog Support
+================
+
+Barebox Watchdog Functionality
+------------------------------
+
+Nevertheless, in some cases we are not able to influence the hardware design
+anymore or while developing one needs to be able to feed the watchdog to
+disable it from within the bootloader. For these scenarios barebox provides the
+watchdog framework with the following functionality and at least
+``CONFIG_WATCHDOG`` should be enabled:
+
+Polling
+~~~~~~~
+
+Watchdog polling/feeding allows to feed the watchdog and keep it running on one
+side and to not reset the system on the other side. It is needed on hardware
+with short-time watchdogs. For example the Atheros ar9331 watchdog has a
+maximal timeout of 7 seconds, so it may reset even on netboot.
+Or it can be used on systems where the watchdog is already running and can't be
+disabled, an example for that is the watchdog of the i.MX2 series.
+This functionally can be seen as a threat, since in error cases barebox will
+continue to feed the watchdog even if that is not desired. So, depending on
+your needs ``CONFIG_WATCHDOG_POLLER`` can be enabled or disabled at compile
+time. Even if barebox was built with watchdog polling support, it is not
+enabled by default. To start polling from command line run:
+
+.. code-block:: console
+
+  wdog0.autoping=1
+
+The poller interval is not configurable, but fixed at 500ms and the watchdog
+timeout is configured by default to the maximum of the supported values by
+hardware. To change the timeout used by the poller, run:
+
+.. code-block:: console
+
+  wdog0.timeout_cur=7
+
+To read the current watchdog's configuration, run:
+
+.. code-block:: console
+
+  devinfo wdog0
+
+The output may look as follows where ``timeout_cur`` and ``timeout_max`` are
+measured in seconds:
+
+.. code-block:: console
+
+  barebox@DPTechnics DPT-Module:/ devinfo wdog0
+  Parameters:
+    autoping: 1 (type: bool)
+    timeout_cur: 7 (type: uint32)
+    timeout_max: 10 (type: uint32)
+
+Use barebox' environment to persist these changes between reboots:
+
+.. code-block:: console
+
+  nv dev.wdog0.autoping=1
+  nv dev.wdog0.timeout_cur=7
+
+Boot Watchdog Timeout
+~~~~~~~~~~~~~~~~~~~~~
+
+With this functionality barebox may start a watchdog or update the timeout of
+an already-running one, just before kicking the boot image. It can be
+configured temporarily via
+
+.. code-block:: console
+
+  global boot.watchdog_timeout=10
+
+or persistently by
+
+.. code-block:: console
+
+  nv boot.watchdog_timeout=10
+
+where the used value again is measured in seconds.
+
+On a system with multiple watchdogs, only the first one (wdog0) is affected by
+the ``boot.watchdog_timeout`` parameter.
+
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
