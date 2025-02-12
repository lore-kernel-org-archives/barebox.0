Delivery-date: Wed, 12 Feb 2025 15:10:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRI-001SNK-1n
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRH-0001XE-9q
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vV5e2ej7Quu0m33MYUwDaTLePynvBaUrNKjmZoWENRk=; b=HD75/pEoZpQ3dEmoeA8E8yCbXl
	Y/NjD2nl+75hgI6NLEUPNonqKS3ExnxxxoACIr24M9p9KiugMg2k5aLvi4WO3duMAqiuFNLXPww1t
	TceROvpBgwRgLqJw04k6bqYYmljulAQjd9S/CtZTtYBuE7TVupu1ZwlhNCfdKxSlrOSeUFSwBJ55R
	BLXRRZroaGdSZbsMupUtnw2gtkQKaVeD8V2c8RJdlRfR/CnekZN08t2rUa4IXABZTFMErM3ncbYIu
	Jaub6p+4h6A/yo+wRzf+cucQTotJvWV75LrwueCx56v4kf89KYEEaBsd4B95vxk7ksRPQJoCAkCOp
	feNk8c8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQn-00000007c2O-3kc3;
	Wed, 12 Feb 2025 14:09:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxr-1H1y
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000124-SZ; Wed, 12 Feb 2025 15:09:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b1r-1y;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1k;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:13 +0100
Message-Id: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAImrrGcC/2XMQQ6DIBCF4auYWZcGQWnsyns0LqgMOmkEA5bYG
 O5e6rbL/+XlOyBiIIxwrw4ImCiSdyXEpYJx1m5CRqY0CC5aLnjLXpLhsowMtZbGdlZaa6C814C
 W9lN6DKVnipsPnxNO9W/9N1LNOONK3TrRqCc2db+im95b8I72q0EYcs5fTkcCQ6MAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=3455;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vI6EN203WFquGL1Tqp4SXHx8ZogSCFa+AB3TL8EyI3U=;
 b=K/vuO2op4qFJdwkKh0JbVnaPv/Tsriq8Rk98Y9wWamcD9ai5teCFrLODNfCdzikhOuD59kKD+
 YWfqtTJwdVnArtY7KZ0YzvyW7C/GchEByKWImFVH7CxNyGnz7m/UZ7j
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_357931_DB9E1E23 
X-CRM114-Status: GOOD (  15.92  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/20] ARM: K3 updates
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
Changes in v2:
- Improve existing FIP code and use it instead of open coding parsing the
  FIP image
- add defconfig file for k3-r5
- Cleanup the board entry functions for the K3 Boards
- Link to v1: https://lore.kernel.org/r/20250205-k3-emmc-v1-0-06679246be41@pengutronix.de

---
Sascha Hauer (20):
      ARM: k3: Add function to enable 32k crystal
      ARM: k3: add function to detect eMMC boot
      ARM: k3: do not mount /boot when booting from eMMC
      fip: drop typedefs
      fip: use linux list implementation
      fip: use uuid_equal() and uuid_is_null()
      fiptool: do not typedef structs
      fip: add fip_ prefix
      fip: add fip_image_open()
      ARM: k3: r5: add USB DFU and eMMC boot support
      ARM: am625-sk: enable 32k crystal
      mci: am654: parse generic mmc node properties
      ARM: k3: limit eMMC frequency to 26MHz
      ARM: k3: add eMMC barebox update handler
      ARM: am625-sk: put environment on eMMC when booting from it
      serial: omap: Use ttyS as Linux console name
      ARM: k3: remove beagleplay FIT image
      ARM: am625-sk: cleanup board entry
      ARM: beagleplay: cleanup board entry
      ARM: k3: Add k3-r5_defconfig

 Documentation/boards/ti-k3.rst        |  47 +++++++
 arch/arm/boards/am625-sk/Makefile     |   2 +-
 arch/arm/boards/am625-sk/board.c      |  35 +++++
 arch/arm/boards/am625-sk/entry.S      |  29 ----
 arch/arm/boards/am625-sk/lowlevel.c   |  13 +-
 arch/arm/boards/beagleplay/Makefile   |   1 -
 arch/arm/boards/beagleplay/entry.S    |  29 ----
 arch/arm/boards/beagleplay/lowlevel.c |  18 +--
 arch/arm/configs/k3-r5_defconfig      |  43 ++++++
 arch/arm/dts/k3-am625-beagleplay.dts  |   4 +
 arch/arm/dts/k3-am625-sk.dts          |  19 +++
 arch/arm/mach-k3/Kconfig              |   1 +
 arch/arm/mach-k3/Makefile             |   1 +
 arch/arm/mach-k3/bbu.c                |  77 +++++++++++
 arch/arm/mach-k3/common.c             |  36 +++++
 arch/arm/mach-k3/r5.c                 | 232 +++++++++++++++++++++++++++-----
 commands/fiptool.c                    | 126 +++++++++---------
 drivers/mci/am654-sdhci.c             |   1 +
 drivers/serial/serial_ns16550.c       |   4 +-
 images/Makefile.k3                    |   4 -
 images/k3-am625-beagleplay.its        |  29 ----
 include/fiptool.h                     |  50 ++++---
 include/mach/k3/common.h              |  22 ++++
 lib/fip.c                             | 242 ++++++++++++++++++++++++++--------
 24 files changed, 781 insertions(+), 284 deletions(-)
---
base-commit: ac5af75a4067dd3f795ca982c3edeb75012f7a98
change-id: 20250205-k3-emmc-eaa3df9f3ffd

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



