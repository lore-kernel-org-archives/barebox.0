Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RW7-0004FH-Uo
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:33:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:32:45 +0100
Message-Id: <1390987965-3236-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] images: remove unused command
To: barebox@lists.infradead.org

cmd_selfextract is unused. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 4ff0602..cfe3092 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -88,11 +88,6 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
 $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
 	$(call if_changed,$(suffix_y))
 
-quiet_cmd_selfextract = COMP    $@
-      cmd_selfextract = cat $(obj)/start_uncompress.pblb > $@; \
-			$(call size_append, $<) >> $@; \
-			cat $< >> $@
-
 # %.img - create a copy from another file
 # ----------------------------------------------------------------
 .SECONDEXPANSION:
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
