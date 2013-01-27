Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlX-0008Vx-FE
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:47:02 +0100
Message-Id: <1359283623-1782-34-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/34] ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT
To: barebox@lists.infradead.org

HAVE_CONFIGURABLE_MEMORY_LAYOUT was first meant as a feature, now it's a
feature to remove it. barebox on ARM now completely uses the memory passed
in from the lowlevel code and configures the malloc area and stack space
during runtime making it obsolete to hardcode these values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig            |    1 -
 arch/arm/pbl/zbarebox.lds.S |    8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6f7a71f..28332ec 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2,7 +2,6 @@ config ARM
 	bool
 	select HAS_KALLSYMS
 	select HAS_MODULES
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index 37af4e9..564b3c6 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -20,7 +20,7 @@
  * MA 02111-1307 USA
  *
  */
-
+#include <sizes.h>
 #include <asm-generic/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
@@ -29,7 +29,7 @@ OUTPUT_ARCH(arm)
 ENTRY(pbl_start)
 SECTIONS
 {
-	. = HEAD_TEXT_BASE;
+	. = TEXT_BASE - SZ_2M;
 
 	PRE_IMAGE
 
@@ -71,6 +71,6 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
-	_barebox_image_size = __piggydata_end - HEAD_TEXT_BASE;
-	_barebox_pbl_size = __bss_start - HEAD_TEXT_BASE;
+	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
+	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
