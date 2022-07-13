Delivery-date: Wed, 13 Jul 2022 11:59:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ9A-005uXu-UB
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ98-0000BR-Q6
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dRm8FcEWollJLwgg2Dpbs9pRNDAAg/TJ9AsdtMW0Nuc=; b=XsLlxwJUWXHBaaWk1yUw6XegWY
	gwhSyCgLgjX5fZzTA83HzoXtXnx5TgdN7iCpPRc5KrpKak/nKKAE1pRcoedCtnhHlWUx0gmjpZfHR
	b/r6wu9cXhqTZRnL8J/gwLqF7mEAX/ydrDEuYnUrJjj/V89NMcDSiRBk+wuTVCY/WfYSpeqK1SVrk
	j/R3BcG3uIfFwvsg5sKw3kdphY6cYzT4F6SsB8gTF5f8+ENMLTgRiRzvjBszT97Ly07s1ucr2ACbi
	rI1BomuQX+aLt4h0A9f9TkDC97NjNW2n7G6oda2lU6bUB+TG+zGaKaS+otCylFG0Zpnw2cikEB17R
	JcVa4H0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7r-002UxS-IC; Wed, 13 Jul 2022 09:57:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7f-002UqF-I0
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-0008DY-Kr; Wed, 13 Jul 2022 11:57:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7c-000gTe-UQ; Wed, 13 Jul 2022 11:57:32 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spu-QC; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:30 +0200
Message-Id: <20220713095730.1878941-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025735_676519_821557B5 
X-CRM114-Status: GOOD (  12.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 6/6] kbuild: pbl: use same compression algo for both barebox and DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

lzop hasn't seen any activity since 2017 and has been recently removed
from OpenEmbedded, which is unfortunate as we unconditionally use LZO
for compressing device trees that are referenced via __dtb_z_.

To make barebox easier to integrate, use the same compression algorithm
for both barebox and compressed DTB.

Note that the decompressor code will be in the image twice: Once in PBL
in uncompressed form to decompress barebox proper and once in compressed
form to decompress the DTB.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop LZO/LZ4 hardcoding with autodetection, instead use same algo for both
---
 arch/arm/cpu/start.c | 11 ++++++++---
 images/Makefile      |  6 ------
 pbl/Kconfig          |  5 ++++-
 scripts/Makefile.lib | 11 ++++++++++-
 4 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 755d48851956..5861c15d43df 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -52,7 +52,7 @@ u32 barebox_arm_machine(void)
 void *barebox_arm_boot_dtb(void)
 {
 	void *dtb;
-	int ret;
+	int ret = 0;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
 
@@ -75,8 +75,13 @@ void *barebox_arm_boot_dtb(void)
 	if (!dtb)
 		return NULL;
 
-	ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
-			 NULL, NULL, dtb, NULL, NULL);
+	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE))
+		memcpy(dtb, compressed_dtb->data,
+		       compressed_dtb->datalen_uncompressed);
+	else
+		ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
+				 NULL, NULL, dtb, NULL, NULL);
+
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
 		free(dtb);
diff --git a/images/Makefile b/images/Makefile
index a148cf41766b..c79f1a272e9c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -108,12 +108,6 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
 
-suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
-suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN) = xzkern
-suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
-
 $(obj)/piggy.o: $(obj)/barebox.z FORCE
 
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 4dfa9553f786..ba809af2d5b9 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -31,7 +31,10 @@ if PBL_IMAGE
 config USE_COMPRESSED_DTB
 	bool
 	depends on ARM || RISCV
-	select LZO_DECOMPRESS
+	select LZ4_DECOMPRESS if IMAGE_COMPRESSION_LZ4
+	select LZO_DECOMPRESS if IMAGE_COMPRESSION_LZO
+	select ZLIB if IMAGE_COMPRESSION_GZIP
+	select XZ_DECOMPRESS if IMAGE_COMPRESSION_XZKERN
 
 config PBL_RELOCATABLE
 	depends on ARM || MIPS || RISCV
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c2301b5370da..61617bd9dcba 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -272,6 +272,15 @@ cmd_ld = $(LD) $(KBUILD_LDFLAGS) $(EXTRA_LDFLAGS) $(LDFLAGS_$(@F)) \
 quiet_cmd_objcopy = OBJCOPY $@
 cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
 
+# Decompressor for barebox proper binary when using PBL
+# ---------------------------------------------------------------------------
+
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
+suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN) = xzkern
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
+
 # Gzip
 # ---------------------------------------------------------------------------
 
@@ -337,7 +346,7 @@ $(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
 $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
-	$(call if_changed,lzo)
+	$(call if_changed,$(suffix_y))
 
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
-- 
2.30.2



