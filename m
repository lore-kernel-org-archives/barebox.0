Delivery-date: Mon, 02 Jun 2025 15:29:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E8-002yVx-2H
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:29:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E6-0007fg-FE
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:29:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qEMrVdSWLQKBOEg8eieE+B9cGx0SIG0xdcGGUuiOvNg=; b=mj9ZsBNQOB5vzOjeDvIcb8kWrS
	pbYAauwz3gWrY+WAd+6Yh1IgdOp5D37q6nXv1f2hV3ZoKAFgP5s7RDJo0uKUfNIa2HEypRDHCgnfL
	IgqIMSN07Qvbf2lIpRm6obvNxSDJiKw3GU1xttiSAoJq9kGJbZL/8oBrSDjRcWhmf3b+zWfgmZuO3
	jQr+9m8/GrUv7ijDL5rySdFz1YkSsn55zb8mPGupuV3nPlUfql0SRNnTSobAQd8DenOkONR+OAYVV
	K3E43hFq/iJSKyGejYQ5ZFV5DORQHBDg1FfSs3jPnLeDnUcemkb3dQw8mSlDeqqQMa2w0RKAOd5F9
	cpsRysBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Db-00000007SuE-3v9G;
	Mon, 02 Jun 2025 13:28:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5DS-00000007SrC-0rwH
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:28:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-0007AB-V3; Mon, 02 Jun 2025 15:28:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-001Slm-2K;
	Mon, 02 Jun 2025 15:28:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-009BwG-24;
	Mon, 02 Jun 2025 15:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 15:28:34 +0200
Message-Id: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAKnPWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMwMj3eSi1MSS1LwyXUPDZBMjc0tDQ7MUEyWg8oKi1LTMCrBR0bG1tQB
 xoTVPWgAAAA==
X-Change-ID: 20250602-createnv-11c4279116d4
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748870916; l=2135;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tshWpGQ4Dycjuoawwb+PWXHawZ9ruwPQNSBsDnR4wVA=;
 b=bxtuMQx8lG9MabB30WcauVwOpfylm4dInZ6V0zxiPa5fQE6bLVSBreOaM1bfNH6JAULwM6bOe
 Ux43TJ8Xg8rCNYo+hU2bxLDeNd9iSYjgZvQZxHL/XM6jEHEpV5B98lT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_062838_278127_845AED47 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] add createnv command to create environment partition
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
 common/partitions.c     |   9 +++
 common/partitions/efi.c |  21 ++++--
 drivers/mci/Kconfig     |  21 +++++-
 drivers/mci/mci-core.c  |   6 +-
 fs/devfs-core.c         |  17 ++++-
 fs/fs.c                 |   6 +-
 include/driver.h        |   5 ++
 include/mci.h           |   1 +
 include/partitions.h    |   6 ++
 15 files changed, 279 insertions(+), 19 deletions(-)
---
base-commit: c31204804b17f2c07608329a8df6d88e4196cb73
change-id: 20250602-createnv-11c4279116d4

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



