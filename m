Delivery-date: Thu, 07 Nov 2024 15:06:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939M-005wkq-2d
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 15:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939M-0006YA-Mn
	for lore@pengutronix.de; Thu, 07 Nov 2024 15:06:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9leUkQJV17yenHnJpQcCEBaSoj38nIQ+tuA8NAyOpag=; b=hilNC9Si27Lh/RYUK0u64TIMX3
	m1L3DMSPcHIUCksM/HwhbPz0f/Al1w9yAZbGQ7scZqayMDDbqojAuro04KwfJ5iVLS7z3Nv7zRbns
	Hys1KNLenEOzYE4y8jdD5NVqCr8KnT2+98uGZ2ToWCyt1QBka1/yJQ5mRKE5bVFss+me+PkhKrnVY
	q+WKvPMrqID0mt7eMlLvAgdDOVstlxbqbs+BQll8UtrvShh9kW7CrQTAL195A27XJbogX2/bA74p5
	6zXGia2nv+FnRAPZ5jjDvMC5hMTrKSjDpcK+ZGFbzzS9NPw0DMdLZE/VCOWhUM/SrqZ1UTSQj2LyJ
	RtDlj1Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t938q-00000007E5u-1yBx;
	Thu, 07 Nov 2024 14:05:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t935k-00000007DXc-0qru
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:02:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935g-0005tf-4r; Thu, 07 Nov 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-002T9I-2a;
	Thu, 07 Nov 2024 15:02:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-00EWBz-2J;
	Thu, 07 Nov 2024 15:02:27 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Nov 2024 15:02:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fix-sha256-assembly-v2-4-5fdb418f7f54@pengutronix.de>
References: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
In-Reply-To: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_060232_373176_C6000569 
X-CRM114-Status: UNSURE (   9.67  )
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
Subject: [PATCH v2 4/7] arm: configs: multi_v7_defconfig: compile for
 thumb2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a common configuration used in production systems as it results
in smaller binaries and possibly faster startup times.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/configs/multi_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 8a9617c116d741c9bc5b6586e707c1c244cd18c6..f64005308516fadd22d02294a2bc58c02b113b4e 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -85,7 +85,7 @@ CONFIG_MACH_PROTONIC_STM32MP1=y
 CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
 CONFIG_MACH_VEXPRESS=y
 CONFIG_MACH_VIRT=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_ARM_PSCI=y

-- 
2.39.5



