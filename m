Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRXu8-0005Ax-4c
 for barebox@lists.infradead.org; Sun, 11 Oct 2020 09:44:36 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 11 Oct 2020 11:44:03 +0200
Message-Id: <20201011094402.551050-1-ahmad@a3f.at>
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
Subject: [PATCH master v2] logo: Makefile: fix Inkscape >= v1.0 Wayland GUI
 opening on LOGO.S
To: barebox@lists.infradead.org

DISPLAY="" only affects X11 windows. Building sandbox_defconfig under
Wayland will still result in annoying Inkscape windows being opened.

This happens due to $(call try-run, inkscape -z,-z). Inkscape v1.0
deprecates -z and it's without an effect, so Inkscape will try
to create a window, which failed under x11, but succeeded under Wayland.

Fix this by always testing -z and -e together. We don't need one or
the other anyway, because Inkscape v1.0, which supports neither,
already uses no GUI for --export-type=png.

This makes DISPLAY="" unnecessary. So just drop it.

Tested working on Inkscape 1.0.1 and 0.92.4.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Cc: Antony Pavlov <antonynpavlov@gmail.com>

v1 -> v2:
  - --shell behavior differs between v0.* and v1.* and it resulted in
    broken images on v1.*
---
 lib/logo/Makefile | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index bf700da89b03..3d0f1c24c640 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -38,17 +38,15 @@ cmd_logo_S =							\
 %.bblogo.S: %.bblogo FORCE
 	$(call if_changed,logo_S)
 
-# Inkscape 0.92.4 supports -z but Inkscape 1.0 doesn't
-INKSCAPEOPTS += $(call try-run, inkscape -z,-z,)
-# Inkscape 0.92.4 uses -e but Inkscape 1.0 uses --export-type=png
-INKSCAPEOPTS += $(call try-run, inkscape -e -,-e -,--export-type=png)
+# Inkscape 0.92.4 supports -z -e but Inkscape 1.0 uses --export-type=png
+INKSCAPEOPTS += $(call try-run, inkscape -z -e -,-z -e -,--export-type=png)
 # Inkscape 1.0 supports -o -
 INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
 
 quiet_cmd_logo = LOGO.S   $@
 cmd_logo =							\
 (								\
-	DISPLAY="" inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
+	inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
 )
 
 %.bblogo: $(srctree)/Documentation/barebox.svg FORCE
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
