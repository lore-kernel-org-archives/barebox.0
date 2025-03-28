Delivery-date: Fri, 28 Mar 2025 09:36:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ck-005DXj-1k
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 09:36:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ck-0000lA-0r
	for lore@pengutronix.de; Fri, 28 Mar 2025 09:36:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OSTUrkxFlSxFB/usU2JT80KdAmJc4P+WdIZGXVXDsnY=; b=fXtGYB6ESmA5SPUsulBGBQEbOf
	Befv4s90rbzm13Zvz/Nq9QoMwUse2TaEs6FVzmEh8u7dVQL8Bq/UG60Jgf4oLNgoe7p6m6eVmNEdx
	F1kqFOiuMUyrgKVmzFf1QN7nlniYSYzafL54rDfEX1o+a5AOyVBXiEe/IRdBb2c9MQ6UpvvLQw33S
	v68uQFQ0Hs2TBCttwJOLmVf0qtaf3Fw07r2Wt38bbfZIqQ11+lHmJj69YesJfghIceR1WipVpG2b2
	NO7jzI7+MGnCZQpzeHlzIdbd/rXFc0M7zX28TbrbprzMFPuP5Hg+gKtm735M9iojODS/u46X1n60/
	BDFvT0qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5CD-0000000CwAB-1Hzt;
	Fri, 28 Mar 2025 08:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5BH-0000000Cw4O-3rXX
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 08:35:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5BG-0000P9-IC; Fri, 28 Mar 2025 09:35:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5BG-0024MF-1D;
	Fri, 28 Mar 2025 09:35:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5BG-0029dc-0u;
	Fri, 28 Mar 2025 09:35:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Mar 2025 09:35:09 +0100
Message-Id: <20250328083509.513606-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_013511_957033_6A11E1FB 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: payload: init: fix condition in warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The warning is supposed to point out a missing CONFIG_FS_EFI as possible
issue, but the condition was inverted, so it suggested enabling it when
it already was.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 35cd8fc71661..3d9717b82540 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -371,7 +371,7 @@ static int efi_late_init(void)
 
 	if (!get_mounted_path("/boot")) {
 		pr_warn("boot device couldn't be determined%s\n",
-			IS_ENABLED(CONFIG_FS_EFI) ? " without CONFIG_FS_EFI" : "");
+			IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONFIG_FS_EFI");
 		return 0;
 	}
 
-- 
2.39.5



