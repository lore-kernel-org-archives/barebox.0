Delivery-date: Wed, 07 Jan 2026 13:58:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Y-002Fp5-22
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 13:58:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Y-00047a-3G
	for lore@pengutronix.de; Wed, 07 Jan 2026 13:58:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pvoM801N9dt9XrId7P4LHBXm5ZZ9wiXR54cSPqEND70=; b=dhlP7GHReiL6fpdRcVfPNUolpW
	JJTj3lkHum2LGC6+5xSMROxbII+3ABtlQkscjEkMOZVfW4Z9rOzzxTl6D5dlj1T3DwjaWxtMpKQqn
	mAttQJaHZE1kOIJCl4xB0cBUi1/WoiZQyTgjZtTUjMM07kyy8RdGA0KV96e9b4jHHAIxt5vnteXwg
	1czm8jhc/CzR7V6AzKQcGhTf3akOTrW2065trhoYY+8UkBlYUqapgBkUL+2mmMkht/nmfoEqTEaJM
	viYoEG5GvzTP2GEluS0JCbJBSNtqcr6aSOHpJXBigXSNO/0NB593G88p/+8gJBOPfzmY8YhOfBMF6
	coik+G0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT73-0000000EwZ6-0ViR;
	Wed, 07 Jan 2026 12:58:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT6y-0000000EwX8-485t
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 12:58:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-0003w3-PR; Wed, 07 Jan 2026 13:58:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-009VqC-1w;
	Wed, 07 Jan 2026 13:58:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6w-0000000GYrf-0mjr;
	Wed, 07 Jan 2026 13:58:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jan 2026 13:57:58 +0100
Message-ID: <20260107125800.3947255-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260107125800.3947255-1-a.fatoum@pengutronix.de>
References: <20260107125800.3947255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_045805_024638_075A25C8 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] fixup! commands: implement rksecure command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands: rksecure: fix bogus early exit

Due to missing braces, return ret was always executed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/rksecure.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/rksecure.c b/commands/rksecure.c
index e9b7e204c1bd..e0c20f75fcec 100644
--- a/commands/rksecure.c
+++ b/commands/rksecure.c
@@ -59,9 +59,10 @@ static int rksecure_print_info(void)
 	int ret;
 
 	ret = rk_secure_boot_get_info(&info);
-	if (ret)
+	if (ret) {
 		pr_err("Failed to read secure boot info\n");
 		return ret;
+	}
 
 	printf("Public Root Key hash: %*phN\n"
 	       "Secure boot: %s\n"
-- 
2.47.3



