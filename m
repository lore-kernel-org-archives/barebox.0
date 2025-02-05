Delivery-date: Wed, 05 Feb 2025 10:49:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1j-008kWq-2D
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1i-0004dM-Qw
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5zrH13SYnagOwOSkRIhw8wvFN2uFidgFEzFNh1u6ME4=; b=Q1nn/upvZRlK9bGkGmRf6A/LQC
	6o76KZ4ciRysSmRQt10ZGmb5G0dBjon4kvK5XdF4XYNogYqZik+M9C99jp8eLErAHbYZwW5AtK43h
	xGdmiZbdIRS5ymhqf8AT684C+wSkj1rd3rKPhD5esTGbCkr/i5m95EGF0ghdh2mORmNHBJ6m/IkU6
	63Lyf/TJPRssZP6WECUpGGbGZT89dMBG2WJwDLv8k/nWUhmitasEAeSx7qahUZglCGl0MlBGFanDx
	8Q5bgeRizCf/SWAxOQnnT8Ad/+fZSLeg3AhJ5zgQFnlOvPJQYuormLL7V7tbRc1RgDsc65kCrMGcl
	2lou7PSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc15-00000002kG9-3NGG;
	Wed, 05 Feb 2025 09:48:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc13-00000002kDW-05D7
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048H-Ls; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2b-1A;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0r;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:08 +0100
Message-Id: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANkzo2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIwNT3Wxj3dTc3GTd1MRE45Q0yzTjtLQUJaDqgqLUtMwKsEnRsbW1AH9
 RIZNZAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1963;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rQjna+oAaOwgJocd0dbwKLFmzqneBf+Fmp5cog65BPM=;
 b=PHqBVPKIHtrYiqbzPXtVezSgz28sIb7frz2lBP87I/BAxITta2f9y4xONi1pQnH2dN3OF3p9m
 0R0AOidQfYdCErw+PeZumvn9yX1B2aHwNNIFg3jVyRWMoRLbBv1saJs
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014817_075103_FCCBEEC8 
X-CRM114-Status: GOOD (  13.26  )
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
Subject: [PATCH 0/9] ARM: K3 updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some updates for the TI K3 architecture.

We add support for bootstrapping boards via USB DFU. This has been sent
earlier, this time booting from eMMC is added as well.

On K3 SoCs we need a bunch of images after the first stage has been
loaded: OP-TEE, ti-dm firmware, TF-A binary and finally a barebox
binary. Until now these are expected as distinct images on the SD cards
FAT partition. This is impractical for booting from eMMC boot partitions
and also DFU boot, so this series adds support for handling a FIP image
containing these binaries.

Also some misc patches like enabling the 32k crystal needed for accurate
RTC frequency

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (9):
      ARM: k3: Add function to enable 32k crystal
      ARM: k3: add function to detect eMMC boot
      ARM: k3: do not mount /boot when booting from eMMC
      ARM: k3: r5: add USB DFU and eMMC boot support
      ARM: am625-sk: enable 32k crystal
      mci: am654: parse generic mmc node properties
      ARM: k3: limit eMMC frequency to 25MHz
      ARM: am625-sk: put environment on eMMC when booting from it
      serial: omap: Use ttyS as Linux console name

 Documentation/boards/ti-k3.rst       |  47 +++++
 arch/arm/boards/am625-sk/Makefile    |   1 +
 arch/arm/boards/am625-sk/board.c     |  35 ++++
 arch/arm/dts/k3-am625-beagleplay.dts |   4 +
 arch/arm/dts/k3-am625-sk.dts         |  19 ++
 arch/arm/mach-k3/common.c            |  36 ++++
 arch/arm/mach-k3/r5.c                | 367 ++++++++++++++++++++++++++++++++---
 drivers/mci/am654-sdhci.c            |   1 +
 drivers/serial/serial_ns16550.c      |   4 +-
 include/mach/k3/common.h             |   9 +
 10 files changed, 490 insertions(+), 33 deletions(-)
---
base-commit: a40a4c0d054f3b6aac272236c982d24c4ac72eaa
change-id: 20250205-k3-emmc-eaa3df9f3ffd

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



