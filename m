Delivery-date: Thu, 09 Jun 2022 08:01:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEN-008S28-HY
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEK-0000l0-IF
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJnqY9vqKbMyH4Tbu491lUIYrQ8Drb9GOOiXjCVMmy0=; b=CO3TcKBGRKiBcm
	N6AeUQtF7w14XI6cvN6j7YXQE9yjiOx5t3CKhDFzn8MNfxF2kV9e8+7CgyXT/YyuQrtp2fxKdDijS
	uG15kyDOen8H/2iSe8qL08dvDrYVjRo9MP6MPfXM086PSl93kppYMCNcGCP7GmcBKg8DwbTY0I9aA
	lBilhm6UCJrudjaiAFxvZ2mGpGC9S1qH6Xd5ZQwoTGidA1gJPI72Er0zzQW3UkcwnYHnIiOf5WPd6
	MMQxQuZ9/Mizd1aeiVyvklSDj/+mR1q1TeIhZHxtUkHePR4cgt7CuW/22dkIxxcwePoRX6/GdI/vR
	5EsqMfwG4Zb4ANXRh7xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBD1-00GvG1-Ke; Thu, 09 Jun 2022 05:59:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCa-00GuzR-Bq
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-0008Hg-3q; Thu, 09 Jun 2022 07:59:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9R-MN; Thu, 09 Jun 2022 07:59:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZu-C3; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:11 +0200
Message-Id: <20220609055922.667016-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225928_493199_CDF4F0D9 
X-CRM114-Status: GOOD (  10.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/21] ARM: cpu: prevent recursive dependencies via CPU_SUPPORTS_64BIT_KERNEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For ARM, CONFIG_CPU_SUPPORTS_64BIT_KERNEL's only function, along with
CONFIG_SYS_SUPPORTS_64BIT_KERNEL is to control visibility of the 64BIT
symbol. Select it from CPU_V8 is detrimental, because subarches may
want to select CPU_SUPPORTS_64BIT_KERNEL unconditionally and select
CPU_V8 only if 64BIT was chosen. This currently leads to a recursive
dependency, so break this up. No functional change just yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                 | 2 ++
 arch/arm/cpu/Kconfig             | 1 -
 arch/arm/mach-imx/Kconfig        | 1 +
 arch/arm/mach-layerscape/Kconfig | 1 +
 arch/arm/mach-rockchip/Kconfig   | 1 +
 5 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a1d75c19b65..215abd19b553 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -276,6 +276,7 @@ config ARCH_ZYNQMP
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
+	select CPU_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select HAS_MACB
 
@@ -286,6 +287,7 @@ config ARCH_ARM64_VIRT
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
+	select CPU_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 0a493754a418..5639d1eeffc3 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -87,7 +87,6 @@ config CPU_V7
 config CPU_V8
 	bool
 	select CPU_64v8
-	select CPU_SUPPORTS_64BIT_KERNEL
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_STACK_DUMP
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6b962dcf7e34..9b9f5a472ef9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -177,6 +177,7 @@ config ARCH_IMX8M
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
+	select CPU_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index bdd7d0dbfe52..9ad58eba5575 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -17,6 +17,7 @@ config ARCH_LAYERSCAPE_PPA
 
 config ARCH_LS1046
 	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_64BIT_KERNEL
 	bool
 
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 4b6dfd2c17a9..e09c4837d59d 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -30,6 +30,7 @@ config ARCH_RK3288
 config ARCH_ROCKCHIP_V8
 	bool
 	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_ATF
 	select RELOCATABLE
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

