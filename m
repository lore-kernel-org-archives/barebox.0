Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTu-00017T-1E
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pTP-0006RC-Bu
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:11 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pTN-0004UK-HF
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:09 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:04 +0200
Message-Id: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/6] Documentation: add some info about the reset variants
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/system-reset.rst | 64 +++++++++++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst  |  1 +
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/user/system-reset.rst

diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
new file mode 100644
index 0000000..c2ee409
--- /dev/null
+++ b/Documentation/user/system-reset.rst
@@ -0,0 +1,64 @@
+.. _system_reset:
+
+System Reset
+------------
+
+When running the reset command barebox restarts the SoC somehow. Reset can
+be done in software, but a more reliable way is to use a hard reset line, which
+really resets the SoC.
+The most common way to force such a hard reset is by using a watchdog. Its
+trigger time will be setup as short as possible and after that the software just
+waits for its reset. Very simple and most of the time it does what's expected.
+
+But there are some drawbacks within this simple approach.
+
+* most used watchdogs are built-in units in the SoCs. There is nothing wrong
+  with that, but these units can mostly reset the CPU core and sometimes a little
+  bit more of the SoC. This means this reset is not exactly the same than the
+  real POR (e.g. power on reset). In this case you must still handle different
+  hardware in a special way because it hasn't seen the reset the CPU has seen.
+  Enabled DMA units for example can continue to run and transfer data while the
+  CPU core runs through its reset code. This can trigger very strange failures.
+
+* when interacting with flash memories (mostly NOR types and used to store the
+  root filesystem) it cannot provide data (sometimes called 'array mode') the
+  CPU wants to read after a reset while it is still in some programming mode.
+  And if the software is currently changing some data inside the flash and
+  an internal reset happens the CPU and the flash memory are doing different
+  things and the system hangs until a real POR which also resets the flash
+  memory into the 'array mode'.
+
+* some SoC's boot behaviour gets parametrized by so called 'bootstrap pins'.
+  These pins can have a different meaning at reset time and at run-time later
+  on (multi purpose pins) but their correct values at reset time are very
+  important to boot the SoC sucessfully. If external devices are connected to
+  these multi purpose pins they can disturb the reset values, and so parametrizing
+  the boot behaviour differently and hence crashing the SoC until the next real
+  POR happens which also resets the external devices (and keep them away from the
+  multi purpose pins).
+
+* when power management comes into play another level of failure is
+  possible. To save power the software can lower the clock(s), but to really
+  save power, the power supply voltages must be lowered as well. Most PMICs
+  (e.g. power management controllers) are dedicated external companion devices,
+  loosely connected to their SoC. If the SoC's internal reset source now resets
+  the CPU it may increases its clock(s) back to the frequencies after a POR, but
+  the external PMIC still provides voltages related to lower frequencies. The
+  system isn't consistent any more. If you are in luck, the SoC still works
+  somehow, even if the voltages are out of their specifications for the
+  currently used clock speeds. But don't rely on it.
+
+To workaround these issues the reset signal triggered by a SoC internal source
+must be 'visible' to the external devices to also reset them like a real POR do.
+But many SoCs do not provide such a signal. So you can't use the internal reset
+source if you face one of the above listed issues!
+
+A different solution is to use the PMIC (if available) to trigger the reset.
+Many PMICs provide their own watchdog units and if they trigger a reset they
+also switch their voltages back to the real POR values. This will be a system
+wide reset, like the POR is.
+
+Drawback of the PMIC solution is, you can't use the SoC's internal mechanisms to
+detect the :ref:`reset_reason` anymore. From the SoC point of view it is always
+a POR when the PMIC handles the system reset. If you are in luck the PMIC
+instead can provide this information if you depend on it.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 1fc6883..0d6daee 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -29,6 +29,7 @@ Contents:
    booting-linux
    system-setup
    reset-reason
+   system-reset
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
