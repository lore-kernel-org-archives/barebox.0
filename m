Delivery-date: Fri, 03 Mar 2023 10:32:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ll-007O7b-Ji
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:32:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lk-00058h-J9
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:32:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4tObmM0e8E+DVF2w5QusMG03RH8LpB6idpunDQ7QWxg=; b=IiFzr2GluFMgUH3PWt8H6O7vN+
	2EIS+7DzOEWKbJR+IEQ/jgHaGtnWiXehmeg2/lPEhCnoSLBoQCoYj+vQ1iPcwd0j9YPyWMQUiXMwk
	zVc6LY1GOmnOxU/X+lz6UzZG9dXtpEMMpwoWDC1z6aguXo2UXDiqxLINGzLuxcEiQBwuw3Vitvu54
	gNcGMM/sI2TtcAGdV5pXMcgWpz3Eubx32xl4cak2P0ytPrHcBCkblX/SOmUk2HwQZHN+Vt7INiFgP
	M7QqxCQDvRXDg8LKi6axqs8MmjI0/YaKwb9yO6NajTP3jgAxNer1CuLp3sThPpYAeKA0OLYnocuFz
	Rc2s1cOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1kZ-005kyf-1y; Fri, 03 Mar 2023 09:30:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1d2-005fQV-O3
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4tObmM0e8E+DVF2w5QusMG03RH8LpB6idpunDQ7QWxg=; b=fvC417uSrT2uee+fKVTpQKIJD3
	gP6kWhRZr0tLXIi5CsDibWgwo2ZylesGWsEgpdKMlS1fTuQqoPrT8RrAR77k5dWMLuu5dFNDYOX5m
	uXsZ1xpDGsHpjNTg2vaHldz3zbTioKv7pa8cmzfgVK8JcZ5zZ58ZD5RfLUv5C3VcSVlipCCltLvBn
	Mu2euIQgTHL3uA9iD6S4loS99OHNNsaSmi7HvMnN/RsgQCKHbfRxjTc52yTbsa2OZLEtc/jT/HmnL
	K2olmJ1/okF5UtvSGyRSvmb3r+gaYzD3uPPlxHtublW6WfqTz2ILcqemG8zS8F9EQFwlfjg/XaJ4s
	vOBzVKxQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdKw-0A
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-0000DL-8L; Fri, 03 Mar 2023 10:21:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-001WiO-DF; Fri, 03 Mar 2023 10:21:39 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2kv-4D; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:24 +0100
Message-Id: <20230303092131.3063587-44-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092151_014529_0166AEDC 
X-CRM114-Status: UNSURE (   9.22  )
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
Subject: [PATCH 43/50] ARM: stm32mp: Add multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All preparations are done, move stm32mp architecture over to multi-arch
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a7b8b0da01..47f6ace294 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -161,22 +161,6 @@ config ARCH_SOCFPGA
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 
-config ARCH_STM32MP
-	bool "STMicroelectronics STM32MP"
-	select ARCH_STM32
-	select CPU_V7
-	select HAVE_PBL_MULTI_IMAGES
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select HAS_DEBUG_LL
-	select HAVE_CLK
-	select GPIOLIB
-	select ARCH_HAS_RESET_CONTROLLER
-	select ARM_AMBA
-	select ARM_SMCCC
-	select ARM_USE_COMPRESSED_DTB
-
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select GPIOLIB
@@ -280,6 +264,22 @@ config ARCH_ROCKCHIP
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 
+config ARCH_STM32MP
+	bool "STMicroelectronics STM32MP"
+	select ARCH_STM32
+	select CPU_V7
+	select HAVE_PBL_MULTI_IMAGES
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select HAS_DEBUG_LL
+	select HAVE_CLK
+	select GPIOLIB
+	select ARCH_HAS_RESET_CONTROLLER
+	select ARM_AMBA
+	select ARM_SMCCC
+	select ARM_USE_COMPRESSED_DTB
+
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
 	select CPU_V8
-- 
2.30.2



