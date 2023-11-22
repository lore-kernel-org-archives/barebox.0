Delivery-date: Wed, 22 Nov 2023 19:12:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ric-004gGo-0q
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:12:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ric-0001Cd-B6
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:12:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lThqylbnObIWosiA/4oZkSJp36QArL+KoSihZTmEMpo=; b=zvTyoVhok7JWi1XbYRTRhWQWyj
	JVwvUxkgieHSCfwx/ZKIxfLxMLyC20yii7sQB0XrxplOSoEHbierUKQEtj6bJrc5H6S7+adSWRESd
	Hgun0zqtwWhdA+VGUIEe10819JIWXBKOuqAjF5ynp846IEPcyrSsxyf2DZOmxvQVu9Yw/NUWmK1Gh
	q1bMnpNkscqeMb7nSI3fVXWgSVREqs+NMDRnz7wszNyZszWeeTi67t0P4H2XQYpV+ZYwztsUb4AFO
	AKbJOPmWX9JRTNeRcIlM/NEl7JaEiMkWbcqMgM3GCAhIOqYc1wAW3N5E072AEoxDvSCRF5RFoK8Us
	AOQkiysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhF-002lpR-1y;
	Wed, 22 Nov 2023 18:11:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002llx-2v
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000bH-Cp; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-00As11-W0; Wed, 22 Nov 2023 19:11:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-002Wed-2o;
	Wed, 22 Nov 2023 19:11:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:12 +0100
Message-Id: <20231122181116.591131-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_965123_8D9457B0 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] ARM: stm32mp: init: drop unused macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The use of the TAMP registers differs between STM32MP15 and STM32MP13,
so let's drop all register definitions that we don't use instead of
renaming them to be SoC-specific.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index b63c1be5beac..b0220fdb8c7d 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -42,12 +42,8 @@
 
 /* TAMP registers */
 #define TAMP_BACKUP_REGISTER(x)         (STM32_TAMP_BASE + 0x100 + 4 * x)
-/* secure access */
-#define TAMP_BACKUP_MAGIC_NUMBER        TAMP_BACKUP_REGISTER(4)
-#define TAMP_BACKUP_BRANCH_ADDRESS      TAMP_BACKUP_REGISTER(5)
 /* non secure access */
 #define TAMP_BOOT_CONTEXT               TAMP_BACKUP_REGISTER(20)
-#define TAMP_BOOTCOUNT                  TAMP_BACKUP_REGISTER(21)
 
 #define TAMP_BOOT_MODE_MASK             GENMASK(15, 8)
 #define TAMP_BOOT_MODE_SHIFT            8
-- 
2.39.2



