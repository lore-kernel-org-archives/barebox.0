Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zoem1-0001GJ-FV
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 21:48:50 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 20 Oct 2015 21:47:30 +0000
Message-ID: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
Content-Language: en-US
Content-ID: <7A77CF4CD0E078429256D8A32D9E510C@kymetacorp.com>
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
Subject: [PATCH] Make barebox flashable image link for "multi-image" targets
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

For a target with multi-image support, no barebox-flash-image link is
made pointing to the finished flashable image.  This makes it hard for
buildroot to figure out which file is the barebox image.  And one has
to assume this link is generally useful and convenient to users of
barebox, or why would it have been created in the first place?

This patch to the multi-image build will create that link.

It only works when a single image is made.  If one is making multiple
images, then the concept of a single finished image no longer applies,
and no link is made.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 images/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index a5f589b..fcdf404 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -121,10 +121,16 @@ targets += $(foreach m, $(image-y), $(FILE_$(m)))
 
 SECONDARY: $(addprefix $(obj)/,$(targets))
 
-images: $(addprefix $(obj)/, $(image-y)) FORCE
+# Set if there is only one image in image-y
+flash-link := $(if $(filter 1,$(words $(image-y))),$(obj)/../barebox-flash-image)
+
+images: $(addprefix $(obj)/, $(image-y)) $(flash-link) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do echo $$i; done
 
+$(flash-link): $(addprefix $(obj)/, $(image-y)) FORCE
+	$(call if_changed,ln)
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
