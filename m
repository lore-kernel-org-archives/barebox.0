Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ed-0000cg-Gw
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:22 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8EE17104E9CC
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:04 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:35 +0100
Message-Id: <1359904236-11622-35-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 35/36] ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
