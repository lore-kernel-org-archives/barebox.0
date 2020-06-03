Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNMP-0002ZZ-5P
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 06:58:50 +0000
Received: by mail-lj1-x22f.google.com with SMTP id z18so1282536lji.12
 for <barebox@lists.infradead.org>; Tue, 02 Jun 2020 23:58:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Jun 2020 09:58:45 +0300
Message-Id: <20200603065845.30099-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] logo: Makefile: make it possible to use inkscape 1.0
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/logo/Makefile | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index eb7aee080e..bf700da89b 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,17 +1,17 @@
 
-OPTS_barebox-logo-w64.bblogo="-w 64"
+OPTS_barebox-logo-w64.bblogo = --export-width=64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
 
-OPTS_barebox-logo-w240.bblogo="-w 240"
+OPTS_barebox-logo-w240.bblogo = --export-width=240
 bblogo-$(CONFIG_BAREBOX_LOGO_240) += barebox-logo-w240
 
-OPTS_barebox-logo-w320.bblogo="-w 320"
+OPTS_barebox-logo-w320.bblogo = --export-width=320
 bblogo-$(CONFIG_BAREBOX_LOGO_320) += barebox-logo-w320
 
-OPTS_barebox-logo-w400.bblogo="-w 400"
+OPTS_barebox-logo-w400.bblogo = --export-width=400
 bblogo-$(CONFIG_BAREBOX_LOGO_400) += barebox-logo-w400
 
-OPTS_barebox-logo-w640.bblogo="-w 640"
+OPTS_barebox-logo-w640.bblogo = --export-width=640
 bblogo-$(CONFIG_BAREBOX_LOGO_640) += barebox-logo-w640
 
 obj-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
@@ -38,10 +38,17 @@ cmd_logo_S =							\
 %.bblogo.S: %.bblogo FORCE
 	$(call if_changed,logo_S)
 
+# Inkscape 0.92.4 supports -z but Inkscape 1.0 doesn't
+INKSCAPEOPTS += $(call try-run, inkscape -z,-z,)
+# Inkscape 0.92.4 uses -e but Inkscape 1.0 uses --export-type=png
+INKSCAPEOPTS += $(call try-run, inkscape -e -,-e -,--export-type=png)
+# Inkscape 1.0 supports -o -
+INKSCAPEOPTS += $(call try-run, inkscape -o -,-o -,)
+
 quiet_cmd_logo = LOGO.S   $@
 cmd_logo =							\
 (								\
-	inkscape -z $(OPTS_$(@F)) -e $@ $< > /dev/null;		\
+	DISPLAY="" inkscape $(OPTS_$(@F)) $(INKSCAPEOPTS) $< > $@; \
 )
 
 %.bblogo: $(srctree)/Documentation/barebox.svg FORCE
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
