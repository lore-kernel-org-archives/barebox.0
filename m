Delivery-date: Wed, 12 Feb 2025 15:33:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoG-001Sl2-0w
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoD-0006Ki-Vp
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YXw5VNTURssX+BQPn7rNuHxnbL8qaYFnqp2BTQcSf3g=; b=BuBZ2Q4OJ11P9o/VXjeiJWDgv/
	1UW1ePHpOrB+nSKGMGHa4EjoLm8B5xJHEl8AaSIhGb6OKKmVcTCzGt1H7sDfYSPbjaUiLK4mTo6hN
	KohlLLQ1s32qRv2MdrFRsO+QOXLG4A7ktzqZegmbMbYqwH8IiH9W8ta0fW+nHQSeCbd4kspW4urlu
	xpsFGmP9WOaAPeEVUGJJu0+3VPhn2gQSF3EK13gbn0DlC8wDKfRNqRCzdStwfGFHXUNoW/WCNhDc2
	J5U1OLSkXgLrMX5X+pX+HYdQse7ePm+zVLwqeNNCrgRgUl2DTGlNbA1WRW50zC+MKhu9hHq8CfyBM
	vukgiJAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDno-00000007gMU-19Ks;
	Wed, 12 Feb 2025 14:33:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gAy-2YCq
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005qZ-G9; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bH3-0y;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-20;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-15-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=1460;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Zk1dbaNVu9VWD+5rBWIDAt6G1K8Io4UhU5Z4QDAq0Ho=;
 b=eCL9pCoFmjSauNXsLBlcI/G/HrC7gYgSc26nKRyo+9SuTZVUETKlkX7qujHq3clXSkZ4huPMz
 dzdX7z9/WKNDg4uA7EOZPB9kTwm4V30Vbf9VTZ4WpEVJ0sR32AF48Vx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_653582_A0A23C3E 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/20] ARM: am625-sk: put environment on eMMC when
 booting from it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When booting from eMMC put the environment on the eMMC as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/board.c |  5 +++++
 arch/arm/dts/k3-am625-sk.dts     | 15 +++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/boards/am625-sk/board.c b/arch/arm/boards/am625-sk/board.c
index fd3bcdeac6..c716f30e69 100644
--- a/arch/arm/boards/am625-sk/board.c
+++ b/arch/arm/boards/am625-sk/board.c
@@ -11,6 +11,11 @@ static int am625_sk_probe(struct device *dev)
 {
 	am625_enable_32k_crystal();
 
+	k3_bbu_emmc_register("emmc", "/dev/mmc0", BBU_HANDLER_FLAG_DEFAULT);
+
+	if (k3_boot_is_emmc())
+		of_device_enable_path("/chosen/environment-emmc");
+
 	return 0;
 }
 
diff --git a/arch/arm/dts/k3-am625-sk.dts b/arch/arm/dts/k3-am625-sk.dts
index 56d5681519..8d7a73babf 100644
--- a/arch/arm/dts/k3-am625-sk.dts
+++ b/arch/arm/dts/k3-am625-sk.dts
@@ -3,6 +3,16 @@
 #include <arm64/ti/k3-am625-sk.dts>
 #include "k3-am625.dtsi"
 
+/ {
+	chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &env_emmc;
+			status = "disabled";
+		};
+	};
+};
+
 /*
  * DRAM size differs between board variants. Real size is read from DDRSS
  */
@@ -10,4 +20,9 @@
 
 &sdhci0 {
 	max-frequency = <26000000>;
+
+	env_emmc: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0x0 0xe0000 0x0 0x20000>;
+	};
 };

-- 
2.39.5



