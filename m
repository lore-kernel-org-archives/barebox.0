Delivery-date: Mon, 16 Mar 2026 18:21:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdU-001VeU-0j
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdT-0004yz-7C
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/lfNRHk2ulMBsKG9DC3sOK/10jI4ZY45Vj3Gi9G6Bcc=; b=QhujisSM0xrR2kvNGR2uzJ4bRw
	z5de1flzys5ivBhHVq4rEeuMPc9jOW07xvd28EiGL867HJfzvgNf5x8R0M/tapcqmogykhCq+4wNJ
	/JuWqIZuiZJL8TqYE/wieWvbbYYMjE61GWnl+VNKmTQaZBZk4qTw83t+D2Uma6nrJw8iACIDvqLZZ
	VyDxnQhFjx0WJ2gQTZXEUroLykShkw0M5fYNBCqhE65vyT1ZWdTYzZd/E59GwPREUkASoy/MmIFcp
	HqAYwrijIYlMvYPw7UGIpT77YQLsFcNWF9sWAHO+NYquLqp2osDW8os9MSwMGX7Cj0hKqENoqrsuC
	61TSMnXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd5-00000004Y35-2rBR;
	Mon, 16 Mar 2026 17:21:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd4-00000004Y1b-183W
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/lfNRHk2ulMBsKG9DC3sOK/10jI4ZY45Vj3Gi9G6Bcc=; b=FyedY+kC4AIWHlRI6ig0ovdVoE
	W0sDwJALU7D8Lq7O/KYX4qc+dT7upEkVWwvyCOUZwqyGraeiHm6hQ7dpYU4EMS9f025IWpXWBYL3x
	QWkqJwdl7sY09A1h2l/2C7pHrDsSYOipMTc4eNZjIQs0HiN24I5u5p76Z/LdHb8nSJ4ZjhJNy4kjA
	ySwFeBm/ypE4ST+Zi/wLRQ7X6iu7FpiaGcqqFxwILUpqEMcBacDYlGLDQltZOX7KhSIZkpXTyIT/k
	VHcyZYh7Eh+esnV6336h+D6eeK/jHyqe3/g/NYYT30rKwIEV7Jj5cyMDREL4R3kejdHVfxxfJ4ePB
	7ZJ/vQyA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd0-00000007JbR-483Z
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fg-8h; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi3-2W;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2cpo;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-4-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=5654;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=S+6EagxvIZ+SphVppy6lPmyP1WzlmmggFFTs6fKqj2s=;
 b=185YlSW0YbbmUEy1ORlOoRPUKYCxs4e1v/0QJxCi+qfLyJhTrDCM53+Q1HUUPEfLOXVjAhXRm
 ygfIZeFkL6ECmfEZ1v3f56bKoEjgNfyY3ufKwGgQWww45z9wCl2Gx87
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172119_172625_38537D52 
X-CRM114-Status: GOOD (  14.97  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] firmware: Move firmware assembly generation to
 scripts/gen-fw-s
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Extract the inline filechk_fwbin shell code from firmware/Makefile into
a standalone script at scripts/gen-fw-s, following the pattern of
scripts/gen-dtb-s.

The FWSTR and FWNAME_EXISTS variables are no longer needed in the
Makefile as they are now computed within the script.

Some #ifdefs are already known during execution of gen-fw-s. As it is
raw shell now instead of shell encapsulated in a Makefile we can improve
readability by replacing these #ifdefs with shell "if".

Also while at it add some comments what is happening as the missing
firmware handling is not entirely obvious.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de
---
 firmware/Makefile | 51 +++++---------------------------------------
 scripts/gen-fw-s  | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+), 46 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index a3b1887dc6..b247db8da2 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -60,56 +60,15 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
-FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
-FWNAME_EXISTS = $(if $(wildcard $(FIRMWARE_DIR)/$(FWNAME)),1,0)
-
-filechk_fwbin = { \
-	SHA=$$(sha256sum $(FIRMWARE_DIR)/$(FWNAME) |		\
-		sed 's/ .*$$//;s/../0x&, /g;s/, $$//')		\
-		2>/dev/null					;\
-	\
-	echo "/* Generated by $(src)/Makefile */"		;\
-	echo "\#include <asm-generic/pointer.h>"		;\
-	echo ".section .note.GNU-stack,\"\",%progbits"		;\
-	echo "    .section $2,\"$3\""				;\
-	echo "    .p2align ASM_LGPTR"				;\
-	echo ".global _fw_$(FWSTR)_start"			;\
-	echo "_fw_$(FWSTR)_start:"				;\
-	echo "\#if $(FWNAME_EXISTS)"				;\
-	echo "    .incbin \"$(FIRMWARE_DIR)/$(FWNAME)\""		;\
-	echo "\#elif defined(__PBL__)"				;\
-	echo "ASM_PTR _fwname_$(FWSTR)"				;\
-	echo "\#endif"						;\
-	echo ".global _fw_$(FWSTR)_end"				;\
-	echo "_fw_$(FWSTR)_end:"				;\
-	echo "\#ifdef __PBL__"					;\
-	echo "    .section .missing_fw,\"a\""			;\
-	echo "_fwname_$(FWSTR):"				;\
-	printf '.ascii "%s"\n' 'firmware/$(FWNAME)\n'		;\
-	echo "\#endif" 						;\
-	echo "    .section .rodata.$(FWSTR).sha"		;\
-	echo "    .p2align ASM_LGPTR"				;\
-	echo ".global _fw_$(FWSTR)_sha_start"			;\
-	echo "_fw_$(FWSTR)_sha_start:"				;\
-	echo "    .byte $${SHA}"				;\
-	echo ".global _fw_$(FWSTR)_sha_end"			;\
-	echo "_fw_$(FWSTR)_sha_end:"				;\
-	echo "\#if $(FWNAME_EXISTS)"				;\
-	echo ".if _fw_$(FWSTR)_sha_start + 32 - _fw_$(FWSTR)_sha_end";\
-	echo ".error \"sha256sum invalid\""			;\
-	echo ".endif"						;\
-	echo "\#endif"						;\
-}
-
-filechk_fwbin_ext = { \
-	$(filechk_fwbin)					;\
-}
+
+filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata
+filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a
 
 $(obj)/%.gen.S: FORCE
-	$(call filechk,fwbin,.rodata.$(FWSTR),)
+	$(call filechk,fwbin)
 
 $(obj)/%.extgen.S: FORCE
-	$(call filechk,fwbin_ext,.pblext.$(FWSTR),a)
+	$(call filechk,fwbin_ext)
 
 # This dependency is used if missing firmware should fail the build immediately
 fwdep-required-y = $(FIRMWARE_DIR)/%
diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
new file mode 100755
index 0000000000..653e6f013a
--- /dev/null
+++ b/scripts/gen-fw-s
@@ -0,0 +1,63 @@
+#!/usr/bin/env bash
+# SPDX-License-Identifier: GPL-2.0
+#
+# Generate assembly source to embed firmware binary
+#
+# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags]
+
+fwname=$1
+fwdir=$2
+secprefix=$3
+secflags=$4
+
+fwstr=$(echo "$fwname" | tr '/.-' '___')
+fwpath="$fwdir/$fwname"
+
+sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
+
+echo "/* Generated by scripts/gen-fw-s */"
+echo "#include <asm-generic/pointer.h>"
+echo ".section .note.GNU-stack,\"\",%progbits"
+
+# include firmware if exists, otherwise include a reference to
+# the firmware filename in the .missing_fw section
+echo "    .section ${secprefix}.${fwstr},\"${secflags}\""
+echo "    .p2align ASM_LGPTR"
+echo ".global _fw_${fwstr}_start"
+echo "_fw_${fwstr}_start:"
+if [ -f "$fwpath" ]; then
+	echo ".incbin \"${fwpath}\""
+else
+	echo "#if defined(__PBL__)"
+	echo "ASM_PTR _fwname_${fwstr}"
+	echo "#endif"
+fi
+echo ".global _fw_${fwstr}_end"
+echo "_fw_${fwstr}_end:"
+
+# include sha256, needed for external firmware
+echo "    .section .rodata.${fwstr}.sha"
+echo "    .p2align ASM_LGPTR"
+echo ".global _fw_${fwstr}_sha_start"
+echo "_fw_${fwstr}_sha_start:"
+echo "    .byte ${sha}"
+echo ".global _fw_${fwstr}_sha_end"
+echo "_fw_${fwstr}_sha_end:"
+if [ -f "$fwpath" ]; then
+	echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
+	echo ".error \"sha256sum invalid\""
+	echo ".endif"
+fi
+
+# include a string containing the firmware name. When a non existing
+# firmware is referenced in the PBL then _fwname_${fwstr} is referenced
+# above rather than the firmware itself. The barebox build system checks
+# if the missing_fw section is empty. If it is, then we have all necessary
+# firmware files. If not, then we either fail the compilation
+# (CONFIG_MISSING_FIRMWARE_ERROR=y) or print a missing firmware warning
+# (CONFIG_MISSING_FIRMWARE_ERROR=n).
+echo "#ifdef __PBL__"
+echo "    .section .missing_fw,\"a\""
+echo "_fwname_${fwstr}:"
+printf '.ascii "%s"\n' "firmware/${fwname}\\n"
+echo "#endif"

-- 
2.47.3



