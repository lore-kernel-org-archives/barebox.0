Delivery-date: Fri, 15 Sep 2023 15:05:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qh8Vv-00GGAW-IG
	for lore@lore.pengutronix.de; Fri, 15 Sep 2023 15:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qh8Vt-0000kO-I1
	for lore@pengutronix.de; Fri, 15 Sep 2023 15:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z6h+GaTuXrprTido0yaY9ZgOiXOvypUfUqQP5aUjXxs=; b=NixnJhsEYS4lpejfH7RFvq7lih
	uEml+GKD8TMMhuYxgWNDEh48JL5EmYdEF5yObH29g0fr8t7+8gfdWZERMcjuIRJ2K3yzHX+NtAxam
	uvnQF0R6KGBs4BOx7IUY1YEc2kCsMcZrdb05b1ZO/WbLBVcihRzyRcaoC5fucY/w0NaVK6dPzuJ3s
	DoNC22bKjn9w3CA6ND7UtO3+TWK5F59IIXY+qLx1gFSYAec+qVaDvn5AVdupygZSbIWe+F29wSncH
	zDZ9QPdStNHvwBPTWghKdAEVq7xWciu6DVlOI6iPeRamhJs2v4LWBvJ+T1Ws2pN2z0lN2rCJC1Oan
	Nma7YlWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh8UR-00Alw1-0V;
	Fri, 15 Sep 2023 13:04:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qh8UN-00AlvJ-1P
	for barebox@lists.infradead.org;
	Fri, 15 Sep 2023 13:04:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qh8UG-0000Fs-Ij; Fri, 15 Sep 2023 15:03:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qh8UG-006XtZ-6N; Fri, 15 Sep 2023 15:03:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qh8UG-009J0g-0U;
	Fri, 15 Sep 2023 15:03:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Sep 2023 15:03:53 +0200
Message-Id: <20230915130353.2217982-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_060403_476040_1E36F6D1 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: stm32mp: don't generate .img symlinks for .stm32 binaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The .img extension for stm32mp1 images has been unfortunate. The format was
deprecated and finally removed in TF-A v2.8 in favor of the FIP format.

We won't remove support in barebox soon, but we shouldn't call these images
*.img. Since commit 3536e3904152 ("ARM: stm32mp: change stm32image extension to .stm32")
introduced with v2022.04.0, the .img files have been symlinks to regular files with
a stm32 extension and this commit now finishes the job and deletes the .img symlinks.

Users still using older TF-A versions should change their build system to use the same
barebox image file, but with .stm32 extension.

Users with new TF-A versions, should use the barebox-stm32mp-generic-bl33.img
as non-trusted firmware in the FIP in addition to a matching device tree generated
during the same barebox build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 59d65722078d..86ff870051c2 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -9,7 +9,7 @@
 .SECONDEXPANSION:
 $(obj)/%.stm32: $(obj)/$$(FILE_$$(@F)) FORCE
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
-	@(cd $(obj) && ln -fs $(notdir $@) $(basename $(notdir $@)).img)
+	@(cd $(obj) && rm -f $(basename $(notdir $@)).img)
 	$(call if_changed,stm32_image)
 
 define build_stm32mp_image =
-- 
2.39.2



