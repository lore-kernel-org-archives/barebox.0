Delivery-date: Fri, 13 Dec 2024 22:01:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmn-007jKw-0Y
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmn-0000rH-4o
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FTwk3corLQuAcR+hmdVI7IaXmFR3nw1xuRHxk+Hj5Ok=; b=gb/weci/0s/owY7vz7EZNid/dz
	2BYNxo/bBmF4GieINZlA4Mq9pPqcwigFGKCuCAEaPxWmh7rcKgELUTBTvArczJLgdHld+H4EBuVEF
	ZogFEsNPdyYg5xUxB/8CKHlCDliVHcDghrMjxnVUN3oNttLux/6+2GqvanH4VmMNvHMuIt6tfDIbv
	K+DJHqA+bGsd5vmkW7/BjLS1W81pZOh0qykxQfcaKouWPHruQJpPHCB2QTiaR2WaaQtsxS8E1h7yh
	ZsB9snIzOHRg3PZb9uQgqAAXdWKZxEVm5Lf4JdqQMiHQH+ZG1a8/ERvH/fnrApK5b6GL8Uq+tJ6F8
	ppoDEi1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmO-000000051aU-0Pz4;
	Fri, 13 Dec 2024 21:00:56 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmL-000000051YF-0Cxx
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:00:54 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 3E731E74088; Fri, 13 Dec 2024 22:00:22 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id E9796E7407E
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:10 +0100
Message-ID: <20241213210015.357249-4-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130053_232698_772F965D 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] ARM: zynq: zed: add environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for a persistent environment on the first
FAT partition on the SD card, next to the barebox binary.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/zynq-zed.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
index 25b4d6df2937..2a166189d683 100644
--- a/arch/arm/dts/zynq-zed.dts
+++ b/arch/arm/dts/zynq-zed.dts
@@ -4,6 +4,12 @@
 / {
 	chosen {
 		stdout-path = &uart1;
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdhci0, "partname:0";
+			file-path = "barebox.env";
+		};
 	};
 };
 
-- 
2.47.1



