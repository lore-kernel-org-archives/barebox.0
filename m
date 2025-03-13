Delivery-date: Thu, 13 Mar 2025 07:46:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKs-00DSPJ-33
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKr-0006sd-Lu
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0PA/BINiKYrdbEu2E66Hk4jPEeWVY5auuQuKlEOiAc=; b=BsICNkF61e/+cYQDFjFv3vfv5O
	CYVY19mC3R4W4wcWoAi8l2G5Y8HCoHuZgjhZQ9RWYbl+iGn9RfS/GBYoqAsIQeI4fmXA9QfyA/2il
	+fxDzl1VPJ5yFuCgFBAYppSjBoDU1JShBmbFQVbPJHSvvgl4ZSslfNwhpgrNsD0DvEZrb4H/VubFm
	E9wFYti0RnIQxt18lIEoLU13F0bo23d6S0gbUiuh6X0pb2FLeYRaQ73QINWO372bcnzqA6CRI1z2b
	ZqsvIIFkSNBScw3IUl8AphPC1lCzhlcFUNy6vP590jrSc613iN18odXOhTeetbJE/eN7ROn7IPyX4
	nSiae3Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKR-0000000AFkX-1usj;
	Thu, 13 Mar 2025 06:46:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKN-0000000AFhj-1t7i
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:46:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-0006Vk-7V; Thu, 13 Mar 2025 07:45:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-005UJC-08;
	Thu, 13 Mar 2025 07:45:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-000K8j-33;
	Thu, 13 Mar 2025 07:45:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:54 +0100
Message-Id: <20250313064557.77398-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313064557.77398-1-a.fatoum@pengutronix.de>
References: <20250313064557.77398-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234559_538722_4CCB01CC 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] treewide: retire CONFIG_HAS_CACHE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The option serves no purpose any longer as all cache maintenance is
hidden behind generic APIs like the DMA streaming API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig      | 1 -
 arch/kvx/Kconfig      | 1 -
 arch/openrisc/Kconfig | 1 -
 arch/powerpc/Kconfig  | 1 -
 common/Kconfig        | 8 --------
 drivers/net/Kconfig   | 1 -
 6 files changed, 13 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3d8f2eeca713..f5f9f3828782 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -3,7 +3,6 @@
 config ARM
 	bool
 	select HAS_KALLSYMS
-	select HAS_CACHE
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
 	select ARCH_HAS_SJLJ
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 2e6432f897d8..5f325ca28358 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -14,7 +14,6 @@ config KVX
 	select FITIMAGE
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
-	select HAS_CACHE
 	select HAS_DMA
 	select LIBFDT
 	select MFD_SYSCON
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 6b64b299b391..d79743962a42 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -3,7 +3,6 @@
 config OPENRISC
 	bool
 	select OFTREE
-	select HAS_CACHE
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 6346594173ac..4e282bc3ac80 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -5,7 +5,6 @@ config PPC
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
-	select HAS_CACHE
 	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
 	select ARCH_HAS_SJLJ
diff --git a/common/Kconfig b/common/Kconfig
index 8a051a29e76c..6e5fba33ea4a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -27,14 +27,6 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
-config HAS_CACHE
-	bool
-	help
-	  This allows you to run "make ARCH=sandbox allyesconfig".
-
-	  Drivers that depend on a cache implementation can depend on this
-	  config, so that you don't get a compilation error.
-
 config HAS_DMA
 	bool
 	help
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 5c436a05ccc5..7cad80c0a4b6 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -188,7 +188,6 @@ config DRIVER_NET_ENC28J60_WRITEVERIFY
 config DRIVER_NET_ETHOC
 	bool "OpenCores ethernet MAC driver"
 	depends on OPENRISC
-	depends on HAS_CACHE
 	select PHYLIB
 	help
 	  This option enables support for the OpenCores 10/100 Mbps
-- 
2.39.5



