Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AD-0a
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:39 +0200
Message-Id: <1380264462-27614-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] scripts/Makefile: implement targetprogs-y
To: barebox@lists.infradead.org

using obj-y for targetprogs only works until only a single program
is compiled. Adding the second one will end up in the linker trying
to link both together.

Add targetprogs-y to fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 99a06b0..adc786e 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -32,9 +32,12 @@ subdir-	+= basic kconfig setupmbr
 quiet_cmd_csingle	= CC      $@
       cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
 
-obj-$(CONFIG_BAREBOXENV_TARGET)	+= bareboxenv-target
+__targetprogs	:= $(sort $(targetprogs-y) $(targetprogs-m))
+target-csingle	:= $(foreach m,$(__targetprogs),$(if $($(m)-objs),,$(m)))
+__targetprogs	:= $(addprefix $(obj)/,$(__targetprogs))
+target-csingle	:= $(addprefix $(obj)/,$(target-csingle))
 
-scripts/bareboxenv-target: scripts/bareboxenv.c FORCE
-	$(call if_changed_dep,csingle)
+always		:= $(hostprogs-y) $(hostprogs-m) $(targetprogs-y)
 
-always		:= $(hostprogs-y) $(hostprogs-m)
+$(target-csingle): %-target: %.c FORCE
+	$(call if_changed_dep,csingle)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
