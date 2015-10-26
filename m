Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqooP-0001a9-54
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 20:56:13 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 26 Oct 2015 20:55:30 +0000
Message-ID: <1445892950.4488.20.camel@localhost>
Content-Language: en-US
Content-ID: <58A22525E17947428B83F5FB4F0BB429@kymetacorp.com>
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
Subject: [PATCH v2] Make list of flash images and fix link all single image
 cases
To: barebox <barebox@lists.infradead.org>

Create a new file named 'barebox-flash-images' in the top level output
directory that lists each image generated, one per line.  Paths will
be relative to the top level output directory.  This works if multiple
images are generated as well as for a single image.

Also update the existing barebox-flash-image symlink to point to the
image in all cases where there is a single image generated.  If
multiple images are generated, it will point to the non-existent file
'multi-image-build'.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---

This version makes a list, and thus works in a multiple images case
and presents a way forward for build systems like buildroot.

It also updates the link.  While a symlink is no longer ideal, if you
consider the two possibilities:
A) A link is made in all single image builds.
B) A link is made in some single image builds but not others, based
on an obscure detail in the internal build system that few barebox 
users are aware of.

It seems clear that A is more sensible than B.

In a multiple image build, the link is made but points to a non-existent
file whose name should clue the user in as to why it doesn't point to
an image.  This has the nice effect that with the current buildroot,
one gets an error in a multiple image build rather than buildroot silently
using the incorrect image file.

 Makefile        |  5 ++++-
 images/Makefile | 18 +++++++++++++++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 9b10077..b067b00 100644
--- a/Makefile
+++ b/Makefile
@@ -484,6 +484,9 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
+barebox-flash-images: $(KBUILD_IMAGE)
+	@echo $^ > $@
+
 images: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 images/%.s: barebox.bin FORCE
@@ -492,7 +495,7 @@ images/%.s: barebox.bin FORCE
 ifdef CONFIG_PBL_MULTI_IMAGES
 all: barebox.bin images
 else
-all: barebox-flash-image
+all: barebox-flash-image barebox-flash-images
 endif
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
diff --git a/images/Makefile b/images/Makefile
index a5f589b..6a44511 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -121,10 +121,26 @@ targets += $(foreach m, $(image-y), $(FILE_$(m)))
 
 SECONDARY: $(addprefix $(obj)/,$(targets))
 
-images: $(addprefix $(obj)/, $(image-y)) FORCE
+# Images with full paths
+image-y-path := $(addprefix $(obj)/,$(image-y))
+# File will have a list of images generated
+flash-list := $(obj)/../barebox-flash-images
+# Symlink, which will point to non-existent 'multi-image-build' if there are
+# multiple images
+flash-link := $(obj)/../barebox-flash-image
+link-dest := $(if $(filter 1,$(words $(image-y))),$(image-y-path),multi-image-build)
+multi-image-build:
+
+images: $(image-y-path) $(flash-link) $(flash-list) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do echo $$i; done
 
+$(flash-link): $(link-dest) FORCE
+	$(call if_changed,ln)
+
+$(flash-list): $(image-y-path)
+	@for i in $^; do echo $$i; done > $@
+
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
