Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3tZv-0002k2-Vb
 for barebox@lists.infradead.org; Fri, 20 May 2016 23:11:36 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 20 May 2016 23:11:13 +0000
Message-ID: <1463785878.15779.62.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <16C7626435CCC249BE6295261D1F284F@kymetacorp.com>
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
Subject: [PATCH 2/2] socfpga: Stop putting 512 byte header on SocFPGA images
To: barebox <barebox@lists.infradead.org>

Since images without the extra header now boot correctly, stop adding
it.  This makes the image 512 bytes smaller.

It also gives the image a correct barebox header.  The 512 byte extra
header looked like a barebox header (had a "barebox\n" signature) but
had incorrect size and text start fields.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 images/Makefile.socfpga | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 7e642c0..21804d9 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -5,7 +5,7 @@
 # %.socfpgaimg - convert into socfpga image
 # ----------------------------------------------------------------
 quiet_cmd_socfpga_image = SOCFPGA-IMG $@
-      cmd_socfpga_image = scripts/socfpga_mkimage -b -o $@ $<
+      cmd_socfpga_image = scripts/socfpga_mkimage -o $@ $<
 
 $(obj)/%.socfpgaimg: $(obj)/% FORCE
 	$(call if_changed,socfpga_image)
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
