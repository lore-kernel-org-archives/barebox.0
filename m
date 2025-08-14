Delivery-date: Thu, 14 Aug 2025 17:37:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0l-000YFq-2o
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0k-00043o-OS
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fHVoW0q1oPAEoNvEJgwan5aEiOieSb+o4BcIbXsL/+I=; b=k6YwQ2ATukj2D/QOCA6plO3Sw9
	cKdyPXc74avi5BYmeqprvCbBtlH4t0zXwzghCyaK8lcvsqRTSjogWOjg/zSugSTkpfr+OokJpJloj
	UJWsAFKRbESq8UR7n6N8V8tL3aA+TPBzrFIZQe8DK4I17YCgMBQhNH5RIVmt1A93SUbYQ9nHLgKRP
	l13tQfVvTV8bSSOYMDQiesk7rLAO/qTujKjecKhkxim6BG5F0KerRZMmIl0n9Miztd0ogmLssvj7m
	txKTlnQVDlwehYYL4nkfxzy5Bf+auJX+8ennYmE25wutlXwtiX2tgfORulnIF6HK1teIWX5UDWHkA
	gvej4Mxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0M-0000000HSl7-30ow;
	Thu, 14 Aug 2025 15:36:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVTw-0000000Gdwi-3Pyh
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000NW-JH; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ews-12;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0p;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:48 +0200
Message-Id: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJi+nWgC/x3MywqAIBBA0V+JWTegZs9fiRaSUw090Yog/Pek5
 Vnc+4Inx+ShSV5wdLPnfYuQaQL9ZLaRkG00KKFyUUmNc4ZmLdSC12HNSR5zW0qjS021EBCzw9H
 Az79suxA+K0LrOGIAAAA=
X-Change-ID: 20250814-k3-am62l-updates-5d71a474e900
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=1091;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dR/Y3ULj/8mK5DGIsmpABYElcSaM90SJuxumVwBLZTY=;
 b=za0gPF2RJHUNKoVEqvOY0JeE0JXQJ7oAeUNMzJ1C0/mbB2vjf/SG62Q6HkGuxiVY/r1Ec0uvY
 rWdoOIPhwv3Cg7jdyec1Fj+gFWC2WkNd3VynkW088or2ogY/8jegP1T
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034652_886258_864E0392 
X-CRM114-Status: UNSURE (   7.09  )
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
Subject: [PATCH 0/6] ARM: k3: updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This contains assorted patches for the K3 architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      ARM: k3: AM62l3-EVM: add usb0
      ARM: k3: quote PEM files
      ARM: k3: allow to pass custom signing keys
      k3img: handle PKCS#11 uris
      ARM: K3: Update yaml files for AM62L
      ARM: k3: use newer ti-linux-firmware

 arch/arm/dts/k3-am62l3-evm.dts        |  47 ++++
 arch/arm/mach-k3/Kconfig              |  22 ++
 arch/arm/mach-k3/Makefile             |   2 +-
 arch/arm/mach-k3/board-cfg-am62l.yaml |  32 +++
 arch/arm/mach-k3/schema-am62l.yaml    | 427 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-k3/sec-cfg-am62l.yaml   | 131 +++++------
 firmware/ti-linux-firmware            |   2 +-
 images/Makefile.k3                    |  14 +-
 scripts/k3img                         |   6 +-
 9 files changed, 610 insertions(+), 73 deletions(-)
---
base-commit: a353f75968e07fcdf43c862e4e00856629c67c32
change-id: 20250814-k3-am62l-updates-5d71a474e900

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



