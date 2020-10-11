Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRjC2-000410-L1
 for barebox@lists.infradead.org; Sun, 11 Oct 2020 21:47:52 +0000
Received: from geraet.fritz.box (unknown [83.135.80.59])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C230A240002
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2020 21:47:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 11 Oct 2020 23:47:42 +0200
Message-Id: <20201011214742.697502-1-ahmad@a3f.at>
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
Subject: [PATCH] logo: Makefile: fix indentation of LOGO.S in quiet output
To: barebox@lists.infradead.org

Output currently looks like this:

  CC      commands/printenv.o
  LOGO.S   lib/logo/barebox-logo-w64.bblogo
  CC      arch/sandbox/board/devices.o

Drop one space, so it's aligned with the usual two letter prefixes.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/logo/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 3d0f1c24c640..4149d4ff6c0c 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -21,7 +21,7 @@ extra-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
 
 obj-$(CONFIG_BAREBOX_LOGO) += logo.o
 
-quiet_cmd_logo_S = LOGO.S   $@
+quiet_cmd_logo_S = LOGO.S  $@
 cmd_logo_S =							\
 (								\
 	echo '\#include <asm-generic/barebox.lds.h>';		\
@@ -43,7 +43,7 @@ INKSCAPEOPTS += $(call try-run, inkscape -z -e -,-z -e -,--export-type=png)
 # Inkscape 1.0 supports -o -
 INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
 
-quiet_cmd_logo = LOGO.S   $@
+quiet_cmd_logo = LOGO.S  $@
 cmd_logo =							\
 (								\
 	inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
