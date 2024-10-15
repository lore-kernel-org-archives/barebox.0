Delivery-date: Tue, 15 Oct 2024 13:21:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcK-004dlH-12
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcJ-0000Kt-Jj
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E7hLAuV/gqJnoy256Q1vrEkwJO4U1NFjs46t3VDXblg=; b=hFvsuN6BH+hwf33l35VabI8Uq2
	1haO7X6cy2ZV3AW9SyDScul+rkcixbEbott7CWkOW0X9cF8SXuSjsYsWpXEnvju8rIDm+oQqSAZGC
	KkMRs4CsUH2Ibhh+b+QNTiTrONX7bWf80dpwynXdhD7G2ROwDLw1oIWAiklFFOrOE13g2A6aVBtIc
	DyMRL/9QuDpF2O8bVBZS/QqJiZtbSaAiwHDkOWw6+japO0ChHgII1LR0ZDkGDvnTcNQzkWyLj9Eoy
	tNMubuKx3v4kD8XhO9g+6jZ7faFM/HGQwHkiy4fQj1eI1qDJXiuhb8bL1KHxiCb4SyE4UiWuaUM+q
	B21X2aXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbe-00000007zlC-2MgI;
	Tue, 15 Oct 2024 11:20:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSa-00000007yLG-3LYm
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007ug-KG; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219A-0B; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-32;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:10:57 +0200
Message-Id: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMFNDmcC/x3MTQqAIBBA4avErBtQ+0G6SrQwnXIQSkaIILp70
 vJbvPdAIWEqMDUPCF1c+DwqdNuAj+7YCTlUg1Gm10oPKKdPPnLGkhklWWUxONuZMWizOgs1zEI
 b3/90Xt73A/lz5bZkAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=1426;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=A58IXQ7zIRtW0dIG/GztLO7EGDotCJUs3jAiWZrRas4=;
 b=ZJCRlp/aT/cQuRNQfuQ5G//9hKCmp2mnXfjTuo9lkfyFVjKjiDGgG8qqKyuCT+N9JHeddddPR
 8CaPzYRCQnACdK5BqOROFKbcxHL3DJqQDlRqYsBLfFt0NzCxEfAUOYa
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041128_872909_D32B3530 
X-CRM114-Status: UNSURE (   9.53  )
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
Subject: [PATCH 0/7] rockchip: add RK808 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for the RK808 PMIC found on several Rockchip
boards. Unlike the earlier versions of this PMIC this one comes with
SPI support. As we do not have a Rockchip SPI driver yet, this is added
in this series as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (7):
      spi: add rockchip spi controller support
      mfd: mx13xxx: drop unnecessary ifdefs
      mfd: rk808: factor out common probe function
      mfd: rk808: update header file from kernel
      mfd: rk808: add support for RK806
      regulator: add regulator_register()
      regulator: rk808: update from kernel

 drivers/mfd/Kconfig                 |    4 +-
 drivers/mfd/mc13xxx.c               |    4 -
 drivers/mfd/rk808.c                 |  217 +++++--
 drivers/regulator/core.c            |   37 ++
 drivers/regulator/rk808-regulator.c | 1085 ++++++++++++++++++++++-------------
 drivers/spi/Makefile                |    1 +
 drivers/spi/spi-rockchip.c          |  584 +++++++++++++++++++
 include/linux/mfd/rk808.h           |  661 ++++++++++++++++++++-
 include/regulator.h                 |   36 ++
 include/spi/spi.h                   |    7 +
 10 files changed, 2165 insertions(+), 471 deletions(-)
---
base-commit: 7b76ca36ccbe4ee992d44ea5c5c5203a93bb672f
change-id: 20241015-rockchip-spi-rk808-da8326d12ba8

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



