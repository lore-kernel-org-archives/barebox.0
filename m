Delivery-date: Sun, 12 Jan 2025 09:35:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRA-0007fM-0s
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR9-00071Y-Bz
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/LSACbCBslx2ZvO6lra4iFTDwYXMHH7kI97/qRlzJIA=; b=T8BqlKG1NefGlNDr6g+tCMxCbG
	G8SfG+NqzcXqcm05wOhnVGchLpkykwIzqGqxtHRIxGVZ1STmUjkAFQSGxuC9JTtrP1U43xx+jeovB
	qXG8/NSwNL0ZoCm7BUvlqlEJwPr3FDCSV2s3PKduUQktomTZ2ydUC+kzwtmGfYHd7jTFK0LYg/5zd
	aPLDsUXHxOTPXnQ0KbcgD0rKbI/R0efBpwELNKOPcAYjX3Po8uxEHvv1qMSrmYm/IccYm/nW5s2E6
	ddvfHTbpGEnnbspPtuZ254yRwjSWEoSlMIn0EBqb96XuTVisMEuB4RVQ/JloyN7Ac0eajq/tQIZmw
	FWoCpAGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQl-00000002KzL-0Oo8;
	Sun, 12 Jan 2025 08:34:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQi-00000002KxW-3LnN
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gK-Ht; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003Nw-0q;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-1H;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:22 +0100
Message-Id: <20250112083432.320215-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003444_845971_0CD15142 
X-CRM114-Status: GOOD (  13.74  )
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
Subject: [PATCH 03/13] kbuild: collect available device trees in dtbs-list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a dtb-y variable containing all board device trees,
let's import some Linux Kbuild code, so barebox can also maintain a list
of built device trees in arch/$ARCH/dts/dtbs-list.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore             |  1 +
 Makefile               |  1 +
 scripts/Makefile.build | 11 +++++++++++
 scripts/Makefile.dtbs  | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 45 insertions(+)
 create mode 100644 scripts/Makefile.dtbs

diff --git a/.gitignore b/.gitignore
index 5e1b0c2b68ff..0bee67af4881 100644
--- a/.gitignore
+++ b/.gitignore
@@ -36,6 +36,7 @@
 *.tab.[ch]
 binary.0
 Module.symvers
+dtbs-list
 *.dtb
 *.dtb.*
 *.dtbo
diff --git a/Makefile b/Makefile
index d5d02f4efe15..5f5f830af5d2 100644
--- a/Makefile
+++ b/Makefile
@@ -1238,6 +1238,7 @@ clean: archclean $(clean-dirs)
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
 		-o -name '*lex.c' -o -name '.tab.[ch]' \
+		-o -name 'dtbs-list' \
 		-o -name '*.symtypes' -o -name '*.bbenv.*' -o -name "*.bbenv" \) \
 		-type f -print | xargs rm -f
 
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 1c511d38a12b..591da3d750ec 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -56,12 +56,23 @@ ifneq ($(userprogs),)
 include scripts/Makefile.userprogs
 endif
 
+ifneq ($(need-dtbslist)$(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)),)
+include $(srctree)/scripts/Makefile.dtbs
+endif
+
 ifndef obj
 $(warning kbuild: Makefile.build is included improperly)
 endif
 
 # ===========================================================================
 
+# This is a list of build artifacts from the current Makefile and its
+# sub-directories. The timestamp should be updated when any of the member files.
+
+cmd_gen_order = { $(foreach m, $(real-prereqs), \
+	$(if $(filter %/$(notdir $@), $m), cat $m, echo $m);) :; } \
+	> $@
+
 ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
new file mode 100644
index 000000000000..046361c20a6a
--- /dev/null
+++ b/scripts/Makefile.dtbs
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# If CONFIG_OF_ALL_DTBS is enabled, all DT blobs are built
+dtb-$(CONFIG_OF_ALL_DTBS) += $(dtb-)
+
+# Composite DTB (i.e. DTB constructed by overlay)
+multi-dtb-y := $(call multi-search, $(dtb-y), .dtb, -dtbs)
+# Primitive DTB compiled from *.dts
+real-dtb-y := $(call real-search, $(dtb-y), .dtb, -dtbs)
+# Base DTB that overlay is applied onto
+base-dtb-y := $(filter %.dtb, $(call real-search, $(multi-dtb-y), .dtb, -dtbs))
+
+dtb-y           := $(addprefix $(obj)/, $(dtb-y))
+multi-dtb-y     := $(addprefix $(obj)/, $(multi-dtb-y))
+real-dtb-y      := $(addprefix $(obj)/, $(real-dtb-y))
+
+always-y        += $(dtb-y)
+targets         += $(real-dtb-y)
+
+# dtbs-list
+# ---------------------------------------------------------------------------
+
+ifdef need-dtbslist
+subdir-dtbslist := $(addsuffix /dtbs-list, $(subdir-ym))
+dtb-y           += $(subdir-dtbslist)
+always-y        += $(obj)/dtbs-list
+endif
+
+$(subdir-dtbslist): $(obj)/%/dtbs-list: $(obj)/% ;
+
+$(obj)/dtbs-list: $(dtb-y) FORCE
+	$(call if_changed,gen_order)
-- 
2.39.5



