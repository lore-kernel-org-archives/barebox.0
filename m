Delivery-date: Wed, 22 Mar 2023 15:08:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pez8r-00AUrm-LG
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 15:08:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pez8r-0007pv-ID
	for lore@pengutronix.de; Wed, 22 Mar 2023 15:08:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x0gXS1gmRwP/cCc/7Qo1G2K9Q687zZ/P4Zs0Co4VnGU=; b=X0pAzp88zfPLvFDWfm81/eE/P0
	axYUxkXvX8g1Cqwa4cOxBMX8xr/S9AP4j9J9vkVMRqC6S7RSiP1unp0ZRA6WtL8r+5X4A36IcZ2SK
	An733xpL883SGYQc+mMxyeZUVz3bq+t10gxxnOcWJqfen6eEsk/gyxnwTE6YS0jKyQWIqT/IscRE+
	sgMHQ+ZL5dU1hh5uLT8nHpFbzARoYk2NpsqAR6SErfQ0xi+PD7HbYe1P46v+9Todwfc4KOitQvk59
	MiaUEGmiBdwOe5PUcY0LywbWpFtnH6VKGresy3oLVi8e8l38vu/8T8QjeVmoQbU+T6FRTxc75K4vd
	Lgkjz+6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pez7p-00GEeY-12;
	Wed, 22 Mar 2023 14:07:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pez7l-00GEcg-02
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 14:07:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pez7i-0007dm-FG; Wed, 22 Mar 2023 15:07:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pez7h-005w3S-Qo; Wed, 22 Mar 2023 15:07:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pez7g-00HBam-VQ; Wed, 22 Mar 2023 15:07:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 15:07:28 +0100
Message-Id: <20230322140728.4096066-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_070733_061590_C344B8F2 
X-CRM114-Status: GOOD (  11.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Rockchip: let boards depend on 32/64bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we can enable support for 32bit and 64bit SoCs at the same time
which results in an unbuildable barebox. This is annoying, let the board
visibility depend on the selected code model.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig               | 2 ++
 arch/arm/mach-rockchip/Kconfig | 9 ++++++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index abe649de49..2c1783d8e9 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -248,6 +248,8 @@ config ARCH_ROCKCHIP
 	select OFTREE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
 
 config ARCH_STM32MP
 	bool "STMicroelectronics STM32MP"
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 4ac75ab947..9b4913d5da 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -30,7 +30,6 @@ config ARCH_RK3288
 config ARCH_ROCKCHIP_V8
 	bool
 	select CPU_V8
-	select CPU_SUPPORTS_64BIT_KERNEL
 	select ARM_ATF
 	select RELOCATABLE
 
@@ -49,6 +48,8 @@ config ARCH_RK3568
 
 comment "select Rockchip boards:"
 
+if 32BIT
+
 config MACH_RADXA_ROCK
 	select ARCH_RK3188
 	select I2C
@@ -62,6 +63,10 @@ config MACH_PHYTEC_SOM_RK3288
 	help
 	  Say Y here if you are using a RK3288 based Phytecs SOM
 
+endif
+
+if 64BIT
+
 config MACH_RK3568_EVB
 	select ARCH_RK3568
 	bool "RK3568 EVB"
@@ -86,6 +91,8 @@ config MACH_RADXA_ROCK3
        help
 	  Say Y here if you are using a Radxa ROCK3
 
+endif
+
 comment "select board features:"
 
 config ARCH_ROCKCHIP_ATF
-- 
2.30.2



