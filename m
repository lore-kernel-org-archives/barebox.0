Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp0HF-0001u6-W8
 for barebox@lists.infradead.org; Sun, 03 May 2015 20:14:14 +0000
Received: by pabtp1 with SMTP id tp1so142975865pab.2
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 13:13:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 13:13:12 -0700
Message-Id: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] Makefile.lib: Fix i.MX image size after generation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If called with '-b' option 'imx-image' tool prepends barebox header to
the image, but the tool does not fill the data at image size offset
correctly. Call 'fix_size', right after 'imx-image' to fix that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/Makefile.lib | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e991f33..c140d16 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -431,7 +431,8 @@ imximg-tmp = $(subst $(comma),_,$(dot-target).imxcfg.tmp)

 quiet_cmd_imx_image = IMX-IMG $@
       cmd_imx_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
-		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $<
+		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $<; \
+		      $(objtree)/scripts/fix_size -f $@

 quiet_cmd_kwb_image = KWB     $@
       cmd_kwb_image = scripts/kwbimage -p $< $(OPTS_$(@F)) -o $@
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
