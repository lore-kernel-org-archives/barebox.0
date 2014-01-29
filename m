Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8Sxa-0006g1-Oe
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:05:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 12:05:07 +0100
Message-Id: <1390993508-10287-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
References: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] images: fix image size in pblx
To: barebox@lists.infradead.org

The pblx is a self extracting barebox binary. This doesn't have
the size of the image correctly set because the linker doesn't
generate it for relocatable binaries.
This currently only works on ARM, but this is the only architecture
supporting multi images anyway. TO make it work on other architectures
fix_size would have to be extended to recognize other images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 4ff0602..3e707e8 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -70,7 +70,8 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 quiet_cmd_pblx ?= PBLX    $@
       cmd_pblx ?= cat $(obj)/$(patsubst %.pblx,%.pblb,$(2)) > $@; \
 		  $(call size_append, $(obj)/barebox.z) >> $@; \
-		  cat $(obj)/barebox.z >> $@
+		  cat $(obj)/barebox.z >> $@; \
+		  $(objtree)/scripts/fix_size -f $@
 
 $(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.z FORCE
 	$(call if_changed,pblx,$(@F))
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
