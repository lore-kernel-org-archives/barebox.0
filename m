Delivery-date: Fri, 20 Jun 2025 12:47:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHc-009FrI-1F
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 12:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHb-0001ry-NO
	for lore@pengutronix.de; Fri, 20 Jun 2025 12:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hLeL1VjTr9CPHZJLAtzQEeYsPqtbyVMAMtfxoTQVwvg=; b=Cf+LQx4ntkf7TH1BUmRb/YOmSJ
	pmMBT4VekdEoSHRRSK99FUCU+GJcEtf7saCwVc9snhI1YD3XpflA8xCpzjWdpTHBo/bc5lHUEsqvb
	IbezkMnv8snjcKgtbO+JgALXVWCjAA/GEqjareJGsnZR4lro48PG/VEjvOjYzrdKZH6VdkpB696op
	muQg/5hWa8nJvelnryAO8INP7FYZ158TvLz9zN1+cXsxhByY/zFPEc3XRFDEP0ZKqatJeZ2Z4a7ld
	w4fi/0D6/9SAnKUWHSMx4PJxTpvahQjSNN1Lx2FJIuwta1olzHMb0hOzq4DSnv5oprscXG2plpyNz
	r+1ywI8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSZGz-0000000FNqD-0UgN;
	Fri, 20 Jun 2025 10:47:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYKy-0000000FFOl-3qkw
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 09:47:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-0001fH-Cu; Fri, 20 Jun 2025 11:47:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-004RPg-0H;
	Fri, 20 Jun 2025 11:47:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKu-005F2V-37;
	Fri, 20 Jun 2025 11:47:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Jun 2025 11:46:58 +0200
Message-Id: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABIuVWgC/23MQQ6DIBCF4auYWZcGULS66j0aFwYGnQ0YoMTGc
 PdS113+Ly/fCREDYYSpOSFgpkje1ZC3BvS2uBUZmdoguVS855LpgEtCl5kQupPDKERvOqj3PaC
 l46Jec+2NYvLhc8lZ/NY/SBaMM93KdrT2MSijnju69Z2Cd3TcDcJcSvkCyd/Hy6UAAAA=
X-Change-ID: 20250602-createnv-11c4279116d4
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750412824; l=2390;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NM486+oQ4MmUUtKpIPkZw/ecuegK2jXe2KjhCL6PPTA=;
 b=LUv6yB13W+A+iCVD4SxwUUGGeIMkwweTRIAg3OiuKT0B+qSr90b4I0NPLGKVaOs5SkuEsDqHl
 N5Sb04uRJXJDIH+ht4KXCsObOcQpcVH768XrEZgCRk9h6+cxxK8VP02
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_024708_962594_1C95A9F6 
X-CRM114-Status: GOOD (  15.82  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] add createnv command to create environment
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We want to move away from describing the barebox environment explicitly
in the device tree and instead motivate usage of GPT partitions for the
envrionment. This series creates a createnv command to facilitate this.
It creates an environment partition on the specified device and if
necessary also a GPT partition table. In the simplest case a "createnv"
without arguments will create a partition on the device barebox itself
booted from. Both the device and the size of the partition can be
specified on the command line.

As the first GPT partition as well as the GPT partition entries might
conflict with a barebox written on the device on certain SoCs this
series also includes patches to move the first partition up to the 8MiB
boundary leaving space for a barebox binary written onto the raw device.
On Some SoCs (i.MX7 and earlier) the GPT partition entries also collide
with the barebox binary, so these are moved up to just below the 8MiB
boundary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Move MCI_STARTUP_NONE to first entry to make it the default (Ahmad)
- make 8MiB offset for first usable LBA configurable (Marco)
- Link to v1: https://lore.barebox.org/20250602-createnv-v1-0-c3239ff875d5@pengutronix.de

---
Sascha Hauer (5):
      partitions: efi: calculate instead of hardcode gpt header fields
      partitions: Start partitions at 8MiB offset
      cdev: fix cdev_open_by_name() misuse
      commands: create createnv command
      mci: add option to detect non-removable cards during startup

 commands/Kconfig        |  18 +++++
 commands/Makefile       |   1 +
 commands/createnv.c     | 179 ++++++++++++++++++++++++++++++++++++++++++++++++
 commands/devlookup.c    |   4 +-
 commands/findmnt.c      |   2 +-
 commands/parted.c       |   2 +-
 common/partitions.c     |  45 ++++++++++++
 common/partitions/efi.c |  21 ++++--
 drivers/mci/Kconfig     |  21 +++++-
 drivers/mci/mci-core.c  |   6 +-
 fs/devfs-core.c         |  17 ++++-
 fs/fs.c                 |   6 +-
 include/driver.h        |   5 ++
 include/mci.h           |   1 +
 include/partitions.h    |   2 +
 15 files changed, 311 insertions(+), 19 deletions(-)
---
base-commit: b7a40f473de4de2307eabfa6a7a25be895ea1365
change-id: 20250602-createnv-11c4279116d4

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



