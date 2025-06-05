Delivery-date: Thu, 05 Jun 2025 15:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARY-0041fW-02
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARX-00030t-ER
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=daOX+2dtNWeQGjYy3Ym8osLQsV/GbXT9sQDjljSVQjw=; b=0/bjq0BYDFs6TrJ+U00IVVob49
	2TrukjATAAVMPJQu6akBL7Sr4h61tdpaVrfHVjanQ5YotgecFS/h09WNrXMQqLSJQc5ux1pAsrnRS
	Ww+WMO5TgEmwJApMVxW/JWrpuP9ecIVNZXDOSpxOIMs4aTJXolKD+fKv+/6rqRj/g1bzn2BKzcALX
	aTG+3RNwxE7D8CHonKY+YJ3C+9fmWtfQxhHOxBHmvDPtiJeoulBYmcsvCb8BCs9epMtIhu1U8izNH
	kW11Jlzb3jX6YKzBRISsuslR1yJYnz4oguPwNahBqJqpHQvAR+Bl6wMuvZuiTs82oaV9aeyRVkDV/
	Ke7liu7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAR9-0000000FaN3-1LTg;
	Thu, 05 Jun 2025 13:15:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFM-0000000FXwm-1qzF
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=daOX+2dtNWeQGjYy3Ym8osLQsV/GbXT9sQDjljSVQjw=; b=Ni7aJ7YTrWpRECFdZtGeJlUTWH
	0M3i3AkyTHEX0Dds4mK19UunBhplX1l9rqqMwUFQm1zOSR2sKz+bCywAjgUSiRTtvjRmHwwJWou7C
	nPIU/lc4GPeQQE45UkwS41fsxiKdhQ39T1XIwzvggUCHZpVnPDFvVAl6SSb628Ki6Y2XbkLRqsVCh
	VO5xxrNFOnpv+YSnJ8+IkuZx9qPU8Ye0o4J3nSSY0nGVEtSRciI6vwMgQY6lSinSrhariWrPQDQVZ
	0P5+tM4I3e4YNu3C1D0PaIrZK421zwmwt0uLXEPQMzlzGVn9thQjhgxB9VhNSsjTZCvhIDsqQTjPv
	zSFoL64A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJu-1stj
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00013x-GY; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xk3-11;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1q;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-26-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=732;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lHZZL/qY5UUuNq/t9KB6CxiKWswiKnSrmFbzA85VFx8=;
 b=3UDkJSU5dZ2xHI7RltMK8draUdFKxd2OLZlK36rjLHv28U9jbOIuoNNjZDjvAtLsNH44qcBiH
 eXOdx0wWX5VDTFEVbFmRFFp2Xx0VoqTwsvj8Ld6wSx5Q/DFEebyLx5D
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_583983_5E2C39FF 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 26/33] ARM: dts: am62l3-evm: add MMC aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the MMC aliases to get device names in barebox that match the
bootsource detection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l3-evm.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 7b528ae1e41e92bc9aa1428e86d5141d30fe7cd7..bb1e3a891c3847cb6cbb458810a8decca779c845 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -22,6 +22,11 @@ / {
 	compatible = "ti,am62l3-evm", "ti,am62l3";
 	model = "Texas Instruments AM62L3 Evaluation Module";
 
+	aliases {
+		mmc0 = &sdhci0;
+		mmc1 = &sdhci1;
+	};
+
 	chosen {
 		stdout-path = &uart0;
 	};

-- 
2.39.5



