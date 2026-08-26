Delivery-date: Wed, 26 Aug 2026 14:17:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCZC-007Qim-0b
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:17:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 72F42202101
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:17:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yy2UfYiJ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+gtIsexvyDQhkXeJ2ACh+60R2ofj9ZqdTJrEMb/Tj2I=; b=yy2UfYiJPvVdzZ/XHGH1YfjirT
	fvc2p78RRRwnhvqBCjYStU/zBtAcftzStapOQavyFwZNJyuNb9LzzVusrSY+il36I4HO/Tiw5SPyl
	jglCBj8BwL69clPvMxLK2AzL1hfWTS16pTbuh2ejUIpprxTDiX2PzhDphBxedME1VCV7IfvRFtTgW
	Ox7zzUrK0vA5PDzeoxbdlbKmUv6IkQ9zuppZaYhx7LNsl3SPXGNn7iaHc6sJJpm4eO8qCbiZbQLWu
	zwAOMlsCcXPmvTthA+1Ws4xXGx5ZUh6ec42IIHNur2+o2GPdv1Fl5qH2HI2vYTpOmRGNZptJxSKpv
	PMI0a29A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYi-00000002PFK-1EKT;
	Wed, 26 Aug 2026 12:16:48 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYe-00000002PDS-1YP9
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 71AC6202148;
	Wed, 26 Aug 2026 14:16:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-003RAR-18;
	Wed, 26 Aug 2026 14:16:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-0000000CJpx-12iP;
	Wed, 26 Aug 2026 14:16:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 2/4] kbuild: dtc: introduce empty fallback device tree
Date: Wed, 26 Aug 2026 14:15:30 +0200
Message-ID: <20260826121640.2936023-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051644_613160_9B6E5977 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload,
    because it has no internal DT at build-time and until recently not even a
    DT at runtime. Instead of synthesizing a DT root node at runtime, just compile
    in an empty DT that the user can extend with builtin state nodes via CONFIG_EXTERNAL_DTS_FRAGMENTS.
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5daq87hzh7zqztd8yixoufgemnuxxy8x
X-Rspamd-Queue-Id: 72F42202101

CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
it has no internal DT at build-time and until recently not even a DT at
runtime.

Instead of synthesizing a DT root node at runtime, just compile in an
empty DT that the user can extend with builtin state nodes via
CONFIG_EXTERNAL_DTS_FRAGMENTS.

x86 has had no device trees of its own so far, but gets a dts directory
here as well, so the fallback device tree is built the same way on every
architecture and efi/payload/Makefile needs no special case for the
architectures without one.

That makes it the first dtb in the tree that is built without
CONFIG_PBL_IMAGE, so define suffix_y for that case as well:
scripts/gen-dtb-s reads the size of the compressed dtb unconditionally,
but scripts/Makefile.pbl, which defines suffix_y, is only included for PBL
builds. Without it, the .dtb.z is never generated, the build prints an ls
error for the missing file and the dtb objects are regenerated on every
make.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/Makefile   |  2 ++
 arch/riscv/dts/Makefile |  2 ++
 arch/x86/Kbuild         |  2 ++
 arch/x86/dts/Makefile   |  5 +++++
 common/fallback.dts     | 10 ++++++++++
 efi/payload/boarddata.c | 11 -----------
 efi/payload/fdt.c       | 25 +++++++++++++++++++++++++
 scripts/Makefile.dtbs   | 10 ++++++++++
 8 files changed, 56 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/dts/Makefile
 create mode 100644 common/fallback.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 64f46064b735..b537aa757a93 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+
 lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_AM625_SK) += k3-am625-sk.dtb.o k3-am625-r5-sk.dtb.o k3-am625sip-r5-sk.dtb.o
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 521c8407c5ae..a89f246bb633 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+
 lwl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
 lwl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
                               hifive-unleashed-a00.dtb.o
