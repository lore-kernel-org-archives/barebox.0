Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gucqR-0002sq-11
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:44:01 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 15 Feb 2019 13:43:51 +0100
Message-Id: <20190215124351.30374-5-o.rempel@pengutronix.de>
In-Reply-To: <20190215124351.30374-1-o.rempel@pengutronix.de>
References: <20190215124351.30374-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 4/4] Documentation: efi: provide (U)EFI watchdog
 documentation
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/boards/efi.rst | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index f59bb1d5ba..749acce811 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -216,7 +216,6 @@ has a device parameter ``devpath`` which contains its device path:
   barebox:/ echo ${handle-00000000d0012198.devpath}
   pci_root(0)/Pci(0x1d,0x0)/Usb(0x1,0x0)/Usb(0x2,0x0)
 
-
 EFI variables
 -------------
 
@@ -327,3 +326,38 @@ compile EDK2.
                    mov     %fs, %rax
                    pushq   %rax
 
+(U)EFI Watchdog
+---------------
+
+(U)EFI provides basic watchdog support. Depending on the system implementation
+it can be a software or hardware watchdog. Within the (U)EFI specification it
+is described as follows:
+
+.. epigraph::
+
+   If the watchdog timer expires, the event is logged by the firmware. The system
+   may then either reset with the Runtime Service ResetSystem(), or perform a
+   platform specific action that must eventually cause the platform to be reset.
+   The watchdog timer is armed before the firmware's boot manager invokes an EFI
+   boot option.  The watchdog must be set to a period of 5 minutes. The EFI Image
+   may reset or disable the watchdog timer as needed. If control is returned to
+   the firmware's boot manager, the watchdog timer must be disabled.  The watchdog
+   timer is only used during boot services. On successful completion of
+   ExitBootServices() the watchdog timer is disabled.
+
+See page 186:
+https://uefi.org/sites/default/files/resources/UEFI_Spec_2_1_D.pdf
+
+Current linux kernel (v5.0) will execute ExitBootServices() during the early
+boot stage and thus will automatically disable the (U)EFI watchdog. Since it is
+a proper behavior according to the (U)EFI specification, it is impossible to
+protect full boot chain by using this watchdog only. It is recommended to use
+an alternative hardware watchdog, preferably started before the bootloader. If (U)EFI
+firmware lacks this feature, the bootloader should be able to start an alternative
+hardware watchdog on its own. Before implementing this kind of workaround
+please make sure (U)EFI watchdog is not using the same hardware as the alternative
+watchdog.
+
+Nevertheless, barebox provides access to the (U)EFI SetWatchdogTimer()
+interface over its internal watchdog framework.
+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
