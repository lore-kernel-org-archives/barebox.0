Delivery-date: Tue, 17 Jun 2025 16:31:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRXLr-008IeB-0e
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 16:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRXLq-0006eA-M4
	for lore@pengutronix.de; Tue, 17 Jun 2025 16:31:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hevaKBm5hBzjEs7bTgtS4mo4pUxVSUfsDwFAIx23aYk=; b=uXYPQArdTK0c7XuQj0Fcv7Ven3
	eRkuxb7idbwQqZDYxEt4fNBYf6TZDwiDvCnUAqUDB7WgRk3YOsw9mEn3td0nAJj8PF020a53XL6IX
	Q719G7wDZ/1bgm+QPRJOqT9/YnJXM4h0m/noeKBj6m9rvfpWMrCOf92KzZ9rlDVvs/zAxApaaNUQN
	VYb30eBcfFjNR2p9gibd0AnWOvt1uI3WMHk6HOmiMeQJjJWO69/Cw9JJ5V/LBxM3dN+bhkbfhVm7R
	0NErVreALUnkmWuMEJdSBbtejCEMjy9PtkQGi7ohNFwzGkPe/HWQaO6PCW8TNePqML8xnTDVO6AZc
	64Fajr5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXLc-00000007ZEg-1t3c;
	Tue, 17 Jun 2025 14:31:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWEj-00000007KLY-433t
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 13:20:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uRWEi-00012O-MJ; Tue, 17 Jun 2025 15:20:24 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uRWEi-003yor-1b;
	Tue, 17 Jun 2025 15:20:24 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uRWEi-008jWS-1R;
	Tue, 17 Jun 2025 15:20:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 17 Jun 2025 15:20:23 +0200
Message-Id: <20250617132023.2081589-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250617132023.2081589-1-o.rempel@pengutronix.de>
References: <20250617132023.2081589-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_062026_006732_7D9C2A4F 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] sandbox: configs: enable CMD_NVMEM and NVMEM_RMEM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This options are needed to active test/py/test_nvmem.py
tests.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index f8897afa19b1..691b5da0edff 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -18,6 +18,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_NVMEM=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
@@ -124,6 +125,7 @@ CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 # CONFIG_PINCTRL is not set
+CONFIG_NVMEM_RMEM=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_SYSCON_REBOOT_MODE=y
-- 
2.39.5



