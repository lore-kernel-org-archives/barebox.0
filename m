Delivery-date: Wed, 21 Feb 2024 16:04:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8k-00HNmg-0b
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8j-000574-Jx
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2RwFuTFM6MeDLXfq9fbtFIbICD6WEswSnc7HtgRJZd4=; b=DGInjbt8obHG3bNrSAwY/ZIwRC
	eDDVYvlF8SeW/N8i9svv2r7A3ICV6+J6pG1geyEt90TPudeKxbz8wAqBDcb0cLvM1W3AWfZJMK4P2
	2i/qi32TNDIQunmLsvsOSHJTvM1/1jXEsx9Sr2HQcnRN2s4eeCC09fWYLE8F9aWs3ZVsrYGM2KDZD
	pTHtMdI2paOmjr2rO9xohS40/oCedHWkjV7HIDZugTU6Ai6L3ObESU+URZHpVQpUQOr6/e1Tbz356
	V2uGrWVMi0+2yiNSlYd4bN7LLArTUtdXuXbN0aqUn0VGkJ8mPCoUsDkgTGaIGNvVarTpatbhWU5c/
	BA9wacAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8I-00000001OT8-1x2l;
	Wed, 21 Feb 2024 15:03:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8D-00000001OQl-3PO0
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004gV-Kp; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023iy-7a; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-0Q;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:17 +0100
Message-Id: <20240221150323.2715164-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070333_896720_235E83F0 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/8] board: tq: fix format specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The correct format specifier for a size_t type is %zu. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boards/tq/tq_eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boards/tq/tq_eeprom.c b/common/boards/tq/tq_eeprom.c
index 220d75ecab..06f11a8a94 100644
--- a/common/boards/tq/tq_eeprom.c
+++ b/common/boards/tq/tq_eeprom.c
@@ -75,7 +75,7 @@ void tq_vard_show(const struct tq_vard *vard)
 	       (tq_vard_has_eeprom(vard) ? 'y' : 'n'));
 
 	if (tq_vard_has_eeprom(vard))
-		printf("EEPROM\ttype %u, %lu KiB, page %lu\n",
+		printf("EEPROM\ttype %u, %lu KiB, page %zu\n",
 		       (unsigned int)(vard->eepromtype & VARD_EETYPE_MASK_MFR) >> 4,
 		       (unsigned long)(tq_vard_eepromsize(vard) / (SZ_1K)),
 		       tq_vard_eeprom_pgsize(vard));
-- 
2.39.2



