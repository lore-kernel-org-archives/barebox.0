Delivery-date: Thu, 13 Aug 2026 17:28:51 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMQ-002ikh-2h
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:28:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0030C201FC9
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f5ay4jkH;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nz5Nb451;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=asgxCpO/wIfwP6s6gJ3RQm0PYy2h3jttHUizBLsLCUU=; b=f5ay4jkHLoExpa/EV8YoGaVSWM
	3WPGRcYryiWKID58BssG4FOy9De+wqCKBRa2F86ADrfk9fbV69KfykFj+6W4bqC8Dhmg+WkjeZEjd
	+UjjJymHyG/UeTMOXy5IQ1F3xGNZ64AtQT6uijzuaGUrqd7Dmzft2OaAreKc2zKZbkYnpXpuRMUkT
	n35a7PckB4KzBPWeVd2N2sBlCF89olweATJgsWwP6ss/WQVtfLjJrHwVloX+nEa5ijXli4beZyX/0
	YnXzqYZdH9sYH7VAPfQdcaBAbteg4KD83HIk6SMh0oh2hwuRO0UMYlzt9cHfED2ivie5ZYvRhP09k
	vaY6Do5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK9-000000010VM-13Ig;
	Thu, 13 Aug 2026 15:26:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK6-000000010T4-2qnq
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5EA5140BE0;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40EDDC19425;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=Cm86OkLjWiykGg4VbTz9gKhOQUEVv9sfVvUGWAlYX30=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=nz5Nb451uUuoR5gvoPBuf/pd5LMdaWJuwR48LpWa0oGBY4+DUuInZtxFKifXORVfV
	 RkZejeQtIMhURUI1Hso3Kj+IEEe88ZjfjICQ2f4YFyyNvqzxHIct7IRtgoyXbVU5wy
	 Xh1wQWqC5VlgNmf1vTv2CY0OYK2/PycULPXn6jqAYkWHwNJxR5lZSfq1hx6ei1AfLp
	 XIvTsTfCE1AsU3ye/G4z4flzxhl3mnBtNQKWaLCL3hZEFu6ZMJxiDjylYbj1RO47aS
	 7CG5LNwVdysxgeJUMLyFIx+TtZUl3ayr2MuPQ3Y3bKZMjMBow2IFREX/WAyWFtv36V
	 xlwAfGJ0P0Dsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E6BAC5CFCF;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Subject: [PATCH v4 00/14] (no cover subject)
Date: Thu, 13 Aug 2026 17:26:20 +0200
Message-Id: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABzifWoC/33N3QqCMBgG4FuRHbeYm/uxo+4jOnB/uiiNzaQQ7
 71Ng0Sikw9e+N7nHUEw3pkADtkIvBlccF0bQ7HLgGqqtjbQ6ZgBRpghjgn0bY7wfAu4dKFmTBi
 JSo2sBbF498a654yezksOD3kxqk9S+mhc6Dv/mleHPP39HRhyiCBnpdCYaisYO9a3yl33qruBN
 DDgNSF+EjgSlSG5pVRyqcSWIF9CfMpbgkTCciZohXlpJV0T0zS9ASyXnJxMAQAA
X-Change-ID: 20260723-rn102-rn104-series-d668eb09d0ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=4804;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=Cm86OkLjWiykGg4VbTz9gKhOQUEVv9sfVvUGWAlYX30=;
 b=LR2uTe9KUunAIQKMONUWv3nywpW+ZYSenQM0TfCdfaJGYQkUS73CoUCpgi4ejFTbNbGEP8VbB
 gH86X8f5pn0BK0mogBDXqRTKEZC1+7M/Y4S1TZi6OFdrA+uQDtWzdak
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xbcsyiuj7isfw7zn1mzjwzknxqkmf6w3
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 0030C201FC9

Changes in v4:
	- applied proposed changes in patches 01/15 and 02/15
	- Cleaned patch 08/15
	- Fixed PCI vendor ID handling in patch 09/15
	- Moved ahci_devices list introduction to patch 13/15
	- Removed unused AHCI shutdown helpers (patch 14/15 in v3)

Link to v3:
https://patch.msgid.link/20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com

ARM: mvebu: add Netgear RN102/RN104 support and related drivers

This series adds full barebox support for the Netgear RN102 and RN104
NAS platforms based on the Marvell Armada 370 SoC. Both devices share
the same hardware architecture, differing mainly in the number of drive
bays and board‑level integration.

