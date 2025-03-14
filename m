Delivery-date: Fri, 14 Mar 2025 10:46:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt1d0-00Dx1E-2a
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 10:46:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt1cz-0007az-Fj
	for lore@pengutronix.de; Fri, 14 Mar 2025 10:46:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5gfAlpT+q/dxypiLa9Rqu5JrdTSIzPG0K3zhuFbN3Og=; b=uPr78hj5CQSBHoAEDF3A3nLZua
	wyqHwjrIE4b409a+6hY6+e1sQfyGtPc/NDNo8k2R2G+N1tARVqy3v4Gj7LqQfftO4249uWkxq165z
	JKd3Bg64JreaK4fJCea3G/C9Yqq4jED1O9rNjMw84DfcQdarGZgVVN2UWuvTqAhMoi/DCTJUghJiz
	K9lU75/nMY2hBSjTg3mighdXsf30sHhDwNTCa2nQPnjbtyJX4+ZueE51bra3Ytn5DDvR5/zoZzo9D
	bXIp4q/WPSbcFjRVxooOlXg4VeuDIZnHygG3pwuEnIcsEJ844pmmXSasYowxNd85HZyi0d4Gg1t5n
	yCYESyOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt1cE-0000000DiY9-1ipJ;
	Fri, 14 Mar 2025 09:46:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt1cB-0000000DiXO-1ROY
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 09:46:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-0007RH-B5; Fri, 14 Mar 2025 10:46:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-005gE0-0T;
	Fri, 14 Mar 2025 10:46:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-00FEdi-07;
	Fri, 14 Mar 2025 10:46:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Mar 2025 10:45:58 +0100
Message-Id: <20250314094559.3631184-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_024603_379184_4BC5D6DF 
X-CRM114-Status: GOOD (  15.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] firmware: export firmware directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The recently added k3r5 code needs firmware blobs as part of the image
generation. It hardcodes the firmware path to $(srctree)/firmware which
is the default, but could changed with CONFIG_EXTRA_FIRMWARE_DIR.

Move setting of $(fwdir) to the toplevel Makefile and export it to make
it available to images/Makefile.k3. As fwdir is a bad name for an
exported variable rename it to FIRMWARE_DIR.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile          |  6 ++++++
 firmware/Makefile | 14 +++++---------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/Makefile b/Makefile
index 40d7553dfc..2341625d64 100644
--- a/Makefile
+++ b/Makefile
@@ -515,6 +515,12 @@ export LDFLAGS_barebox LDFLAGS_pbl LDFLAGS_elf
 export CFLAGS_UBSAN
 export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE
 
+# Create $(FIRMWARE_DIR) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
+# leading /, it's relative to $(srctree).
+FIRMWARE_DIR := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
+FIRMWARE_DIR := $(addprefix $(srctree)/,$(filter-out /%,$(FIRMWARE_DIR)))$(filter /%,$(FIRMWARE_DIR))
+export FIRMWARE_DIR
+
 # Files to ignore in find ... statements
 
 export RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o    \
diff --git a/firmware/Makefile b/firmware/Makefile
index 2f47e04bee..a3fdaa0f7c 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -42,10 +42,6 @@ fw-external-$(CONFIG_FIRMWARE_LS1046A_ATF) += ls1046a-bl31.bin
 pbl-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 pbl-firmware-$(CONFIG_FIRMWARE_TQMA6UL_OPTEE) += mba6ul_optee.bin
 
-# Create $(fwdir) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
-# leading /, it's relative to $(srctree).
-fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
-fwdir := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
 fwobjdir := $(objtree)/firmware
 
 pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
@@ -54,7 +50,7 @@ pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
-FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
+FWNAME_EXISTS = $(if $(wildcard $(FIRMWARE_DIR)/$(FWNAME)),1,0)
 
 filechk_fwbin = { \
 	echo "/* Generated by $(src)/Makefile */"		;\
@@ -65,7 +61,7 @@ filechk_fwbin = { \
 	echo ".global _fw_$(FWSTR)_start"			;\
 	echo "_fw_$(FWSTR)_start:"				;\
 	echo "\#if $(FWNAME_EXISTS)"				;\
-	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
+	echo "    .incbin \"$(FIRMWARE_DIR)/$(FWNAME)\""		;\
 	echo "\#elif defined(__PBL__)"				;\
 	echo "ASM_PTR _fwname_$(FWSTR)"				;\
 	echo "\#endif"						;\
@@ -103,12 +99,12 @@ $(obj)/%.sha.bin: $(obj)/%.sum FORCE
 	$(call if_changed,sha256bin)
 
 $(obj)/%.sum: FORCE
-	$(if $(wildcard $(fwdir)/$*), $(call if_changed,sha256sum,$(fwdir)/$*), @touch $@)
+	$(if $(wildcard $(FIRMWARE_DIR)/$*), $(call if_changed,sha256sum,$(FIRMWARE_DIR)/$*), @touch $@)
 
 clean-files += *.sha.bin *.sum
 
 # This dependency is used if missing firmware should fail the build immediately
-fwdep-required-y = $(fwdir)/%
+fwdep-required-y = $(FIRMWARE_DIR)/%
 # This dependency expands to nothing if the file doesn't exist. This allows
 # delaying the firmware check:
 #
@@ -117,7 +113,7 @@ fwdep-required-y = $(fwdir)/%
 #
 # This way, we allow users to build defconfigs with multiple images without requiring
 # them to install all firmware for all platforms if only few are of interest.
-fwdep-required-n = $$(wildcard $(fwdir)/%)
+fwdep-required-n = $$(wildcard $(FIRMWARE_DIR)/%)
 
 .SECONDEXPANSION:
 # The .o files depend on the binaries directly if available; the .S files don't.
-- 
2.39.5



