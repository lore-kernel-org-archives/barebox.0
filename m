Delivery-date: Tue, 12 Sep 2023 11:59:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg0BI-00CVtY-6U
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:59:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg0BF-0002KB-VV
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:59:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=czOKdVlWt80fDvO4dq1REsqllS0WCml9kUYBgqtWvVg=; b=WcSq9Xcvo2wmVbvJ9MTuyua8NS
	5XCMfUsLJn2jfjndhogbCJiUoP+E6IrRGlsAZGaXpA43eKirdkbUjmy4fFom9DIFlRrOW82AjIEuQ
	LkPQPCFrAFxG4+SUSM5cRbWqqJoRjfhIw/hrTcIA2Pz79WqMYKSjR2RKLHzVVW8fSIf4/+WQgVJjR
	K3l4e+cU4uw5OdA4oKduNqgGwnG43KhanU+3lIehaYu6NIzKDhF/AK7AhafqOGXjhFby2J3XlUN+g
	lptX3x2GzYDaybzKFYZM+dr3fLheLU1S7uZTOYrk9uIWyTfL8zakDrE3ozwcQeingEz/8LCS8mt80
	ZYRFyndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg09x-002owd-37;
	Tue, 12 Sep 2023 09:58:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg09u-002owB-2k
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:58:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qg09s-00029o-2i; Tue, 12 Sep 2023 11:58:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qg09r-005kR8-Mn; Tue, 12 Sep 2023 11:58:11 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qg09r-001Cjy-0R;
	Tue, 12 Sep 2023 11:58:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Sep 2023 11:58:09 +0200
Message-Id: <20230912095809.287289-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_025814_910574_C6F47426 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH] MIPS: bootm: fix format string type mismatch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we always have sizeof (struct device_node *) == sizeof(ulong),
clangd warns about mixing them as arguments to functions with printf-style
format strings. Add a cast to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 19d82ec37530..a5bfc6c88c17 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -62,7 +62,7 @@ static int do_bootm_elf(struct image_data *data)
 	}
 
 	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
-		data->os_address, data->of_root_node);
+		data->os_address, (ulong)data->of_root_node);
 
 	if (data->dryrun)
 		goto bootm_free_fdt;
-- 
2.39.2



