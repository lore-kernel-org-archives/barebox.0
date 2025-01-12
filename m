Delivery-date: Sun, 12 Jan 2025 09:35:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRG-0007fv-3C
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRG-00077Y-CQ
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IxBoplwUgVtCNRP2HxE5yd0ZtM0UxNtxSvO0VhR810M=; b=WKuZgssk+3gywLacgu2vxnDqFJ
	t6sZWv/Y8zfbqNViWcz+bEZRjorefKvJqQ66HAVVth9Ja1jjjhic4IvLHPevc0gCHPwEM35BQprs8
	7pW3ywNxZ1pDgKE2g4F8sj0toViUwDvzqvKrmShzVxw6FLRS5uNmsEl9PhMnr2LzNQMwtBU07fJ/d
	7NIfNoLqRb0UTnbIBtESxAI/NLQzn9n0h4ZgN4coj7SVH46j6tWmlF6bq+o9aEbdcobkuahUe71h7
	Mu9Rw2kekF8fOFI9Red0lhLz2e9swTy5A4t/fhLya0weK1XIxNcqMYvydGCEs9pgQuINv5p/jGR9J
	/VlZ5WsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQt-00000002L4U-0rJs;
	Sun, 12 Jan 2025 08:34:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQq-00000002L2r-3QAb
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gM-Hs; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003O2-19;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-1b;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:24 +0100
Message-Id: <20250112083432.320215-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003452_852538_436D8363 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/13] kbuild: restrict dtbs target to enabled DTs by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our existing dtbs target is fairly primitive and builds just all device
trees in the architecture folder without regard to whether they are even
wired in the Makefile or not.

Now that we have a list of all device trees in the form of dtbs-list,
let's rework the dtbs target to make use of it. The old behavior of
building all device trees can still be achieved by enabling
CONFIG_OF_ALL_DTBS.

In order to have dtbs-list updated always, it's also added to the
dependencies of the images target. That way, a FIT image target that
will be added in a later commit can reliably depend on that file to be
available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile           | 22 +++++++++++++++++-----
 drivers/of/Kconfig | 11 +++++++++++
 2 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 82f90373cbbd..75e994e5ac1a 100644
--- a/Makefile
+++ b/Makefile
@@ -1114,10 +1114,22 @@ endif
 
 ifneq ($(dtstree),)
 
-PHONY += dtbs
-all_dtbs += $(patsubst $(srctree)/%.dts,$(objtree)/%.dtb,$(wildcard $(srctree)/$(dtstree)/*.dts))
-targets += $(all_dtbs)
-dtbs: $(all_dtbs)
+%.dtb: dtbs_prepare
+	$(Q)$(MAKE) $(build)=$(dtstree) $(dtstree)/$@
+
+%.dtbo: dtbs_prepare
+	$(Q)$(MAKE) $(build)=$(dtstree) $(dtstree)/$@
+
+PHONY += dtbs dtbs_prepare
+dtbs: dtbs_prepare
+	$(Q)$(MAKE) $(build)=$(dtstree) need-dtbslist=1
+
+dtbs_prepare: include/config/kernel.release scripts_dtc
+
+ifdef CONFIG_OFDEVICE
+images: dtbs
+images/%: dtbs
+endif
 
 endif
 
@@ -1322,7 +1334,7 @@ help:
 	@echo  ''
 	@$(if $(dtstree), \
 		echo '  Devicetree:'; \
-		echo '    * dtbs             - Build device tree blobs for all boards'; \
+		echo '    * dtbs             - Build device tree blobs for enabled boards'; \
 		echo '')
 	@$(if $(boards), \
 		$(foreach b, $(boards), \
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 6c9aedf355b4..ebc8842f5e38 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -3,6 +3,17 @@ config OFTREE
 	select DTC
 	bool
 
+config OF_ALL_DTBS
+	bool "Build all Device Tree Blobs"
+	depends on OFTREE && COMPILE_TEST
+	select DTC
+	help
+	  This option builds all possible Device Tree Blobs (DTBs) for the
+	  current architecture.
+
+	  If unsure, say N here, but this option is safe to enable.
+
+
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
 	depends on PPC || ARM || EFI_PAYLOAD || OPENRISC || SANDBOX || RISCV || KVX
-- 
2.39.5



