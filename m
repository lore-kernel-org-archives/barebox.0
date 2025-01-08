Delivery-date: Wed, 08 Jan 2025 16:24:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvJ-000n5Z-0T
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:24:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvI-0004Gc-W1
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:24:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mbwri70qWc3zmFnDx92dwMyaRcGbqN/I6xTGPib5d8w=; b=wXuQaQViXKfy57NQBetcvYG9SH
	A50JSxShazbOag0sjCOhVmX+pXoIQEhSP2MpMPBf/F1y0g1pBTy5mP9p0bTDhrcwdxj1XNkdD0HMN
	k1cv2TccfVUdPhy6vJGDGBroO6zO2HBApa57r4t/APEZeZIDUEIdbblv6/148xYUkbI3X5qi/8UcX
	uEB765qB+cGFVw4K7Jy2hkXTkBU3wmvHOTKQr2jdcIfXJNNnu9KnXFWRuCEoCRM4BO8Rexh+qp3nK
	q+QqLs6baN+KF1/HZgn97kIjgrX0bJeNClVPOtu41cFw2Qvcl3wyRC7ncGkc5wXSp5fcPjQRLOHyg
	FYJe2C/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXuu-00000008x5D-40dP;
	Wed, 08 Jan 2025 15:24:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXus-00000008x4C-08bA
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:24:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-0003vw-SR; Wed, 08 Jan 2025 16:24:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXuh-007Xmw-2x;
	Wed, 08 Jan 2025 16:24:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-001Mmj-1y;
	Wed, 08 Jan 2025 16:24:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 08 Jan 2025 16:24:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-k3-i2c-v1-1-cf088462217b@pengutronix.de>
References: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
In-Reply-To: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736349848; l=1131;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MVIpLgvWIUxl2PhdxwXaezJvhnTnfysgae06z9H/9kM=;
 b=nJevtA9m8l4c7OS0tSJa3QaPkhVQ+yeIE7zX1q/mYW2Wpa5wMqnZn0HYh2DxvGiSWQa6NtN4Q
 sjxy2CkWOwjC4JFDV5uzjY47CFg6FSS76aqhu/q6uteYTKJ8Os9Z6Hm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_072418_084005_B0D17706 
X-CRM114-Status: GOOD (  13.20  )
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
Subject: [PATCH 1/3] i2c: omap: add ti,am64-i2c compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver can be used as-is on TI AM625 and similar SoCs. Add the
compatible entry for these SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/Kconfig    | 2 +-
 drivers/i2c/busses/i2c-omap.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 093b12b2ef..b7ad9e6ecf 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -53,7 +53,7 @@ config I2C_MV64XXX
 
 config I2C_OMAP
 	bool "OMAP I2C Master driver"
-	depends on ARCH_OMAP
+	depends on ARCH_OMAP || ARCH_K3
 
 config I2C_TEGRA
 	bool "Tegra I2C master driver"
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 023c9673ba..0ee4c70de5 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1215,6 +1215,9 @@ static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
 		.data = &omap3_data,
 	}, {
 		.compatible = "ti,omap4-i2c",
+	},  {
+		.compatible = "ti,am64-i2c",
+		.data = &omap4_data,
 	}, {
 		/* sentinel */
 	}

-- 
2.39.5



