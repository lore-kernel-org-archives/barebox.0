Delivery-date: Thu, 02 Mar 2023 12:18:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwi-006Upp-JV
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:18:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwh-0001iW-LC
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1JJxJnT45TmiJFVdCTJyx9wlbXb6rhyBu7t2QrdbuWw=; b=oxYbrafDD66VG1Lx7JjHpkEJGk
	3is3PYTFeUcQGhTHBx0me5v67Wt2QJTWwfS80Btj1FsSYS7iSMtu/5X5xl8oo+aToN8ZTzipSh8QL
	9s+EqOCYdeohVphkSkX7crQXK29CGGqLhOQYOiiqdikPEjyondVuKwmONqO7nPdlfk+Bh+r4wl7Nn
	kj/bKW/mL2EcsaabYvZx8zDHe8OK02ZeMPjwc5dPYyKDGKIIu7wb6jrTVGV7ym9+1ZYQBY5x88TnT
	bS3ky6d6oAephKKkHgzKT2UrDz7c7kCMcVxZGQ/e9dmzCs1Toph9QSBwyb7Bmz4TzaKZ6+5/LKGFl
	TyRg14IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvB-001sMH-08; Thu, 02 Mar 2023 11:16:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sG1-J1
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-00017c-CZ; Thu, 02 Mar 2023 12:16:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-001Jd4-MC; Thu, 02 Mar 2023 12:16:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVd-W1; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:16:02 +0100
Message-Id: <20230302111606.1054037-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031611_667760_79AC15AD 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH 09/13] ARM: drop unused am35xx code in Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All users of AM335x SPI images are multi-image, so the SPI image
generation code in arch/arm/Makefile is unused. Drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile          |  2 +-
 arch/arm/Makefile | 13 -------------
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/Makefile b/Makefile
index d7b4cc6ce9..b7e22d9e8b 100644
--- a/Makefile
+++ b/Makefile
@@ -1146,7 +1146,7 @@ CLEAN_FILES +=	barebox System.map stickypage.bin include/generated/barebox_defau
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl \
-		barebox.uimage barebox.spi \
+		barebox.uimage \
 		barebox.efi barebox.canon-a1100.bin
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3867d48427..0a81e6c254 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -174,19 +174,6 @@ ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
 endif
 
-quiet_cmd_am35xx_spi_image = SPI-IMG $@
-      cmd_am35xx_spi_image = scripts/mk-omap-image -s -a $(TEXT_BASE) $< > $@
-
-barebox.spi: $(KBUILD_BINARY) FORCE
-	$(call if_changed,am35xx_spi_image)
-
-MLO.spi: MLO FORCE
-	$(call if_changed,am35xx_spi_image)
-
-ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
-KBUILD_IMAGE := MLO.spi
-endif
-
 quiet_cmd_canon_a1100_image = DD      $@
       cmd_canon_a1100_image = scripts/canon-a1100-image $< $@ || \
 	echo "WARNING: Couldn't create Canon A1100 image due to previous errors."
-- 
2.30.2