diff --git a/arch/x86/Kbuild b/arch/x86/Kbuild
index f5fa602122a5..28744c7dc511 100644
--- a/arch/x86/Kbuild
+++ b/arch/x86/Kbuild
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += lib/
+
+obj-$(CONFIG_OFTREE) += dts/
diff --git a/arch/x86/dts/Makefile b/arch/x86/dts/Makefile
new file mode 100644
index 000000000000..25b653bc9b03
--- /dev/null
+++ b/arch/x86/dts/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/common/fallback.dts b/common/fallback.dts
new file mode 100644
index 000000000000..7c88eba462b6
--- /dev/null
+++ b/common/fallback.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+/*
+ * Fallback device tree for images not tied to a board, like the EFI payload.
+ * Empty, but can be populated via CONFIG_EXTERNAL_DTS_FRAGMENTS.
+ */
+
+/ {
+};
diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
index ec6ee7bbd98f..a2f4b8d21b4a 100644
--- a/efi/payload/boarddata.c
+++ b/efi/payload/boarddata.c
@@ -14,7 +14,6 @@
 #include <linux/printk.h>
 #include <debug_ll.h>
 #include <init.h>
-#include <of.h>
 #include <pbl/handoff-data.h>
 
 static int handle_efi_boarddata(void)
@@ -47,13 +46,3 @@ static int handle_efi_boarddata(void)
 	return 0;
 }
 pure_initcall(handle_efi_boarddata);
-
-static __maybe_unused int efi_register_of(void)
-{
-	if (!BS)
-		return 0;
-	return barebox_register_of(of_new_node(NULL, NULL));
-}
-#ifdef CONFIG_OFDEVICE
-core_initcall(efi_register_of);
-#endif
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index 9cdb32370f22..f98fd86bfbd6 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -5,10 +5,35 @@
 #include <common.h>
 #include <init.h>
 #include <libfile.h>
+#include <of.h>
 #include <efi/payload.h>
 #include <efi/payload/init.h>
 #include <efi/guid.h>
 
+extern char __dtb_fallback_start[];
+
+/*
+ * EFI systems have no device tree, but barebox may still need one for its
+ * own purposes, e.g. to describe a state partition. Register a tree that's
+ * empty unless populated via CONFIG_EXTERNAL_DTS_FRAGMENTS.
+ */
+static __maybe_unused int efi_of_init(void)
+{
+	int ret;
+
+	ret = barebox_register_fdt(__dtb_fallback_start);
+	if (ret == -EBUSY) {
+		/* architecture code registered a device tree already */
+		pr_debug("keeping already registered device tree\n");
+		return 0;
+	}
+
+	return ret;
+}
+#ifdef CONFIG_OFDEVICE
+core_efi_initcall(efi_of_init);
+#endif
+
 static int efi_fdt_probe(void)
 {
 	struct efi_config_table *ect;
diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
index 2228d04eea98..3c32747a30e5 100644
--- a/scripts/Makefile.dtbs
+++ b/scripts/Makefile.dtbs
@@ -72,6 +72,11 @@ cmd_dt_S_dtbo = $(srctree)/scripts/gen-dtbo-s $(subst -,_,$(*F)) $< > $@
 $(obj)/%.dtbo.S: $(obj)/%.dtbo $(srctree)/scripts/gen-dtbo-s FORCE
 	$(call if_changed,dt_S_dtbo)
 
+# scripts/Makefile.pbl defines suffix_y, but is only included for PBL builds.
+# The compressed dtb is unused without a PBL, but still needs to exist, as
+# scripts/gen-dtb-s reads its size unconditionally.
+suffix_y ?= comp_copy
+
 $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 	$(call if_changed,$(suffix_y))
 
@@ -89,6 +94,11 @@ cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
 $(obj)/%.dtb: $(src)/%.dts FORCE
 	$(call if_changed_dep,dtc,$(dts-frags))
 
+# The fallback device tree is board-agnostic, so its source is shared by all
+# architectures instead of living in a dts directory
+$(obj)/fallback.dtb: $(obj)/%.dtb: $(srctree)/common/fallback.dts FORCE
+	$(call if_changed_dep,dtc,$(dts-frags))
+
 $(obj)/%.dtbo: $(src)/%.dtso $(DTC) FORCE
 	$(call if_changed_dep,dtc)
 
-- 
2.47.3



