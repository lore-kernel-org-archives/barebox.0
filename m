Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMp-00065a-Um
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:50 +0200
Message-Id: <1459241454-21155-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
References: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] scripts: Add scripts/include/ to include path for target
 programs
To: Barebox List <barebox@lists.infradead.org>

Programs compiled for the target need -I $(srctree)/scripts/include/ to
be able to include for example linux/err.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index aeedcac..a5c16b2 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -45,12 +45,13 @@ targetprogs-$(CONFIG_IMD_TARGET) += bareboximd-target
 subdir-	+= basic kconfig setupmbr
 
 quiet_cmd_csingle	= CC      $@
-      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
+      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(TARGETCFLAGS) $(CFLAGS) -o $@ $<
 
 __targetprogs	:= $(sort $(targetprogs-y) $(targetprogs-m))
 target-csingle	:= $(foreach m,$(__targetprogs),$(if $($(m)-objs),,$(m)))
 __targetprogs	:= $(addprefix $(obj)/,$(__targetprogs))
 target-csingle	:= $(addprefix $(obj)/,$(target-csingle))
+TARGETCFLAGS += -I$(srctree)/scripts/include/
 
 always		:= $(hostprogs-y) $(hostprogs-m) $(targetprogs-y)
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
