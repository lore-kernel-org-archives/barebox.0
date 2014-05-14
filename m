Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5f-0000PD-Bv
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:53 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id A6A8318B4274
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:29 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:45 +0200
Message-Id: <1400100352-13002-18-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 18/25] Makefile.lib: add rule to built Tegra BCTs
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 .gitignore           | 1 +
 scripts/Makefile.lib | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/.gitignore b/.gitignore
index d49049124846..5555e1544e7e 100644
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
index d4306cbe7820..08518704fe40 100644
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
