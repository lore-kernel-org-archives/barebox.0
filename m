Delivery-date: Mon, 05 Jan 2026 12:27:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikI-001VBD-1Q
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikH-0005ze-GC
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HsksG6bvaPu2wI5Wfs6066DHgbmTrtHqYeLr9rNK8ns=; b=IW4louduSQqM4Q4RWr273wR2p3
	stwWAR+60yplM+yYJIfzLRQ4uzV5+z0RJ+bz/pZLF7Ep0Y9IjgRKvnd6MxhegZfVX8Jfy6Twqj7pH
	dqFqV87hM8sNidle+JBPDJx0Kih7FAnawa6ySHvVmWFabLFNaZKFzKjy4trQIUD3D/3J7y4zoznRG
	s0GZCwsdwTSp1VPLGbNxkGYN6yHveEFNfTrYeUyBxBlawvV0UKimv3rnLFtFvJCb+z5t5bOucmuyN
	2AtIvDys954YHxWXJRr++sC8pNumbVUtQurQSJBlOXGzo250qOJ6qcUDjhjgJ19IRJkhD8ePBEcnQ
	pem8y2sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijr-0000000BBMt-0QRK;
	Mon, 05 Jan 2026 11:27:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijo-0000000BBIc-0XYa
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yn-MR; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xh-16;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-105G;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-9-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=3058;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DbGlNhAyjQi0xn6jt1BUzyw6T06oblICBYwHPKM3FDc=;
 b=mHqoWwnO0pOGEKwJKeatBlPvoEo16/gRwydxd01YSqSpqn5hbNV80MDjt+yGSBrJy4sLPZuih
 RcLf6pBLIZ5CeOHakKVMhVljiROauaSp4imMjN+GhKw/rmn4hKrHggV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032704_175786_40C9C662 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH 09/19] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some architectures want to link the barebox proper ELF image into the
PBL. Allow that and provide a Kconfig option to select the ELF image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 18 ++++++++++++++++--
 images/piggy.S  |  4 ++++
 pbl/Kconfig     |  8 ++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 448479ee8cf355a771ce63314ce64a631544f488..8d4fd1504ab64d4f4d1cc19f2b36cff9939964e3 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -138,7 +138,13 @@ $(obj)/%.itb: $(obj)/%.its FORCE
 $(obj)/%.fit: $(obj)/$$(FILE_$$(@F)) $(dtstree)/dtbs-list FORCE
 	$(call if_changed,fit)
 
-$(obj)/piggy.o: $(obj)/barebox.z FORCE
+ifeq ($(CONFIG_PBL_IMAGE_ELF),)
+PIGGY_IMAGE := $(obj)/barebox.z
+else
+PIGGY_IMAGE := $(obj)/barebox.elf.z
+endif
+
+$(obj)/piggy.o: ${PIGGY_IMAGE} FORCE
 
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
 
@@ -154,6 +160,14 @@ $(obj)/barebox.sum: $(obj)/barebox.z FORCE
 $(obj)/barebox.z: $(obj)/../$(BAREBOX_PROPER) FORCE
 	$(call if_changed,$(suffix_y))
 
+# barebox.elf.z - compressed barebox ELF binary
+# ----------------------------------------------------------------
+# Prevent the %.elf pattern rule from building ../barebox.elf
+$(obj)/../barebox.elf: ;
+
+$(obj)/barebox.elf.z: $(obj)/../barebox.elf FORCE
+	$(call if_changed,$(suffix_y))
+
 # %.img - create a copy from another file
 # ----------------------------------------------------------------
 
@@ -219,7 +233,7 @@ ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
 endif
 
-targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o sha_sum.o barebox.sha.bin barebox.sum
+targets += $(image-y) pbl.lds barebox.x barebox.z barebox.elf.z piggy.o sha_sum.o barebox.sha.bin barebox.sum
 targets += $(patsubst %,%.pblb,$(pblb-y))
 targets += $(patsubst %,%.pbl,$(pblb-y))
 targets += $(patsubst %,%.s,$(pblb-y))
diff --git a/images/piggy.S b/images/piggy.S
index 654933ea2ffe4aad9bbed44a44971ef67a3fe183..b09fbfd2e215c674548caeab544ef5ada49a40ea 100644
--- a/images/piggy.S
+++ b/images/piggy.S
@@ -3,6 +3,10 @@
         .section .piggydata,"a"
         .globl  input_data
 input_data:
+#ifdef CONFIG_PBL_IMAGE_ELF
+        .incbin "images/barebox.elf.z"
+#else
         .incbin "images/barebox.z"
+#endif
         .globl  input_data_end
 input_data_end:
diff --git a/pbl/Kconfig b/pbl/Kconfig
index cab9325d16e8625bcca10125b3281062abffedbc..66bba5a4b21a715f3eb55d39c820977bfb3c459f 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -21,6 +21,14 @@ config PBL_IMAGE_NO_PIGGY
 	  want to use the piggy mechanism to load barebox proper.
 	  It's so far only intended for sandbox.
 
+config PBL_IMAGE_ELF
+	bool
+	depends on PBL_IMAGE
+	help
+	  If yes, link ELF image into the PBL, otherwise a raw binary
+	  is linked into the PBL. This must match the loader code in the
+	  PBL.
+
 config PBL_MULTI_IMAGES
 	bool
 	select PBL_IMAGE

-- 
2.47.3



