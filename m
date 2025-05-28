Delivery-date: Wed, 28 May 2025 14:04:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWV-001B5c-08
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWP-00075O-JE
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=daOX+2dtNWeQGjYy3Ym8osLQsV/GbXT9sQDjljSVQjw=; b=qCGyKoeHze1+cmi3Fy2feNbxSr
	x/5isyHolDLaZ8RsRnLSCOuwPEllpqKwqMvg/7LMq7PSXxaeHzaUEZGM4MBHsXIpEuwQ1H8wPlRzq
	85OfVX9XGNzUBKMf8Z9Kc1T6Bc4Ih8HS2OojvUIZ0ueq/Yzx5UYCJgHN0tAGk3PYhAX6rZt2ryKHz
	hi0e8uHNCPY46RHwcnxN+Wp6L1RMxIHsKjovsUaZEvC+Hi0apax0WSC686U4RPISsDv7NMLSj1Z4h
	gJ78js3IH0mX6RIBFA0QN8yf+ed5xpszCQJlx17LehyHcIKJf4GDXfp8v/QAoKD8pUWw7W07Tl0eL
	GjY8T9Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVe-0000000D2xF-2UMT;
	Wed, 28 May 2025 12:03:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUD-0000000D2cF-0Qj7
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=daOX+2dtNWeQGjYy3Ym8osLQsV/GbXT9sQDjljSVQjw=; b=EU4po10AQ7w29XIRY1grEuy44z
	0B3WzK+rX5zbSyBuIMsPNPhFinZp0TVs4xn8LDyG2SKVA0agKvfe/7Y+mly/BMrnXQIn5H5Rsr+gv
	Sf+iQZSKbd1/iphg8WxRmi4/gX1WcYa0QFAY+xZ8j3o+ataYJzzw3UY64llNjogOmXYxWJYtngqbp
	/CStdLxQEW0+UwOVKhuvMWOmyXGKhbFTVYq169NpfmUpA7Nke07VBUA3vIj0jOze01k29pcLrFHo4
	5tnFmF47brFPO+SjaN/MmkdoHXW0hU3PguxqUhGWw9iYyrshjlRZdQHSSIDw36fzMXU8HLL78t5hL
	ROeh2LtQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUA-0000000DauD-17yZ
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-0004Vl-0o; Wed, 28 May 2025 14:01:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aF3-2g;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1s;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-25-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=732;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lHZZL/qY5UUuNq/t9KB6CxiKWswiKnSrmFbzA85VFx8=;
 b=78iCc3M2RezkVf3m2kmEipKrKdjWRbsvRnbW6okcCOfR8sCULdAumEVAVp7wsJAo+aWN2tsqN
 AM4vvuYN5GGCWpTsnQAR2acJPJ5hrM2Fn6XVn6nLDHLJTjQKnOPEO/y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130218_483332_E9B2A6A4 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 25/31] ARM: dts: am62l3-evm: add MMC aliases
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



