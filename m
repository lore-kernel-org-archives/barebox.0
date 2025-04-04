Delivery-date: Fri, 04 Apr 2025 17:55:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOe-008JDn-24
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 17:55:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOe-0006dU-3Y
	for lore@pengutronix.de; Fri, 04 Apr 2025 17:55:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7zjqBtjiKQ3qs2qQtNFgGDzfnZ2MTqkUKid/PQQwIVQ=; b=1bRLjCe55WFhchGEWSH4uuPcdH
	VUk2JWnIEFBi6vcgQCjc1pMTukflysu0cMx4UW/HP9OPHeLWFOE9ViK3cvN6z6EqRB1Mf5S5S1ib1
	c0vuOnCv9rWsFtcwvppAki7INgig8Nhu6zbPpOishrD2nYJGPNQ137PEKV+X/YbuXPlhq2jkdNrvH
	tVGg7UGgZU9aPp0+gs6OneJtr8OIXF3XjH/fA4ncasNZlYEJWyBlImohoN4HW1XvJSGyRAJcod1NI
	EiLu5a9nbOtQF9lcKYTTeGBT5xCXmK4QxtmoMwJyj+WQrlj0k6BxxwZY7g3UJC8TEcVKCsepnv6rb
	cYWQzr0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jOA-0000000CE0H-10Ly;
	Fri, 04 Apr 2025 15:55:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jO8-0000000CDz9-12NA
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 15:55:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-0006Ss-OK; Fri, 04 Apr 2025 17:55:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-003I8j-1q;
	Fri, 04 Apr 2025 17:55:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-00C0rF-1Y;
	Fri, 04 Apr 2025 17:55:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 17:55:20 +0200
Message-Id: <20250404155521.2863158-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
References: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_085524_299096_20FFF223 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] common: pe: fix crash when pe_load was not called
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pe_close is the counterpart to pe_open. pe->code is set to non-NULL
outside pe_open by pe_load, so we should check for NULL before
attempting to free the SDRAM region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/pe.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/pe.c b/common/pe.c
index 65d456a2c332..fd99761bddfd 100644
--- a/common/pe.c
+++ b/common/pe.c
@@ -373,7 +373,8 @@ int pe_load(struct pe_image *pe)
 
 void pe_close(struct pe_image *pe)
 {
-	release_sdram_region(pe->code);
+	if (pe->code)
+		release_sdram_region(pe->code);
 	free(pe->bin);
 	free(pe);
 }
-- 
2.39.5



