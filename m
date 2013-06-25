Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPR9-0000IA-Vx
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:45 +0200
Message-Id: <1372152052-5463-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] imx-image: fix path to imx-image binary
To: barebox@lists.infradead.org

$(obj) doesn't necessarily contain the toplevel object path. Use
$(objtree) for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0b56dcc..307412f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -329,4 +329,4 @@ $(obj)/%.S: $(obj)/%.dcd
 	$(call cmd,imximage_S_dcd)
 
 quiet_cmd_imx_image = IMX-IMG $@
-      cmd_imx_image = $(obj)/scripts/imx/imx-image -b -c $(CFG_$(@F)) -f $< -o $@
+      cmd_imx_image = $(objtree)/scripts/imx/imx-image -b -c $(CFG_$(@F)) -f $< -o $@
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
