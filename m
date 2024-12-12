Delivery-date: Thu, 12 Dec 2024 09:36:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegE-0077OO-1x
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegE-00043c-Gj
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPjJQNdY8Thza93Cf9RAdR6q82fuL0Rgghy0DMA89R8=; b=tLkxiCTCEwuQYVWNLhcizKsBWK
	xFIsn914Bw9X3wjllglt1eqY0h3DnrxyeyKBZiRaXK5Dt6LIBHk2735X3qAGS9Ve0Zh9b6IMINyV5
	+u+cQoZbrlLlLBInpCQp8MjeHY4xOV1hOE8e4qxSSvobYi9ZFdlu3MdhararCI6355V+dR2Q9cqu6
	aDknvSq/6t1MGEuipocDtzBUQ2Q+a3NYaJJAJFI0CFYOC5eZf3ddBq3N7kjVS2IHbwGDr+i/2NJrm
	OS1dMiR6r5fpSPdjg7UxFHosXs2Cpgh66aj40k1u1S1hTCrlTofYI3nib0I+WrtDT5Hs38nWByKVY
	EEll9KHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefq-0000000HKGa-0q2K;
	Thu, 12 Dec 2024 08:35:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeai-0000000HJDF-2DAw
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00034e-AZ; Thu, 12 Dec 2024 09:30:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-0030Et-19;
	Thu, 12 Dec 2024 09:30:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00AkAx-08;
	Thu, 12 Dec 2024 09:30:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 09:30:32 +0100
Message-Id: <20241212083033.2560690-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
References: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_003036_577020_71C9D4A8 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] images: don't prelink if input file didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the input file hasn't changed, there is no need to re-prelink it.
Thus turn the cmd into a if_changed and ensure it's not empty as
otherwise, make will raise an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 4 ++--
 scripts/Makefile.lib | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 5ce563a426ab..0ef2ea6bf6de 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -68,11 +68,11 @@ PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
 $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
-	$(call cmd,prelink__)
+	$(call if_changed,prelink__)
 
 $(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
-	$(call cmd,prelink__)
+	$(call if_changed,prelink__)
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e2d0168550f8..19aa506dc645 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -282,7 +282,7 @@ quiet_cmd_prelink__ = PRELINK $@
 endif
 
 quiet_cmd_prelink__ ?=
-      cmd_prelink__ ?=
+      cmd_prelink__ ?= :
 
 # Linking
 # ---------------------------------------------------------------------------
-- 
2.39.5