The series introduces:
 - lowlevel initialization code for RN102 and RN104
 - board support files and environment integration
 - barebox‑specific device tree overlays for both platforms
 - image generation support and defconfig updates
 - fan controller subsystem and G76x driver
 - fan control command and Kconfig/Makefile integration
 - Marvell‑specific EHCI host controller driver
 - USB/EHCI fixes
 - ATA/AHCI improvements

The goal is to provide complete bootloader support for these NAS
devices, enabling reliable initialization of storage, USB, fan control,
and board‑specific peripherals. The patches have been tested on RN102.

Changes in v3:
 - cleaned up whitespace and indentation issues
 - squashed fan command integration into a single commit
 - removed noisy or unrelated changes
 - improved commit messages and structure

Link to v2:
https://patch.msgid.link/20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>

---
Luca Lauro (14):
      ARM: mvebu: add Netgear RN102 support
      ARM: mvebu: enable RN102 in mvebu_defconfig
      ARM: mvebu: improve Netgear RN104 support
      ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
      drivers: fan: add fan subsystem, core API and G76x fan controller driver
      commands: add fan control command
      usb: ehci: add Marvell EHCI host controller driver
      usb: ehci: initialize periodic_queue_dma
      ata: ahci: add PCI AHCI and Marvell 9170 controller support
      ata: ahci: fix zero-length DMA handling
      ata: ahci: add helper for ATA commands without data
      ata: ahci: improve AHCI port bring-up sequence
      ata: ahci: add FLUSH EXT and STANDBY IMMEDIATE support during shutdown
      ata: ahci: cleanup legacy code and remove unused paths

 arch/arm/boards/Makefile                   |    1 +
 arch/arm/boards/netgear-rn102/Makefile     |    4 +
 arch/arm/boards/netgear-rn102/board.c      |  219 +++++
 arch/arm/boards/netgear-rn102/lowlevel.c   |   58 ++
 arch/arm/boards/netgear-rn104/Makefile     |    1 +
 arch/arm/boards/netgear-rn104/board.c      |  170 ++++
 arch/arm/boards/netgear-rn104/lowlevel.c   |   37 +-
 arch/arm/configs/mvebu_defconfig           |    1 +
 arch/arm/dts/Makefile                      |    1 +
 arch/arm/dts/armada-370-rn102-bb.dts       |   96 +++
 arch/arm/dts/armada-370-rn104-bb.dts       |   85 +-
 arch/arm/mach-mvebu/Kconfig                |    4 +
 commands/Kconfig                           |    7 +
 commands/Makefile                          |    2 +
 commands/fan.c                             |  286 +++++++
 drivers/Kconfig                            |    1 +
 drivers/Makefile                           |    1 +
 drivers/ata/ahci.c                         |  325 ++++----
 drivers/ata/ahci.h                         |    1 +
 drivers/fan/Kconfig                        |   35 +
 drivers/fan/Makefile                       |    8 +
 drivers/fan/fan.c                          |  180 +++++
 drivers/fan/i2c_fan_controllers/Kconfig    |    6 +
 drivers/fan/i2c_fan_controllers/Makefile   |    5 +
 drivers/fan/i2c_fan_controllers/g76x.c     | 1185 ++++++++++++++++++++++++++++
 drivers/fan/other_fan_controllers/Kconfig  |    7 +
 drivers/fan/other_fan_controllers/Makefile |    3 +
 drivers/fan/spi_fan_controllers/Kconfig    |    1 +
 drivers/fan/spi_fan_controllers/Makefile   |    3 +
 drivers/usb/host/Kconfig                   |    7 +
 drivers/usb/host/Makefile                  |   13 +-
 drivers/usb/host/ehci-hcd.c                |    2 +
 drivers/usb/host/ehci-marvell.c            |  228 ++++++
 images/Makefile.mvebu                      |   13 +-
 include/fan/fan.h                          |   94 +++
 include/fan/i2c_fan_controllers/g76x.h     |   37 +
 include/mach/mvebu/debug_ll.h              |    2 +-
 37 files changed, 2947 insertions(+), 182 deletions(-)
---
base-commit: f9cc366e5b67680473e4ab7837eeb27bf1b5a567
change-id: 20260723-rn102-rn104-series-d668eb09d0ff

Best regards,
--  
Luca Lauro <famlauro93l@gmail.com>




