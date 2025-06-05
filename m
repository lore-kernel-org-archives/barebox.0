Delivery-date: Thu, 05 Jun 2025 15:13:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPb-0041Ly-0d
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPV-0000w6-Ha
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nx25Lgfd8stlrOCsrwCacS2KJ51MDrAKlSeQs6WM19g=; b=yxFLSIfEPvoduxhrayCcjHWXQr
	9FsJOkghKw6PpjYqbirXY4Fq4cKCVCrqlFMZZRDrqTRcdo1kaS66DgVgW1sUc1Ajh4F656dZjueep
	RgWhYrf12l79ubeA5emzKwsfwE9naE8iYbzkEWvbTfhUGWimbdQRdBmaq1lGelihxCZipqJjYKhvK
	q3fJfY1y6s+j3lNmkYOObCXC0GD34zG3zftpUer3aOJ2Uru8xlVSzDoUMiVs0R+3K3+DDaIfMZnM5
	3DC/+RYQ3fNGt4AhD20rfbxO3lrZLRjtioHD84JAtBNDZMa7IAimWJfWJ7GXs3hl/ambCdFi80nPT
	qHg04zzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOs-0000000FZBX-3WZ3;
	Thu, 05 Jun 2025 13:12:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFE-0000000FXq6-0GBg
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-00010S-Uu; Thu, 05 Jun 2025 15:02:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-001xj6-2U;
	Thu, 05 Jun 2025 15:02:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1s;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-28-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=850;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FIOMw02/ikgNm1fAj8kSIcGsU0Ln0HcKur9RKQV5q18=;
 b=7tLkhVyZTMO3tkc+nVKAIHSDCzU6BeqxU+t7ARLm7gcnzrgWLcKVfoJ+Dyy+NOOKA5lLjllaw
 sBQvELZovaZAkd1ysJvWzfTKO8aQfiorsGsVwLB/qIZsxpsAUM/E9dw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_120898_A2DB442C 
X-CRM114-Status: GOOD (  11.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 28/33] gpio: increase ARCH_NR_GPIOS to 512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TI AM62l EVM board has 259 GPIOs which is more than the current
maximum of 256. We could increase it locally for the K3 arch, but others
are likely to follow, so increase it globally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gpio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/gpio.h b/include/gpio.h
index beda10efde0815aa89a8b064b4c9d515c16ae97d..92fd27b2b996eed8777e9321b4f34e245ceca480 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -84,7 +84,7 @@ static inline struct gpio_chip *of_gpio_get_chip_by_alias(const char *alias)
 #if defined(CONFIG_ARCH_NR_GPIO) && CONFIG_ARCH_NR_GPIO > 0
 #define ARCH_NR_GPIOS CONFIG_ARCH_NR_GPIO
 #else
-#define ARCH_NR_GPIOS 256
+#define ARCH_NR_GPIOS 512
 #endif
 
 static inline int gpio_is_valid(int gpio)

-- 
2.39.5



