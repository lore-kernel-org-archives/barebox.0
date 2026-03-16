Delivery-date: Mon, 16 Mar 2026 18:21:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdR-001Ve8-1g
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdQ-0004x4-Sl
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RdvlbwGcO22aGDlEgevjvXMB5gXRaPEDwkgo1gIfu7k=; b=xYQSykaSLEfdiqPNIN5Dqw+O3R
	eMIKcG11cIbouChTcchE58qnhRD4FzE1PuNoCAdTeDVd5vZBVZLZM1tS6YvU7/wUIViCtodd3lbse
	IR2yJF591aKwZutQILmP6SjmGGCpoVDLYA7EIBlRVlXKxdPHQCdLgA+Z13xaS6XCACB3ATcpngI52
	37U6eTI5/HEcXXRrwhcMvJBuf+Bf3OGOec1GTCnKu60kDFcv1CHI8JvjTtcTik+px5eLDdJt+9n/y
	HagzPDlS7ynXVp6Gnf+cEwHn2ZXShAf9OF7yhaVRT7ZeDZ1A6cK8S0DZ7d63hEvwhfibZdOzdfaoJ
	zyJ1HU7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd4-00000004Y21-2KAR;
	Mon, 16 Mar 2026 17:21:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd1-00000004Y0E-41S1
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fd-1L; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi0-2R;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2baJ;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-2-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=1145;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LiyWBnxz6l/uIGz5qRpi+lNy6MmnkTSy6TJMHtTF29I=;
 b=986vhgkPoqRjAu7duNG5aeU7lYJOsyN5mY8QbSXsjVDcLI5+WXRzHuOEkLg/UrcrghgoFzBxH
 B4iJDxkQhfRDBOE1SwBRdN4ZHwHJqlL8GF05xlZoeKDJZXdU+n64nrx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_102119_996530_DC225A4E 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: radxa-rock5: Use compressed DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/radxa-rock5/lowlevel.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/radxa-rock5/lowlevel.c b/arch/arm/boards/radxa-rock5/lowlevel.c
index 373cc1ba4e..e70752be31 100644
--- a/arch/arm/boards/radxa-rock5/lowlevel.c
+++ b/arch/arm/boards/radxa-rock5/lowlevel.c
@@ -8,8 +8,8 @@
 #include <debug_ll.h>
 #include <mach/rockchip/rockchip.h>
 
-extern char __dtb_rk3588_rock_5b_start[];
-extern char __dtb_rk3588_rock_5t_start[];
+extern char __dtb_z_rk3588_rock_5b_start[];
+extern char __dtb_z_rk3588_rock_5t_start[];
 
 ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
 {
@@ -22,7 +22,7 @@ ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
 
 	setup_c();
 
-	rk3588_barebox_entry(__dtb_rk3588_rock_5b_start);
+	rk3588_barebox_entry(__dtb_z_rk3588_rock_5b_start);
 }
 
 ENTRY_FUNCTION(start_rock5t, r0, r1, r2)
@@ -36,5 +36,5 @@ ENTRY_FUNCTION(start_rock5t, r0, r1, r2)
 
 	setup_c();
 
-	rk3588_barebox_entry(__dtb_rk3588_rock_5t_start);
+	rk3588_barebox_entry(__dtb_z_rk3588_rock_5t_start);
 }

-- 
2.47.3



