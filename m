Delivery-date: Mon, 27 Oct 2025 09:09:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDIHu-00CGod-2a
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 09:09:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDIHu-0001lt-5w
	for lore@pengutronix.de; Mon, 27 Oct 2025 09:09:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+9HPyTeIZzYw38UOVZdpHe85KhqIchgBZvby1yaMTqI=; b=NlqTc3pDa+EL3pKBG+c+qJPgHB
	dmRKX0FlZkwqrEkii8g6DefTmWXMUeoCadfjgkb9KDMPtgv602wFwP93nLIJeZwfxabj2UfSU0J7C
	cu9TvEmEMIHF9uGIchUtJEUwZlNwOkjS8u8Q4ON/nUuaXXUTYT33CF+Z7N8GOd1JHFfs4y+DocUMB
	cCOFioPeiNVmUNQuFPlqrXsBLy0EpWJcWbiznUX99VPqJ45iZca3F0aYQemQF2bJaefGUltlfs+yb
	bjIFtshFr5gyoRD5t1fNNhOxkLM+BCmuEUoFWOTASJz3P0PQRh/7xAgklZjhuMKYQ0Zj6AwOsRM1m
	g8hnBoNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDIHP-0000000DKER-0oSq;
	Mon, 27 Oct 2025 08:08:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDIHM-0000000DKDw-2Z12
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 08:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDIHK-0001eU-Sc; Mon, 27 Oct 2025 09:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDIHK-005flr-2D;
	Mon, 27 Oct 2025 09:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDIHK-00000008LWS-2U4u;
	Mon, 27 Oct 2025 09:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Oct 2025 09:08:23 +0100
Message-ID: <20251027080832.1989341-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_010836_672439_D9479A5B 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] kbuild: add make check target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox test suite is invoked by running pytest, but for many
projects running make check is what is usually expected.

Add a make check target that calls pytest to accommodate that.
In future, we may add extra checks to test that pytest is correctly
installed to make it easier to use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Makefile b/Makefile
index 9af028cbc6a0..018a206ee8ca 100644
--- a/Makefile
+++ b/Makefile
@@ -463,6 +463,7 @@ KLZOP		= lzop
 LZMA		= lzma
 LZ4		= lz4
 XZ		= xz
+PYTEST		= $(if $(shell command -v labgrid-pytest 2>/dev/null),labgrid-pytest,pytest)
 
 CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
 CFLAGS_KERNEL	=
@@ -1054,7 +1055,32 @@ endif
 
 PHONY += install
 
+# Testing barebox
+# ---------------------------------------------------------------------------
+# This target has pytest select the YAML env matching CONFIG_NAME if available.
+# Use pytest --lg-env $labgrid_env_yaml directly if you need more than that.
+
+labgrid-env := $(srctree)/test/$(SRCARCH)/$(CONFIG_NAME).yaml
+
+check:
+ifeq ($(CONFIG_NAME),"")
+	@echo "error: can't autoload labgrid env with CONFIG_NAME unset!" >&2
+	@exit 1
+endif
+	@if [ ! -r "$(labgrid-env)" ]; then \
+		echo "error: No Labgrid environment at $(labgrid-env)!" >&2; \
+		echo "Choose a different config (or change CONFIG_NAME)" >&2; \
+		echo "that can be automatically tested" >&2; \
+		exit 1; \
+	fi
+	@echo
+	@# This is intentionally not @suppressed, to make it easier to reproduce
+	(cd $(srctree); $(PYTEST))
+
+PHONY += check
+
 # barebox image
+# ---------------------------------------------------------------------------
 barebox: $(BAREBOX_LDS) $(BAREBOX_OBJS) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
 	$(Q)rm -f .old_version
-- 
2.47.3



