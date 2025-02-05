Delivery-date: Wed, 05 Feb 2025 10:49:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1m-008kYM-1Y
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1m-0004i7-Jj
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YXw5VNTURssX+BQPn7rNuHxnbL8qaYFnqp2BTQcSf3g=; b=X3c8TEn8925aBmeNhlxbaML+GN
	5WNuZZNZvD4ek6xEw8xqwIhLWG4D8FWK45VcCdiklrHaG5sw44JbdhxkLIKwx5SikqjmE/wGOwU7Q
	euuQoJDa8blw10ehXW1W/4env3qvoylUQcnwnMzrUZiOBSvngUNjQU021nxjBnQyKqmNFXa7Ym2Km
	Z4iY6uC4JKxq8DeqQvSkXYWh+0C+UMhvmrz574dgo0HZIH9BRvOhjvup+il8ol1GVGZgK8lnBCVkZ
	7oC/eI7BhMfe2W1lZcjptFgmWxEcffz+YmBmihkytQEj4KPKrgh1jzomG+l8E6KLrqB0FKNR5w06V
	2XtiwFhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1E-00000002kNC-0oJa;
	Wed, 05 Feb 2025 09:48:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc19-00000002kHu-050H
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048N-QW; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2j-1I;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0z;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-8-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1460;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Zk1dbaNVu9VWD+5rBWIDAt6G1K8Io4UhU5Z4QDAq0Ho=;
 b=vPgZCtFVOw7Cfja99PzfqJHhOWLKakyH2Pbr2QNitRL2I5uVzHDKS8XLPcLGmfOzpYsL/UtZt
 lPmAASwB3bDDP8+BBivA+/AWUI4hK34b/mPMqzqBYIRGkpOkgcCeQUV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014823_059913_9121CEBB 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: am625-sk: put environment on eMMC when booting
 from it
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



