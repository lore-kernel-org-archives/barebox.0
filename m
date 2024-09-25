Delivery-date: Wed, 25 Sep 2024 16:10:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSio-002cTC-0w
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:10:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSio-0004cZ-P2
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:10:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UDCeUS8Ak06RhW5sXSCsQ2gGfoE9KX6Ye4yn4pBWAgs=; b=MR4xNMBLjTDqyQLPnA1vVw1gWW
	XRyJLFh/ywB4tCszL49rONwNTMYNop33wc3J1by9CueOqJZglI5VEGDBZxKlBBP1gT80qyVNo3E0+
	e/trE4pQlx0GkIZa4ijZ6xzzdeGtdPwfcyY/YKhmmkMxtZ1G3GFcn2FJbwLI2h42BzOHTyeZtzmh3
	di1tPuQ5Fy3dltfOBg3qMWrMfHFdVA3L3nbEtOcdRJgcQr0vvxiEEjXMVr/459M9s+OCd0V97iDv2
	ndXn6fDejiMkE/DcNuBDs8MzK95K8fJNYiuDkJFG4xSbyXGUwYANnuagpzeVbrTztGoq/STYhk5Qa
	kd5emLtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSiP-00000005Xyu-1sa3;
	Wed, 25 Sep 2024 14:10:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSfE-00000005XD8-0KsE
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:06:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-0003zZ-Tm; Wed, 25 Sep 2024 16:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-001Ssf-Fu; Wed, 25 Sep 2024 16:06:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-00DDhp-2r;
	Wed, 25 Sep 2024 16:06:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:06:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-spi-gpio-v1-1-47f6285b3bf1@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727273194; l=757;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wLjqKS+KEQIe9/lDHlcQ1Vt5NJOvq3XQfWM80ZrE3yc=;
 b=83KIFY6vXfM6Zeus1HtCA2NcPRXWzf6YwDV8eno6ZfUH7kjRHxxlM3pF0HiIB2OXxtuiSKe9M
 pKBO3TYnAs/BYB6ukvy8MifP4fI4XcayDUELXCfSbzhWwNjKd7tIWYM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070644_152724_57C1A592 
X-CRM114-Status: GOOD (  10.10  )
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
Subject: [PATCH 1/3] spi: spi-gpio: actually delay in spidelay()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

spidelay() currently only is a no-op dummy function. Actually delay in
this function to avoid spi-gpio being faster than specified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/gpio_spi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index e5664df3fe..a71b4eddab 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -48,7 +48,10 @@ static inline int getmiso(const struct spi_device *spi)
 	return !!gpio_get_value(priv->data->miso);
 }
 
-#define spidelay(nsecs) do { } while (0)
+static inline void spidelay(unsigned int nsecs)
+{
+	udelay(max(1U, nsecs / 1000));
+}
 
 #include "spi-bitbang-txrx.h"
 

-- 
2.39.5



