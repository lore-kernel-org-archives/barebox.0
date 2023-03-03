Delivery-date: Fri, 03 Mar 2023 10:24:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1e2-007NZD-Dy
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1e1-0001D3-Al
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bfd7cNPi0EWgmAicqQknY6ALTqKwqrOk/27ULeCChwA=; b=CX5WuTmxqBOWgYWqARW4ilATKf
	JqPk+f8D4JjoPiHTUSgr0VtgS/cWxXcqHnE0zeDP9hVDb5BMq5f3TZFsrWQR1rI63K5IzTkCgIpxs
	ADLJv3IdE8paOjhn10Mjs+NNiZNVrX1VFvQi70rD5qYQn1Z7SVBafJ7VtzzTQSJM4TGndREa/8e9f
	OHUTUnwVhC/ihApjRCqFub77ZgZ6qv8EIhg3iHtTuFYf4w6usep2lBJOHRQB1B9G16Bja41XLWMtS
	h7fFkolXnVgA4Cg0Uxb4xBi3WVbG0AQk9yzvuDq8HzKY1CmNAwHevzHOvyhFyCCDJA9aqKJPLVEQ6
	pT8+kY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cg-005f3N-AL; Fri, 03 Mar 2023 09:22:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bg-005eMX-SX
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000CO-KI; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001WiB-QZ; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2lM-5r; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:27 +0100
Message-Id: <20230303092131.3063587-47-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_996838_C7459C8F 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 46/50] ARM: vexpress: Add multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nothing left to do, just move the vexpress Kconfig symbols
over to multi-arch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 47f6ace294..789365e69b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -167,20 +167,6 @@ config ARCH_VERSATILE
 	select HAVE_CLK
 	select HAS_DEBUG_LL
 
-config ARCH_VEXPRESS
-	bool "ARM Vexpress & virt boards"
-	select HAS_DEBUG_LL
-	select CPU_V7
-	select ARM_AMBA
-	select AMBA_SP804
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select OFTREE
-	select OFDEVICE
-	select RELOCATABLE
-	select HAVE_PBL_MULTI_IMAGES
-
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	select CPU_V7
@@ -280,6 +266,20 @@ config ARCH_STM32MP
 	select ARM_SMCCC
 	select ARM_USE_COMPRESSED_DTB
 
+config ARCH_VEXPRESS
+	bool "ARM Vexpress & virt boards"
+	select HAS_DEBUG_LL
+	select CPU_V7
+	select ARM_AMBA
+	select AMBA_SP804
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select OFTREE
+	select OFDEVICE
+	select RELOCATABLE
+	select HAVE_PBL_MULTI_IMAGES
+
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
 	select CPU_V8
-- 
2.30.2



