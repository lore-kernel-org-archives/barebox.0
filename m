Delivery-date: Fri, 14 Feb 2025 11:49:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGT-002EhT-00
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGR-00050g-MM
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t+sowac2nn09a/BBiiE/hix75gdv/ZSYhjwpHnIV6YA=; b=ocnrGjOz+wbWEPErPUKPCaYZ1z
	vKKmd57Jbcle2JXGnh91ZVbCCTgSbY4GVxZMXvaIPNlpkzQL4M4UEHLiGjpOYXrfRBTt9qlts/tPU
	F6075OWAdqPxN6mWp7cu8rpv/IQJCPr9hhVqmx1FIZDgvwZw91xJi90rninZH4R0pPHV6+ZqWm73v
	5H8kgA+Fgvem0d24O44ZnTmCAAzra+IR/0y56jR7CNDQ+t5znF9YFXaXv1QkNJzzeFWaFcsyQm4fA
	ShCzy8kwov6F1JOGtt2KGgaXZS805S/9y1HzBTQ2Yvj4FGX7+m3uQkCqhkAkF+J2ruf2wSXmdrjhn
	aTjswInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titG0-0000000EYL2-1tq2;
	Fri, 14 Feb 2025 10:49:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYER-17fy
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF7-0004Um-03; Fri, 14 Feb 2025 11:48:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3c-2S;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-2B;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:14 +0100
Message-Id: <20250214104817.2975052-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_333615_61351AE8 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] fastboot: drop useless bootm.image clobber
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Clobbering bootm.image before a fastboot boot is not useful, because no
code would look at bootm.image anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index acc91490a553..60bef0ec776b 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -419,8 +419,6 @@ static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Booting kernel..\n");
 
-	globalvar_set("bootm.image", "");
-
 	data.os_file = fb->tempname;
 
 	ret = bootm_boot(&data);
-- 
2.39.5



