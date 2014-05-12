Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJy-0004I7-Jo
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:48 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id 5D66718B426D
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:05:03 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:59 +0200
Message-Id: <1399878486-16086-19-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 18/25] Makefile.lib: add rule to built Tegra BCTs
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 .gitignore           | 1 +
 scripts/Makefile.lib | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/.gitignore b/.gitignore
index d490491..5555e15 100644
--- a/.gitignore
+++ b/.gitignore
@@ -20,6 +20,7 @@
 *.elf
 *.mcp
 *.orig
+*.bct
 *.dcd
 *.dcd.S
 *.bbenv
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index d4306cb..0851870 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -400,3 +400,9 @@ quiet_cmd_imx_image = IMX-IMG $@
 
 quiet_cmd_kwb_image = KWB     $@
       cmd_kwb_image = scripts/kwbimage -p $< $(OPTS_$(@F)) -o $@
+
+quiet_cmd_cboot_bct = BCT     $@
+      cmd_cboot_bct = $(objtree)/scripts/tegra/cbootimage -gbct -s $(soc) $< $@
+
+$(obj)/%.bct: $(obj)/%.bct.cfg
+	$(call cmd,cboot_bct)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
