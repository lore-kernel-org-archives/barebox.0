Delivery-date: Tue, 13 Feb 2024 14:48:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZt9A-004sJc-0D
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 14:48:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZt99-0005EH-DC
	for lore@pengutronix.de; Tue, 13 Feb 2024 14:48:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yw4hiap++wVgZQThHxEQ3+slh7rkf7XOKClFfwwNPRU=; b=ufpDdnHm+xeGRDUmBF/JJ1rSA8
	UxCbwd98aWH1xPvkPJAEKgV2NYOqV1gUP1qR455RKMJWWcavDsl/JHaON+RG8DYf0pHoyZYmgaCud
	d3/K4fhvfTaNAvKXyZjk08NKwlZ5OuSd3aIdMcMkJUwkXQkYlZb041fPwVsOqjv2qM8skY3x62X+D
	KzT/geWHIcUjH7mE73NQy128cmev+htcRWwVyeBe+nNa+TQ/qySbYlDZ1H9fPha1VkqMjva0xR/TZ
	oRqjOv/CsJoeS3ZhmQd/2/UxmuhvGfF5iXLX2HobxuBSxNvCOOlvc44uIBXQ1SLwPpLdsAZnaOWm1
	VTITmgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZt8U-00000009OJD-43q8;
	Tue, 13 Feb 2024 13:47:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZt8R-00000009OH7-2ZgZ
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 13:47:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZt8O-0005AS-6m; Tue, 13 Feb 2024 14:47:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZt8N-000Uw2-QW; Tue, 13 Feb 2024 14:47:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZt8N-00Cya2-2H;
	Tue, 13 Feb 2024 14:47:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 14:47:38 +0100
Message-Id: <20240213134738.3092799-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_054743_669528_4BD1AD02 
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: add TQ EEPROM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

&eeprom.vard is not yet initialized, use &raw.tq_hw_data instead which
we have just read from the EEPROM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boards/tq/tq_eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boards/tq/tq_eeprom.c b/common/boards/tq/tq_eeprom.c
index edc57b01f5..220d75ecab 100644
--- a/common/boards/tq/tq_eeprom.c
+++ b/common/boards/tq/tq_eeprom.c
@@ -128,7 +128,7 @@ struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr)
 	if (ret)
 		return NULL;
 
-	if (tq_vard_valid(&eeprom.vard))
+	if (tq_vard_valid(&raw.tq_hw_data.vard))
 		eeprom.vard = raw.tq_hw_data.vard;
 
 	memcpy(eeprom.mac, raw.mac, TQ_EE_MAC_BYTES);
-- 
2.39.2



