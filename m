Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0002cH-KN
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:06 +0200
Message-Id: <1287765924-1856-15-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/32] doc: mark code explicitely
To: barebox@lists.infradead.org

Silence this warning:
arch/arm/mach-omap/arch-omap.dox:51: Warning: explicit link request to 'define' could not be resolved

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/mach-omap/arch-omap.dox |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap/arch-omap.dox b/arch/arm/mach-omap/arch-omap.dox
index df16b7b..9c90b4f 100644
--- a/arch/arm/mach-omap/arch-omap.dox
+++ b/arch/arm/mach-omap/arch-omap.dox
@@ -50,7 +50,11 @@ All basic devices you'd like to register should be put here with postcore_initca
 All OMAP common headers are located here. Where we have to incorporate a OMAP variant specific header, add a omapX_function_name.h.
 @warning Do not add board specific header files/information here. Put them in mach-omap.
 
-include/asm-arm/arch-omap/silicon.h contains includes for omapX-silicon.h which defines the base addresses for the peripherals on that platform. the usual convention is to use #define OMAP_SOMETHING_BASE to allow re-use.
+include/asm-arm/arch-omap/silicon.h contains includes for omapX-silicon.h which defines the base addresses for the peripherals on that platform. the usual convention is to use
+@code
+#define OMAP_SOMETHING_BASE
+@endcode
+to allow re-use.
 
 @section board_omap arch/arm/boards/omap directory guidelines
 All Board specific files go here. In u-boot, we always had to use common config file which is shared by other drivers to get serial, ethernet baseaddress etc.. we can easily use the device_d structure to handle it with @a barebox. This is more like programming for Linux kernel - it is pretty easy.
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
