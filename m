Delivery-date: Tue, 30 Apr 2024 07:54:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gRv-009bD2-0t
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 07:54:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gRu-0008Ur-OD
	for lore@pengutronix.de; Tue, 30 Apr 2024 07:54:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1E64CB3oYtPYNxe79va4MAvLLO4sJ6TzRt2XNBAoPNg=; b=VGydOS01dDg//07okr0YEjCchr
	UQih+NzxdTf4PKP68evSMyBFNMs55wHNUB3AEfw3Zv0ATXPlPxTQAkZqsYonlc77WgDM9ARkuAzv9
	N1EfAMb2AKUfYH+Fr/qKs+j1I9HZ75FXqv4pbd85iqrZKbIg5xM0JaeRaiKcQOKB1PMz20VjP8fUS
	j08W6MBoZLdYeU5ZhWoC9r0t70HYB3voDN9109K9NYPkuL1NUQANYl4NwJI3F3sbHVqgbeZVuOve9
	C20Cf7Jz27I/LAfSS1O/xlXO9S8ZRcslxkVP5eRL7rFBfbAyvDlZ8a/7ekQEpVqIgwVOJ1CzIY0tu
	pR136jZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gRQ-00000005CCi-2q8v;
	Tue, 30 Apr 2024 05:54:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gRO-00000005CCQ-2bJU
	for barebox@bombadil.infradead.org;
	Tue, 30 Apr 2024 05:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1E64CB3oYtPYNxe79va4MAvLLO4sJ6TzRt2XNBAoPNg=; b=B36cUqQgeT1OmFnM7YX3CIDksc
	iKD9+NEGiW70Pl3avsvzcKOIWgS9r8v7wDEWyUYs3Yt8+M0OBj2JtE+ahnjU+/o2fe5UwOAIwkeCg
	0hzK6IkxK1YlKlCFiUN0PJDQD5pwvdOvOjpnfyTy6+qAJ7rLomOuUqeGX3puTlEPcoEB1SbDxJPKk
	oPOCboRXMKF2COFZ19oB9O61zJByC9KsI0ap0OgQtbCEXhTPalCp8vqRZikLLLHR2aYCRcJcrYB5T
	ufRb2NmvYeo0Re7sKoSLKKH29BrBwap6apvKF1OjpnqNfV1tmPuQyF42Ydynm26HnAke7re5s0fWY
	8yW7WHZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gRE-0000000Goeq-1RTz
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 05:54:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gR6-0008NY-4Q; Tue, 30 Apr 2024 07:53:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gR5-00F6q0-O1; Tue, 30 Apr 2024 07:53:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gR5-00EkzT-24;
	Tue, 30 Apr 2024 07:53:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 07:53:48 +0200
Message-Id: <20240430055348.3514086-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_065403_605719_98A2CD64 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: remove MLO target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All am335x boards use multi image support, so the MLO target is unused.
Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f91fcb0454..6785432c52 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -112,16 +112,6 @@ KBUILD_CFLAGS_KERNEL += -fPIE
 
 KBUILD_BINARY := barebox.bin
 
-quiet_cmd_mlo ?= IFT     $@
-	cmd_mlo ?= scripts/omap_signGP -o MLO -l $(TEXT_BASE) -c $<
-
-MLO: $(KBUILD_BINARY)
-	$(call if_changed,mlo)
-
-ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
-KBUILD_IMAGE := MLO
-endif
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
-- 
2.39.2



