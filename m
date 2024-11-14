Delivery-date: Thu, 14 Nov 2024 15:24:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBalv-001sFp-33
	for lore@lore.pengutronix.de;
	Thu, 14 Nov 2024 15:24:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBalv-0003rM-AY
	for lore@pengutronix.de; Thu, 14 Nov 2024 15:24:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W0xp4jLON7fylGXYGawJRHNcYvP+BSI9/YceN90zaIU=; b=zDDVun67/+glvQ7FqTmkvpFXpY
	F2FCImgFdlPckp1FSm7zogbyjKexuUgDPQEELIx5Dhq8uDMmKzFkTzHgyWsbRUkxEaFTV/fSoXyYS
	h36C86ZUMqmA4Br1aHplpNs/2Pn6VIeZa3YDIp5QTqEZu6khMoVowCYwP/Wa1+ZSQY+bHJpraeirj
	4+AGReyTmJs79gBk4KpNP7IgOKqr/+FSKALd28ij9xqI2UCSvAbJ4ws7qqIeyiX1Zyvv/8ZuNKWnn
	njpAln5pzzfSZzdyS6O5sYCMjr+6orQg1sIKyZ+Uz7usj2UcX+/kEGjwW0W7FCgsGTrP8ZihXCASE
	GaroEKHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBalE-0000000AC2j-2OCT;
	Thu, 14 Nov 2024 14:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBahn-0000000ABJK-2PTv
	for barebox@lists.infradead.org;
	Thu, 14 Nov 2024 14:20:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBahl-0002cS-VV; Thu, 14 Nov 2024 15:20:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBahl-000kqq-2Y;
	Thu, 14 Nov 2024 15:20:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBahl-000L7y-2C;
	Thu, 14 Nov 2024 15:20:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Nov 2024 15:20:16 +0100
Message-Id: <20241114142016.80497-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_062019_638319_11FD459A 
X-CRM114-Status: GOOD (  11.00  )
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
Subject: [PATCH] bootchooser: export bootchooser_entry_boot function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When migrating a board to use bootchooser instead of a custom boot
handler, it can be useful to add an intermediate boot target that
decides whether to use bootchooser or the old boot target it replaces.

Make expressing this straight-forward in C by exporting
bootchooser_entry_boot(), so it can be called from the intermediate boot
target's struct bootentry::boot function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootchooser.c  | 2 +-
 include/bootchooser.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 65291c5e59d3..5df7ff764db8 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -868,7 +868,7 @@ int bootchooser_boot(struct bootchooser *bc)
 	return ret;
 }
 
-static int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
+int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
 {
 	struct bootchooser *bc;
 	int ret;
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 2cfd5b126ab9..31989163b236 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -31,6 +31,8 @@ struct bootchooser_target *bootchooser_target_first(struct bootchooser *bootchoo
 struct bootchooser_target *bootchooser_target_next(struct bootchooser *bootchooser,
 					       struct bootchooser_target *cur);
 
+int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun);
+
 #define bootchooser_for_each_target(bootchooser, target) \
 	for (target = bootchooser_target_first(bootchooser); target; \
 	     target = bootchooser_target_next(bootchooser, target))
-- 
2.39.5



