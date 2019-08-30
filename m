Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gCF-0008Pd-9Y
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 12:40:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Aug 2019 14:40:01 +0200
Message-Id: <20190830124001.32053-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Documentation: efi: fix typos
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 3da2daac99ef..2178c9ab4293 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -43,7 +43,7 @@ name it ``BOOTx64.EFI`` on 64bit architectures and ``BOOTIA32.EFI`` on 32bit
 architectures. Switching to USB boot in the BIOS should then be enough to
 start barebox via USB. Some BIOSes allow to specify a path to a binary to
 be executed, others have a "start UEFI shell" entry which executes
-EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary aswell.
+EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary as well.
 To use the :ref:`state_framework`, the describing devicetree file ``state.dtb``
 has to be put into the ``EFI/barebox/`` directory.
 Supported backends for EFI are raw partitions that can be discovered via a
@@ -200,7 +200,7 @@ EFI device paths
 
 In EFI each device can be pointed to using a device path. Device paths have multiple
 components. The toplevel component on X86 systems will be the PCI root complex, on
-other systems this can be the physical memory space. Each component will now descrive
+other systems this can be the physical memory space. Each component will now describe
 how to find the child component on the parent bus. Additional device path nodes can
 describe network addresses or filenames on partitions. Device paths have a binary
 representation and a clearly defined string representation. These characteristics make
@@ -274,7 +274,7 @@ Network Protocol GUID:
     EFI_GUID( 0xA19832B9, 0xAC25, 0x11D3, 0x9A, 0x2D, 0x00, 0x90, 0x27, 0x3F, 0xC1, 0x4D )
 
 Matching between EFI devices and drivers is done based on the Protocol GUIDs, so
-whenever a driver GUID matches one of the GUIDs a device imeplements the drivers
+whenever a driver GUID matches one of the GUIDs a device implements the drivers
 probe function is called.
 
 .. _efi_building_edk2:
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
