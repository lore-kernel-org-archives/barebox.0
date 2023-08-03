Delivery-date: Thu, 03 Aug 2023 12:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvm-004wQq-Pg
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvk-0001xk-7h
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uvjkCCGS40gf3jXDu9751vug9qUxhmJPTGLeUwnT5Hw=; b=DmJJ4F2D4iSOl3Dfwca9nUQGE9
	QtlcVbeK0I3Dqbpa+b8aM262ybeBP3tiGjmIq3Iysqj3wHlea1dkrp3SzLf/Hr21HZXbVP90V/7FQ
	tjUCMBbRgOfQ8Gp9nyzMrv2QrroouzF6cuw5sx4FsiR0B94F8PRSU3iH4EHdP64BSTxjxACMF8eK2
	feArUvOf3zbOm8DNjV1xiY0RpIaxS0erYSWbIl0nPG3ib03EhoCJEJLDTfv4QU8e7k5XxgEBZVUv0
	mPoGXJQWmV43h/PB1AqmOnBe4R/gakitNFReEeXgHWhJT7EgxPS83uK55SbE1zLD9rfOyLm+IOYbw
	lAJuscBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVub-007UsC-2T;
	Thu, 03 Aug 2023 10:50:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UY0-0v
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000va-1h; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovR-9R; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzX-MN; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:53 +0200
Message-Id: <20230803105003.4088205-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_327838_D03538D9 
X-CRM114-Status: GOOD (  11.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/22] mci: fix define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MMC_CAP_*_DDR defines do not exist, should be MMC_CAP_MMC_*_DDR.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mci.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index 3e93f378e4..4c197fad6c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -54,8 +54,8 @@
 #define MMC_CAP_MMC_3_3V_DDR		(1 << 7)	/* Host supports eMMC DDR 3.3V */
 #define MMC_CAP_MMC_1_8V_DDR		(1 << 8)	/* Host supports eMMC DDR 1.8V */
 #define MMC_CAP_MMC_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
-#define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
-					 MMC_CAP_1_2V_DDR)
+#define MMC_CAP_DDR			(MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR | \
+					 MMC_CAP_MMC_1_2V_DDR)
 /* Mask of all caps for bus width */
 #define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
 
-- 
2.39.2



