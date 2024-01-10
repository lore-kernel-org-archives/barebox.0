Delivery-date: Wed, 10 Jan 2024 16:00:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNa4W-00Bkah-0S
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 16:00:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNa4V-0007EX-HX
	for lore@pengutronix.de; Wed, 10 Jan 2024 16:00:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NmKJ08lcb00S2n7FjYQArlHgbQBzsISJL4Wn2l8ydAA=; b=BpvIyTR8B4+ybMRRWoOJkhBZxp
	6OYMIn1ZciU3JffOlH+qKBxeQcL+NNZ1kKvxMKjrSiqQXIgNNqM6AU4/GdDlH452fH92/cgMypfwe
	sDkKYrNjUQy0cJ75fYL1ezEzwiTxmv0yiIQ6yhkjU4uMVnb3nHs1VCoKfDmE+SAA1pWFbp5Y+vxjM
	bfx7RDjKz2/aeNOE6eDj9H1QyzScNdAPwEs4hMTkRCiEvJs+geYscayequ+tCP8LF4tiM7Y5we3Ca
	ncB4PPqs5nz97VE7lFClARypnkPRxmKHPDT6joZEN9TE5NUo+cJQHXFErKfbQZ0BE5lLnEgLcik4h
	OBE16Xzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNa31-00CSvj-0K;
	Wed, 10 Jan 2024 14:59:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNa2y-00CSuS-1X
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:59:13 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNa2v-0006nV-OO
	for barebox@lists.infradead.org; Wed, 10 Jan 2024 15:59:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 10 Jan 2024 15:59:08 +0100
Message-Id: <20240110145908.3965855-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_065912_512525_9E40869F 
X-CRM114-Status: GOOD (  12.16  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: fix missing firmware handling for external firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently we depend on the external firmware file since we need it for
the sha256sum. But this dependency break the 'optional missing firmware'
feature.

Fix this by dropping the firmware file prerequisite and instead evaluate
the FWNAME_EXISTS variable. If the firmware file does not exist a dummy
file is created and the build continues till the linking process (like
we do for the other firmware).

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 firmware/Makefile    | 6 +++---
 images/Makefile      | 2 +-
 scripts/Makefile.lib | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 51d98d54bf14..a07b31caec73 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -41,7 +41,7 @@ fwobjdir := $(objtree)/firmware
 pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
 obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
-FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
+FWNAME    = $(patsubst $(obj)/%.sum,%,$(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@)))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
 FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
 
@@ -91,8 +91,8 @@ $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
 $(obj)/%.sha.bin: $(obj)/%.sum FORCE
 	$(call if_changed,sha256bin)
 
-$(obj)/%.sum: $(obj)/% FORCE
-	$(call if_changed,sha256sum)
+$(obj)/%.sum: FORCE
+	$(if $(findstring 1,$(FWNAME_EXISTS)), $(call if_changed,sha256sum,$(obj)/$*), @touch $@)
 
 clean-files += *.sha.bin *.sum
 
diff --git a/images/Makefile b/images/Makefile
index 7b4e01953185..c0105609eec2 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -132,7 +132,7 @@ $(obj)/barebox.sha.bin: $(obj)/barebox.sum FORCE
 	$(call if_changed,sha256bin)
 
 $(obj)/barebox.sum: $(obj)/barebox.z FORCE
-	$(call if_changed,sha256sum)
+	$(call if_changed,sha256sum,$<)
 
 
 # barebox.z - compressed barebox binary
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0b236babb275..f205e08afc13 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -301,7 +301,7 @@ quiet_cmd_sha256bin ?= SHA-BIN $@
 			while read -r byte; do printf '\%o' $$byte; done)" > $@
 
 quiet_cmd_sha256sum ?= SHA     $@
-      cmd_sha256sum ?= sha256sum $< > $@
+      cmd_sha256sum ?= sha256sum $2 > $@
 
 # Decompressor for barebox proper binary when using PBL
 # ---------------------------------------------------------------------------
-- 
2.39.2



