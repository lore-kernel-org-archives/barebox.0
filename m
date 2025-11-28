Delivery-date: Fri, 28 Nov 2025 19:49:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-005sTk-27
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 19:49:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP3XW-0000TJ-09
	for lore@pengutronix.de; Fri, 28 Nov 2025 19:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MSuSAyIj/8udth6FsbqkttngPViyUSZzw8xDdlW/BhA=; b=PSFujfGPvg8O8yb6Z7U6J8bOGE
	aER3o5yF2Lfh03Gjw1I3DCs/d4i83LAipN/A/n3f2vWmMzc/+O2f/JdDfjq3ljy6soVI9gNLGtNKd
	LdVvkvObJR0pNYnLiihED9Qxb5x+FSOUe79SFd8GY/XKkMaExIZGaEO8MXreF7CdJm+SXvX518D+d
	iD0+PkH26A5WV0gYfugbr50AQtR0+psmts1iuXD073GC4Myec5EM5Xrtvt59bSQcV105dVyM4m8kd
	h6CSUjjeAcCpT3mSgu2f1gzQPoszNHAaoXXcRrREyO5Ie3Bg2maYlvo2W969g69rMuD5sGke8eI1r
	MqM3FrfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X4-00000000nAj-0gy9;
	Fri, 28 Nov 2025 18:49:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP3X1-00000000n8M-03IK
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 18:49:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-0000Fq-Ab; Fri, 28 Nov 2025 19:49:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-00300y-0R;
	Fri, 28 Nov 2025 19:49:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP3Wz-00000000SVQ-0CP0;
	Fri, 28 Nov 2025 19:49:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 19:49:15 +0100
Message-ID: <20251128184920.109552-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128184920.109552-1-a.fatoum@pengutronix.de>
References: <20251128184920.109552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_104923_048193_53ACC996 
X-CRM114-Status: GOOD (  12.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] Documentation: factor out build rules into stand-alone Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easier to invoke from CI, let's add a dedicated Documentation
Makefile.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/Makefile | 35 +++++++++++++++++++++++++++++++++++
 Makefile               | 20 +++++++++++---------
 2 files changed, 46 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/Makefile

diff --git a/Documentation/Makefile b/Documentation/Makefile
new file mode 100644
index 000000000000..825cd3ba0e7f
--- /dev/null
+++ b/Documentation/Makefile
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for Sphinx documentation
+# This was not generated by sphinx-quickstart, but nonetheless copies some
+# of its variable name conventions for easier integration with existing tooling
+
+SPHINXBUILD   = sphinx-build
+SPHINXOPTS    =
+
+# Internal variables.
+ALLSPHINXOPTS   =  $(SPHINXOPTS)
+
+srctree ?= $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/..)
+objtree ?= $(srctree)
+
+docs: htmldocs FORCE
+
+htmldocs: FORCE
+	@mkdir -p $(srctree)/Documentation/commands
+	@$(srctree)/Documentation/gen_commands.py $(srctree) $(srctree)/Documentation/commands
+	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
+		$(objtree)/Documentation/html $(ALLSPHINXOPTS)
+
+dochelp: FORCE
+	@echo  ' barebox internal documentation from ReST:'
+	@echo  '  htmldocs        - HTML'
+	@echo  '  docs            - alias for htmldocs'
+	@echo
+	@echo  '  Default location for the generated documents is Documentation/html'
+
+
+PHONY += FORCE
+FORCE:
+
+.PHONY: $(PHONY)
diff --git a/Makefile b/Makefile
index b138ae674878..22e306e69d9e 100644
--- a/Makefile
+++ b/Makefile
@@ -1491,6 +1491,8 @@ endif
 	@echo  '  tags/TAGS	  - Generate tags file for editors'
 	@echo  '  cscope	  - Generate cscope index'
 	@echo  '                    (default: $(INSTALL_HDR_PATH))'
+	@echo  'Documentation targets:'
+	@$(MAKE) -f $(srctree)/Documentation/Makefile dochelp
 	@echo  ''
 	@echo  'Architecture specific targets ($(SRCARCH)):'
 	@$(if $(archhelp),$(archhelp),\
@@ -1515,6 +1517,15 @@ endif
 	@echo  'Execute "make" or "make all" to build all targets marked with [*] '
 	@echo  'For further info see the documentation'
 
+
+# Documentation targets
+# ---------------------------------------------------------------------------
+DOC_TARGETS := docs htmldocs dochelp
+
+PHONY += $(DOC_TARGETS)
+$(DOC_TARGETS):
+	$(Q)$(MAKE) -f $(srctree)/Documentation/Makefile $@
+
 # Code Coverage
 # ---------------------------------------------------------------------------
 
@@ -1541,15 +1552,6 @@ quiet_cmd_tags = GEN     $@
 tags TAGS cscope gtags: FORCE
 	$(call cmd,tags)
 
-SPHINXBUILD   = sphinx-build
-ALLSPHINXOPTS   =  source
-
-docs: FORCE
-	@mkdir -p $(srctree)/Documentation/commands
-	@$(srctree)/Documentation/gen_commands.py $(srctree) $(srctree)/Documentation/commands
-	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
-		$(objtree)/Documentation/html
-
 bareboxversion:
 	@echo $(KERNELVERSION)
 
-- 
2.47.3



