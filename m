Delivery-date: Thu, 02 Mar 2023 12:17:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwe-006Uoj-2q
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwc-0001em-ST
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V6gVsZZd+8KqLMEj9jatcpKBsMfN2x33ACsZ6s+jIyU=; b=qKyu4LrneiRuT8UL9AYyEeJz0k
	ERGaHkw/zO6hwz3qF83SSi70pNueK1jzfQrENdprg3rrkvv7N8KoGzdS/sqmaddqIIExcYN+uUaSX
	6iFyn/XSuTyvK+BLbiDoZoceDJOae7Y59IjEx2Dmmi75Eg8VKc4flCpMnjoZyzS7ZO8Ux87c7a5f5
	b+9vwpJ3gOFmfRdLcqTb9EXhOXQkL552hggcy0EkpPFF6G+YtEWOg7mLBi24xb8kO4f6+OnVry0xz
	4hn4enwiypQxoMpQUNSL1bb7a5dyreK8+fo07bfAY87HpOqbo60RKyREOBOMFndy9HNU22JNhwDMN
	GKswDoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvR-001sWh-Cj; Thu, 02 Mar 2023 11:16:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXguy-001sGZ-6U
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgux-00018X-01; Thu, 02 Mar 2023 12:16:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-001JdL-Ap; Thu, 02 Mar 2023 12:16:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVa-VX; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:16:01 +0100
Message-Id: <20230302111606.1054037-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031612_291281_7C7FA86D 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/13] ARM: drop unused mvebu code in Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All mvebu boards are multi-image, so they don't need image generation
in arch/arm/Makefile anymore. Drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile          |  2 +-
 arch/arm/Makefile | 21 ---------------------
 2 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/Makefile b/Makefile
index bcc94cd13a..d7b4cc6ce9 100644
--- a/Makefile
+++ b/Makefile
@@ -1146,7 +1146,7 @@ CLEAN_FILES +=	barebox System.map stickypage.bin include/generated/barebox_defau
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl \
-		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
+		barebox.uimage barebox.spi \
 		barebox.efi barebox.canon-a1100.bin
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3738b4d15a..3867d48427 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -197,27 +197,6 @@ ifeq ($(CONFIG_MACH_CANON_A1100),y)
 KBUILD_IMAGE := barebox.canon-a1100.bin
 endif
 
-KWBIMAGE_OPTS = \
-	-c -i $(srctree)/$(BOARD)/kwbimage.cfg -d $(TEXT_BASE) -e $(TEXT_BASE)
-
-quiet_cmd_kwbimage = KWB     $@
-      cmd_kwbimage = scripts/kwbimage -p $< $(KWBIMAGE_OPTS) -o $@ || \
-	echo "WARNING: Couldn't create KWB image due to previous errors."
-
-quiet_cmd_kwbimage_uart = KWBUART $@
-      cmd_kwbimage_uart = scripts/kwbimage -m uart -p $< $(KWBIMAGE_OPTS) -o $@ || \
-	echo "WARNING Couldn't create KWB image due to previous errors."
-
-barebox.kwb: $(KBUILD_BINARY) FORCE
-	$(call if_changed,kwbimage)
-
-barebox.kwbuart: $(KBUILD_BINARY) FORCE
-	$(call if_changed,kwbimage_uart)
-
-ifeq ($(CONFIG_ARCH_MVEBU),y)
-KBUILD_IMAGE  := barebox.kwb barebox.kwbuart
-endif
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
-- 
2.30.2



