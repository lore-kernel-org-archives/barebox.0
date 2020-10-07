Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ66P-0005s1-R4
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 09:51:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>) id 1kQ66N-0001BF-Os
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 11:51:15 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed,  7 Oct 2020 11:51:09 +0200
Message-Id: <20201007095109.23370-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] Documentation: efi: update SnpDxe build instructions
To: barebox@lists.infradead.org

Some sources have been moved into git submodules and SnpDxe was
moved from MdeModulePkg to NetworkPkg.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 Documentation/boards/efi.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index f04b1d32378b..b12433014ef1 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -294,18 +294,19 @@ HOWTOs in the net, for example on http://tianocore.sourceforge.net/wiki/Using_ED
 
   git clone git://github.com/tianocore/edk2.git
   cd edk2
+  git submodule update --init
   make -C BaseTools
   . edksetup.sh
 
 At least the following lines in ``Conf/target.txt`` should be edited::
 
-  ACTIVE_PLATFORM = MdeModulePkg/MdeModulePkg.dsc
+  ACTIVE_PLATFORM = NetworkPkg/NetworkPkg.dsc
   TARGET_ARCH = X64
   TOOL_CHAIN_TAG = GCC48
   MAX_CONCURRENT_THREAD_NUMBER = 4
 
 The actual build is started with invoking ``build``. After building
-``Build/MdeModule/DEBUG_GCC48/X64/SnpDxe.efi`` should exist.
+``Build/NetworkPkg/DEBUG_GCC48/X64/SnpDxe.efi`` should exist.
 
 **NOTE** As of this writing (July 2014) the following patch was needed to
 compile EDK2.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
