Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbUZe-0002A5-A7
 for barebox@lists.infradead.org; Sun, 12 May 2013 11:36:18 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Sun, 12 May 2013 13:35:53 +0200
Message-Id: <1368358553-22936-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH] arm: ensure the build doesn't fail when kwbimage lacks the
 binary blob
To: barebox@lists.infradead.org

mach-mvebu images for Armada 370 and Armada XP SoC require a DDR3
training code which should be extracted from existing bootable images
for the relevant board. When such binary blob has not been extracted,
the build of the .kwb and .kwbuart images will fail. This is annoying
as it makes the build of all Armada 370/XP defconfig fail, which can
be a problem for automated builds.

This proposal makes the failure of kwbimage not a fatal failure for
the build process, and shows a warning. The user therefore sees:

====================================================================
  KWB     barebox.kwb
Didn't find the file 'plathome-openblocks-ax3-binary.0' in '/home/thomas/projets/barebox' which is mandatory to generate the image
This file generally contains the DDR3 training code, and should be extracted from an existing bootable
image for your board. See 'kwbimage -x' to extract it from an existing image.
Could not create image
WARNING: Couldn't create KWB image due to previous errors.
  KWBUART barebox.kwbuart
Didn't find the file 'plathome-openblocks-ax3-binary.0' in '/home/thomas/projets/barebox' which is mandatory to generate the image
This file generally contains the DDR3 training code, and should be extracted from an existing bootable
image for your board. See 'kwbimage -x' to extract it from an existing image.
Could not create image
WARNING Couldn't create KWB image due to previous errors.
====================================================================

The only drawback is that barebox-flash-image, which normally points
to barebox.kwb, becomes a state symbolic link.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Makefile |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ce0921d..af8294d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -270,10 +270,12 @@ KWBIMAGE_OPTS = \
 	-c -i $(srctree)/$(BOARD)/kwbimage.cfg -d $(TEXT_BASE) -e $(TEXT_BASE)
 
 quiet_cmd_kwbimage = KWB     $@
-      cmd_kwbimage = scripts/kwbimage -p $< $(KWBIMAGE_OPTS) -o $@
+      cmd_kwbimage = scripts/kwbimage -p $< $(KWBIMAGE_OPTS) -o $@ || \
+	echo "WARNING: Couldn't create KWB image due to previous errors."
 
 quiet_cmd_kwbimage_uart = KWBUART $@
-      cmd_kwbimage_uart = scripts/kwbimage -m uart -p $< $(KWBIMAGE_OPTS) -o $@
+      cmd_kwbimage_uart = scripts/kwbimage -m uart -p $< $(KWBIMAGE_OPTS) -o $@ || \
+	echo "WARNING Couldn't create KWB image due to previous errors."
 
 barebox.kwb: $(KBUILD_BINARY) FORCE
 	$(call if_changed,kwbimage)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
