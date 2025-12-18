Delivery-date: Thu, 18 Dec 2025 12:39:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLs-00CoPu-2A
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLH-0001GW-9s
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ROj469LZm8te1yutFbfnmr8LxVDH26bsT8xeuaVEgjs=; b=YT/hAF4AAWvmjpc5TBWRKKBGeE
	l4xJACsM/UWFhwHeltsEAg1iqyzYFTC7LW/HAk2YMQMig/i34hjr5uzuyv592N65LZG/gtVWMi9mf
	CbNVjPEEtuuUu+C4wo1AH1wwBTpIaGRFiRMFW36t00kIAU4Ur/R5JazaiS8M5JvA0uEdAi4Ney6WL
	Eex/yX+U+kd5xsIgu5ZPzzWVcgJ225bBqrN4dxGpO9VdWdAODyR7ElnjzloysKwwc+9fhpK78XUcH
	z8QtemBxY1dFTNWsiJFf9XkRsCRJL03kDoT1jv2WoquaMiomIBe8/zL5mrDjAHWb1czzfoA8Pega1
	v6eVeKeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJn-00000008KeE-0nZB;
	Thu, 18 Dec 2025 11:37:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJQ-00000008KFp-3R46
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008FT-NH; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006Gwk-1j;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-1nHu;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:10 +0100
Message-ID: <20251218111242.1527495-51-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033652_855682_C92BC58E 
X-CRM114-Status: GOOD (  13.36  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 50/54] efi: runtime: add relocation check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I am not happy with the way we embed the runtime services. While we make
use of NOCROSSREFS_TO() to catch stray references, we need to list all
sections that may not be referenced and things can slip through.

Also, Clang does not support the directive. I anticipate this be solved
properly when barebox proper is packaged as proper ELF: Then PBL would
be responsible for applying relocations, setting up MMU protections and
can at the same time relocate a distinct EFI runtime services DSO.

Until then, let's a hacky check to verify that we don't access
efi_runtime_data global variables through the GOT as we only have a
single GOT and it's not marked as runtime data.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/runtime/Makefile         |  9 +++++++++
 scripts/check-efi-runtime.sh | 13 +++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100755 scripts/check-efi-runtime.sh

diff --git a/efi/runtime/Makefile b/efi/runtime/Makefile
index a9af06de60ab..0aca6aeedc38 100644
--- a/efi/runtime/Makefile
+++ b/efi/runtime/Makefile
@@ -42,3 +42,12 @@ $(obj)/%.efirt.o: $(obj)/%.o FORCE
 	$(call if_changed,efirtcopy)
 
 obj-y := $(patsubst %.o,%.efirt.o,$(lib-y))
+BAREBOX_EFIRT_OBJS := $(patsubst %.o,$(obj)/%.o,$(obj-y))
+
+quiet_cmd_chkrel__ ?= CHKREL  $@
+      cmd_chkrel__ ?= $(srctree)/scripts/check-efi-runtime.sh $@ $(2)
+
+$(obj)/efirt.so: $(BAREBOX_EFIRT_OBJS) FORCE
+	$(call if_changed,chkrel__,$(BAREBOX_EFIRT_OBJS))
+
+always-y += efirt.so
diff --git a/scripts/check-efi-runtime.sh b/scripts/check-efi-runtime.sh
new file mode 100755
index 000000000000..46688b724d8e
--- /dev/null
+++ b/scripts/check-efi-runtime.sh
@@ -0,0 +1,13 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+if [ "$#" -lt 2 ]; then
+    2>&1 echo "USAGE: $0 OUTPUT INPUT..."
+    exit 2
+fi
+
+${LD} -shared --gc-sections --whole-archive -o "$@" || {
+    2>&1 echo
+    2>&1 echo "Link check failed. Relocations to outside EFI runtime code?"
+    exit 1;
+}
-- 
2.47.3



