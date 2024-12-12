Delivery-date: Thu, 12 Dec 2024 09:15:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeML-00774o-0N
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:15:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeML-0000vN-3p
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:15:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i8X18so0ckLoYL+2oNnd9XyPD7fsuVm4Zzoo9++M/U0=; b=KjFTnEwLVH2r1TmxflwerYYwaJ
	/GQkoLmIj8OVwHR9uE9BYHRojqT5TKrg3PCUJ7XllZnv07CdAOs/ZIpoEwhAx8CmPuJs9ieFPo3k5
	p8ZbisdypcHvTrqGXcktBfjJoHBIvgM5wZC5OXItTi869Y/MlKC3YduDOMTrd4bAMOahTtFxWLd8j
	pwScw5KkCWi/4b1QkcHFYcoj5qO4r/+/AUFbsroTJY4ABkUgZPc2mMcAUdubeNcWGhFlQGt69wwOf
	Ft7wYkuRvrhuLCsnFyb4kc5hA44WETPXyjIsZhK8txwrhIVLZ1SZZa1bk2uDwUZRq1BCfIE4Sate4
	fsub+chA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeLu-0000000HGEQ-06Wt;
	Thu, 12 Dec 2024 08:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeLr-0000000HGDo-2ogn
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeLo-0000qJ-Ms; Thu, 12 Dec 2024 09:15:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeLn-0030Cw-2Q;
	Thu, 12 Dec 2024 09:15:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeLo-00CDOe-1K;
	Thu, 12 Dec 2024 09:15:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Dec 2024 09:15:09 +0100
Message-Id: <20241212081509.2911001-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_001515_710775_93775016 
X-CRM114-Status: UNSURE (   9.85  )
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
Subject: [PATCH] images: add missing FORCE prerequisite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With a985c67be ("fixdep: sync with Linux") we now warn about a missing
FORCE prerequisite. Obey that warning and add it to the %.img target.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 9007911278..295a5cd713 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -146,7 +146,7 @@ $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
 missing_fw = $(strip $(wildcard $(obj)/$(FILE_$(@F)).missing-firmware $(basename $(obj)/$(FILE_$(@F))).missing-firmware))
 
 .SECONDEXPANSION:
-$(obj)/%.img: $(obj)/$$(FILE_$$(@F))
+$(obj)/%.img: $(obj)/$$(FILE_$$(@F)) FORCE
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(Q)$(if $(missing_fw),cat $(missing_fw) >$@.missing-firmware,rm -f $@.missing-firmware)
 	$(call if_changed,$(if $(missing_fw),delete,shipped))
-- 
2.39.5



