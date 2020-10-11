Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRWNL-0007Cb-80
 for barebox@lists.infradead.org; Sun, 11 Oct 2020 08:06:40 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 11 Oct 2020 10:06:25 +0200
Message-Id: <20201011080625.470522-1-ahmad@a3f.at>
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
Subject: [PATCH master] logo: Makefile: fix inkscape Wayland GUI opening on
 LOGO.S
To: barebox@lists.infradead.org

DISPLAY="" only affects x11 clients. Building sandbox_defconfig under
Wayland will still result in annoying inkscape windows being opened.
Drop DISPLAY = "" in favor of --shell, which should never display
a GUI. --shell has been part of inkscape since 2009 and so should be
generally available.

There is also --without-gui, but that is now deprecated and without
effect. --shell tested working on Inkscape 1.0.1 with both
GDK_BACKEND=wayland and GDK_BACKEND=x11.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Cc: Antony Pavlov <antonynpavlov@gmail.com>

Hello Sascha,

can this be applied to master?
---
 lib/logo/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index bf700da89b03..f0fe2c85477b 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -39,16 +39,16 @@ cmd_logo_S =							\
 	$(call if_changed,logo_S)
 
 # Inkscape 0.92.4 supports -z but Inkscape 1.0 doesn't
-INKSCAPEOPTS += $(call try-run, inkscape -z,-z,)
+INKSCAPEOPTS += $(call try-run, inkscape --shell -z,-z,)
 # Inkscape 0.92.4 uses -e but Inkscape 1.0 uses --export-type=png
-INKSCAPEOPTS += $(call try-run, inkscape -e -,-e -,--export-type=png)
+INKSCAPEOPTS += $(call try-run, inkscape --shell -e -,-e -,--export-type=png)
 # Inkscape 1.0 supports -o -
-INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
+INKSCAPEOPTS += $(call try-run, inkscape --shell -o -,-o -,)
 
 quiet_cmd_logo = LOGO.S   $@
 cmd_logo =							\
 (								\
-	DISPLAY="" inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
+	inkscape --shell $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
 )
 
 %.bblogo: $(srctree)/Documentation/barebox.svg FORCE
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
