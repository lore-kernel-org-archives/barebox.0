Delivery-date: Mon, 03 Feb 2025 09:31:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ters4-007uHr-1u
	for lore@lore.pengutronix.de;
	Mon, 03 Feb 2025 09:31:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ters4-0003XT-Oh
	for lore@pengutronix.de; Mon, 03 Feb 2025 09:31:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JkhPa+URGrgo2FK8SqbeDPnGPoih6ybWjsCAD/3IJyM=; b=ttehX9tx7ygeX7OE/BmzY+/DuW
	Usy6JG5W6s+fGwGa/ZJ0pN9zjMV51nd0dt7FOYlM6wI8NFQBAQCqXvZD31Ml1GieZrCah5PFocKdB
	V/Oa+2MCW21MJBbnUOHmbYz2CBGn2991P7fkxadXyWenOkePeLfsCh0i2EmaXNQ/6D9JeLNVcHqlO
	iHKBwHXIkWujz10spfzKKhvCMYtX8TEPjrJWsXIAmFHADdIKmEBz4ShyISRkopksk7/tMsmJ1U/Bq
	Git6A9QLy0w23X/TTR7WEc56qzaT6/u/k+K1C4GrHgtc7eDVEPlyOJJEtKhQp13peBZUKdg8S/5Xg
	pmHEiwug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1terrR-0000000EqL7-1cbG;
	Mon, 03 Feb 2025 08:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1terk2-0000000EpIo-18oT
	for barebox@lists.infradead.org;
	Mon, 03 Feb 2025 08:23:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1terjy-0002s2-IT; Mon, 03 Feb 2025 09:23:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Feb 2025 09:23:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250203-v2025-01-0-topic-ls1046a-v1-1-2e2c372dbdb9@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPl8oGcC/x2M0QpAQBAAf0X7bGvvcORX5GFjjy2hO0nJvzveZ
 h5mbogSVCK02Q1BTo26rUlMnsEw8zoJ6pgcLNmKLBV4foRkkPDYdh1wiYZKx9hwzc56z44qSPk
 exOv1r7v+eV5kExHuagAAAA==
X-Change-ID: 20250203-v2025-01-0-topic-ls1046a-8a7a62ffa605
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_002338_323044_D585B6D9 
X-CRM114-Status: UNSURE (   6.20  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Layerscape: LS1046a: select early i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMLS1046a board uses i2c to determine the HW variant.
Therefore early i2c is needed.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-layerscape/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 415ee93b996db780b49c807813a7d5bd4d2b5ecb..0f559863eccca1c46164f0fc034676e3990e5904 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -34,6 +34,7 @@ config MACH_TQMLS1046A
 	bool "TQ TQMLS1046A Board"
 	select ARCH_LS1046
 	select MCI_IMX_ESDHC_PBL
+	select I2C_IMX_EARLY
 	select DDR_FSL
 	select DDR_FSL_DDR4
 	select FIRMWARE_LS1046A_ATF

---
base-commit: fb590cfa8fea6906d3f78dd409856d350e24b582
change-id: 20250203-v2025-01-0-topic-ls1046a-8a7a62ffa605

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



