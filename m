Delivery-date: Wed, 28 May 2025 14:04:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWU-001B59-1n
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWP-00074d-28
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/PBgDOszDV4D4LD1sE9aEldZK1ASYO254/IVHCWjD8=; b=b7lSL04vGnXu36DafBq1yj/nDD
	xxiJhsQ9UfI6++DYkHosMCVT89GXHU0YtuIf+6AyR5FmAmVYRjFUySU8QucWHQJ6lTO2y5S+zEmbh
	DvVdLVsEt0Ckzuj7juIC0x1E5LcioJ4e0TBMHGr0U7QwT82NHjFXcgObt47XCfRjJuxaCAwCNDDHQ
	8eKEYG+qy9RKH25B4h/uDDjQE0kcQPMS6mtNGY3RDWQfidp8xNX50RkN5/VjNtZYgT3RiMsFcL9vs
	U2j1GjvwFqAqTKSditysts3zzBsmI1PK2t6ilaQOrDWN1SOZX4zmpBKVhfBzWxVssg9sQHDm80AxR
	0v1HRr+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVg-0000000D2zf-06RH;
	Wed, 28 May 2025 12:03:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUE-0000000D2cU-3wF4
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=r/PBgDOszDV4D4LD1sE9aEldZK1ASYO254/IVHCWjD8=; b=PeXOvAGnGcEVQL1zfPX5xV9lRV
	BPBYQox4dud5BcKu74TVnSD0V5cIdrhqec4hK6I9+iAoCbgTiAcjuDvHw1Z+mX/WBXE3XuhFZb+b1
	zCVi0S5IYOhDzEp2pWxvS+k2cstLDmVHhvzqUrGKy+OFCSYyRAStGZzuzeEb98OxsBaxvjGzB5LvJ
	PB4XWW29ADeKarSFWQpjvsraqYmVS1u8xVnw1FDgISHIVmEhEE/d7YZkvlJmY75e5ZwejIf0dueaD
	vNKTtfRyui8C9UhH/oKu0+thSqtRxB4ZHAZrRL6EX/NR8EQONF5oK2rPr1ZncGnCeJM3dOveObFX+
	SjGeQdXQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUA-0000000DauB-183K
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004VW-U7; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aEI-2O;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1v;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-28-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=801;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IuScZodQSSvQCAOMmZ1+rVCFrNAQvfn/kOypJJBoplQ=;
 b=lx8D+aG/KasN/y8PhNIZRCPTxzwkyOfJuekTlw7qPNFhKTr/I77H7BEmGshackOfoz8e+rRLl
 PQH+il+AhH+BUEG//dN9L2CD8NLoND+u/KfKymb0e59KFnE1B2YwbP9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130218_531886_9DD90BB4 
X-CRM114-Status: UNSURE (   7.90  )
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
Subject: [PATCH 28/31] ARM: dts: k3-am62l: reserve memory for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On the AM62l the TF-A is placed at the start of the DRAM. Reserve space
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 9fe44a67ee7374e6c6d9052dc8ea0f31d2e8f4a1..93f2dbb8c86cd4f8321bfa544b4888b66a2d4309 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -14,3 +14,17 @@ &gpio2 {
 &wkup_gpio0 {
 	status = "okay";
 };
+
+/ {
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		tfa@80000000 {
+			reg = <0x0 0x80000000 0x0 0x80000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+};

-- 
2.39.5



