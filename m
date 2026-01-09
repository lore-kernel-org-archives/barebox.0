Delivery-date: Fri, 09 Jan 2026 14:29:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veCYl-0030EZ-2Q
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 14:29:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veCYl-0008Bx-7C
	for lore@pengutronix.de; Fri, 09 Jan 2026 14:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G070d3W0SXGnwcxeHkI6gAXQwmqZWfr0FbVL6yyPbrM=; b=YGYHma9IL5dIvoHpG3O6CBAseb
	sBARh1iB/hRPlUNWD33i8TWkQ9qZ2iPSlQSBI0ElI1QBJnHN9DVmF6PD+wRux7+7Jb4IqTSUYUQ5G
	7Rl5UigaeEtjVEx8YnAi6ZMb1Fl0er8DAsRXq99S/w1Iwa5zcilCQ9Bkc8pbHEPrJbSTRLjE1q+YW
	L6mWLMBSdJERdA732zr1F8tA5KTo3hWAe3E3mb80CRd6ByXtmHwujm6JIcPXFwdLpzmKLY0KyhJow
	73I70BWh5tw2fR+Fm6Oxd19FwBQwTSxfQ5PfRDONar+fC4h5nBTTGmUY18OvHwEQJDRLmgYDHZNqm
	IWwR1gGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCYJ-00000002M0h-2CAq;
	Fri, 09 Jan 2026 13:29:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCYH-00000002M02-1Rnt
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 13:29:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCYF-00084B-TA; Fri, 09 Jan 2026 14:29:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCYF-009qwK-2G;
	Fri, 09 Jan 2026 14:29:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCYF-00000003E5V-2VAc;
	Fri, 09 Jan 2026 14:29:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  9 Jan 2026 14:29:10 +0100
Message-ID: <20260109132910.769130-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_052917_386829_57ECC79A 
X-CRM114-Status: GOOD (  11.73  )
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
Subject: [PATCH] ARM: k3: am62l: Detect DRAM from controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

am62x_register_dram() works for the am62l as well, so use it to detect
the amount of DRAM. With this we can remove the memory node from am62l3-evm.dts
as it will be automatically populated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l3-evm.dts | 6 ------
 arch/arm/mach-k3/am62lx.c      | 1 +
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 6751c71c3b..3a61d38c7b 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -58,12 +58,6 @@ led-0 {
 		};
 	};
 
-	memory@80000000 {
-		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
-		device_type = "memory";
-		bootph-all;
-	};
-
 	vcc_1v8: regulator-3 {
 		/* output of TPS6282518DMQ */
 		compatible = "regulator-fixed";
diff --git a/arch/arm/mach-k3/am62lx.c b/arch/arm/mach-k3/am62lx.c
index 88a008d628..c4d27072f2 100644
--- a/arch/arm/mach-k3/am62lx.c
+++ b/arch/arm/mach-k3/am62lx.c
@@ -158,6 +158,7 @@ static int am62lx_init(void)
 	if (!of_machine_is_compatible("ti,am62l3"))
 		return 0;
 
+	am62x_register_dram();
 	am62lx_get_bootsource(&src, &instance);
 	bootsource_set(src, instance);
 
-- 
2.47.3



