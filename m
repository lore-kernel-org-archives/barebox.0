Delivery-date: Fri, 16 Jan 2026 10:19:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfz4-001udE-2a
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 10:19:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfz3-0005jZ-RL
	for lore@pengutronix.de; Fri, 16 Jan 2026 10:19:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KFNDy2VkNp8PBzFBha0hLpNtZJwHXWzlAj4HDEwBebo=; b=3+HyDwJZ1ei3xUvMZV0ZVRFUhV
	KNP4I8NUPiKKtHkKK/Chin7LiuPrHT8JIOSMOFa6wSBb9NnPiQaaB7O48KOyF7GiIf7IRiOQYw7j+
	PBWUfKvrVjyvsVRZM9SdUQzY/ls0LA0opJtAe4mJQX4vnViC77Ms9WiI4KWbO/7t+1THHx/AXI8nA
	tYk2coavwHY87WYqPRrdQbjsNvavpbrqJJaZwPQ+2/vcSlGvJs10TWgoZdMriimEX6ytPdtDuDOXH
	au4xCbn6/WtGUwk43rAr+J30l3yPsJ3Kung3woN/Hqb2ATPDvVjz/L+0XAnxvv160Kouj8vcNYFN4
	sniyLEOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfyM-0000000DqU3-1osI;
	Fri, 16 Jan 2026 09:18:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfyC-0000000DqT1-3Moo
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 09:18:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfyA-0005bT-LG; Fri, 16 Jan 2026 10:18:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfyA-000tYc-28;
	Fri, 16 Jan 2026 10:18:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfy9-00000005kad-3jiQ;
	Fri, 16 Jan 2026 10:18:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Jan 2026 10:18:13 +0100
Message-ID: <20260116091813.1370724-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_011821_774034_8C1B26CD 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: Fix wrong EXPORT_SYMBOL()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- duplicate EXPORT_SYMBOL_GPL(gpio_request_one), one should be
  EXPORT_SYMBOL_GPL(gpiod_request_one) instead
- duplicate EXPORT_SYMBOL(ucs2_strncmp), one should be
  EXPORT_SYMBOL(ucs2_strcmp) instead

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 3 +--
 lib/ucs2_string.c      | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index e1493ffb66..582f3fe58f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -662,8 +662,7 @@ struct gpio_desc *gpiod_request_one(unsigned gpio,
 
 	return desc;
 }
-EXPORT_SYMBOL_GPL(gpio_request_one);
-
+EXPORT_SYMBOL_GPL(gpiod_request_one);
 
 /**
  * gpio_request_one - request a single GPIO with initial configuration
diff --git a/lib/ucs2_string.c b/lib/ucs2_string.c
index db3f34f6b7..6f027010d3 100644
--- a/lib/ucs2_string.c
+++ b/lib/ucs2_string.c
@@ -113,7 +113,7 @@ ucs2_strcmp(const ucs2_char_t *a, const ucs2_char_t *b)
 {
 	return ucs2_strncmp(a, b, ~0UL);
 }
-EXPORT_SYMBOL(ucs2_strncmp);
+EXPORT_SYMBOL(ucs2_strcmp);
 
 unsigned long
 ucs2_utf8size(const ucs2_char_t *src)
-- 
2.47.3



