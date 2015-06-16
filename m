Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pZp-0003IM-HB
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 12:02:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pZU-0007Bh-Bn
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 14:02:28 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pZU-00082m-6F
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 14:02:28 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 14:02:24 +0200
Message-Id: <1434456145-21912-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434456145-21912-1-git-send-email-jbe@pengutronix.de>
References: <1434456145-21912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] Documentation: add some info about the reset reason
 framework
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/reset-reason.rst | 47 +++++++++++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst  |  1 +
 2 files changed, 48 insertions(+)
 create mode 100644 Documentation/user/reset-reason.rst

diff --git a/Documentation/user/reset-reason.rst b/Documentation/user/reset-reason.rst
new file mode 100644
index 0000000..a4872fa
--- /dev/null
+++ b/Documentation/user/reset-reason.rst
@@ -0,0 +1,47 @@
+.. _reset_reason:
+
+Reset Reason
+------------
+
+To handle a device in a secure and safty manner many applications are using
+a watchdog or other ways to reset a system to bring it back into life if it
+hangs or crashes somehow.
+
+In these cases the hardware restarts and runs the bootloader again. Depending on
+the root cause of the hang or crash, the bootloader sometimes should not just
+re-start the main system again. Maybe it should do some kind of recovery instead.
+For example it should wait for another update (for the case the cause of a
+crash is a failed update) or should start into a fall back system instead.
+
+In order to handle failing systems gracefully the bootloader needs the
+information why it runs. This is called the "reset reason". It is provided by
+the global variable ``system.reset`` and can be used in scripts via
+``$global.system.reset``.
+
+The following values can help to detect the reason why the bootloader runs:
+
+* ``unknown``: the software wasn't able to detect the reset cause or there
+  isn't support for this feature at all.
+* ``POR`` (Power On Reset): a cold start. The power of the system
+  was switched on. This is a regular state and nothing to worry about.
+* ``RST`` (ReSeT): a warm start. The user has triggered a reset somehow. This
+  is a regular state and nothing to worry about.
+* ``WDG`` (WatchDoG): also some kind of warm start, but triggered by a watchdog
+  unit. It depends on the application if this reason signals a regular state
+  and therefore nothing to worry about, or if this state was entered by a hanging
+  or crashed system and must implicitly be handled.
+* ``WKE`` (WaKEup): a mixture of cold and warm start. The system is woken up
+  from some state of suspend. This is a regular state and nothing to worry
+  about.
+* ``JTAG``: an external JTAG based debugger has triggered the reset.
+* ``THERM`` (THERMal): some SoCs are able to detect if they got reset in
+  response to an overtemperature event. This can be a regular state and nothing
+  to worry about (the reset has brought the system back into a safe state) or
+  must implicitly be handled.
+* ``EXT`` (EXTernal): some SoCs have special device pins for external reset
+  signals other than the ``RST`` one. Application specific how to handle this
+  state.
+
+It depends on your board/SoC and its features if the hardware is able to detect
+these reset reasons. Most of the time only ``POR`` and ``RST`` are supported
+but often ``WDG`` as well.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 3d68bbb..1fc6883 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -28,6 +28,7 @@ Contents:
    ubi
    booting-linux
    system-setup
+   reset-reason
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
