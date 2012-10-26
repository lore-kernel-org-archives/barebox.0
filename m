Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdt1-00042T-Hq
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:58:54 +0200
Message-Id: <1351234748-24994-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/15] pbl: Add missing FORCE
To: barebox@lists.infradead.org

Otherwise the pbl files do not get rebuilt when the CFLAGS change.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.build |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 383d73f..a95bbe4 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -241,7 +241,7 @@ endef
 
 # Built-in and composite module parts
 
-pbl-%.o: %.c
+pbl-%.o: %.c FORCE
 	$(call cmd,force_checksrc)
 	$(call if_changed_rule,pbl_cc_o_c)
 
@@ -284,7 +284,7 @@ cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 quiet_cmd_pbl_as_o_S = PBLAS   $@
 cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
-pbl-%.o: %.S
+pbl-%.o: %.S FORCE
 	$(call if_changed_dep,pbl_as_o_S)
 
 %.o: %.S FORCE
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
