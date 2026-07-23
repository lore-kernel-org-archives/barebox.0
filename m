Delivery-date: Thu, 23 Jul 2026 16:02:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu08-001zET-33
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CD872028BC
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g+54nbe5;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="TtHBlO/u";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2wuQKNwF/5vuGGYHGZ/IOSp1Fy+9FGXdGcUqa8f9pRc=; b=g+54nbe5tR7fJx0Zpo8inokkl9
	JH59R7ooOkZz7Ll632YqYBGDrfsqV9jGC3NblEtbxGTJIFLIFaR1EhqaJD08AlzKGdLYClCAwMLfi
	PX8rwHPaxQCYXjtHpksdZyLKSp6BAGJRz9OLlfn3wHQrZXVPzPzKnM4FeWPhPhpsnifUZwbmlhBiQ
	9+jZo73ezNimKW4S9gmplENxrcRdYm21Xb9TNVeheolkXa7BVQPUQyim69V/KafQFNN/sOS7Olfx7
	HZDD39c8is/0un2l92ouTZocwx8q4wl0XhW5N8CPOMhbYkE4IQhv6M/gEpKUhoRJgrsE/pHXLFkFX
	yUoR1M7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvB-0000000EQNX-22mk;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtv9-0000000EQLN-3FoY
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3C2D260A62;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5886C2BCC7;
	Thu, 23 Jul 2026 13:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815026;
	bh=IglEVpr8truAqAYGrx5gD4CwPENqWf02m5FMJQ9nkLM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=TtHBlO/u4BnzNEwP7gb6QkzukNYZbx6PF9OjnKp7W1bR4X1w6Beug/iaCUFobElXy
	 Tl3n8kVEN+upqFLAM/sOy2uyjPTrydKELACqwXjV1VDfDEIgLeZxEUgWU8ldUvVJMu
	 ALhAUwjCOtC859PFg8ifOlMLI2oRTzts9v1Lv20DEp9vCPyaS5KbhZKHd0JO+K4Fs2
	 Z6ePK8vHqsvEFUROzgv7V06h1x+nFGD1U5N6VAbvZJCiD62os1vK+tMccs59iOmZcE
	 SkAYEw59vZ2dCfpJ+QzHd0WwzAsP+BlxDz0ZAD/zthEj+HlkISTRiAcWDonZiKERhB
	 lhFilT5oz+xFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB017C531CB;
	Thu, 23 Jul 2026 13:57:06 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Subject: [PATCH 00/19] ARM: mvebu: add Netgear RN102/RN104 support and
 related drivers
Date: Thu, 23 Jul 2026 15:57:38 +0200
Message-Id: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANMdYmoC/yWMyw5AMBAAf0X2rMkqqceviAO6ZR1KWkTS+HfFZ
 ZI5zATw5Jg8NEkARyd7Xm2ULE1gnHs7kWAdHSRKhaXMhbMZyo+F+FuhlapowFqjMRDDzZHh65u
 23e/+GBYa9/cE9/0APg1Ri3YAAAA=
X-Change-ID: 20260723-rn102-rn104-series-d668eb09d0ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=4603;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=IglEVpr8truAqAYGrx5gD4CwPENqWf02m5FMJQ9nkLM=;
 b=L/rI4hACLoXK4la8mDDw0rWeikJ/8nrBlfWdYD2oorx1Zn00J01vp7oZJA6IK450OJTlGZE9V
 nhxVLXoSR88BnF6O3+K2a1wwlxybCpZfYMx2pBmJRrLLYCPWl6n7uOO
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
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[rebuild-series.sh:query timed out];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 0CD872028BC
X-Rspamd-Server: mx1
X-Stat-Signature: wah133ntbg8gyg9c1edspkg6ysasp3f9

This series adds full barebox support for the Netgear RN102 and RN104
NAS platforms based on the Marvell Armada 370 SoC. Both devices share
the same hardware architecture, with differences mainly in the number
of drive bays and the associated board-level integration.

The series introduces:
 - lowlevel initialization code for RN102 and RN104
 - board support files and environment integration
 - barebox-specific device trees for both platforms
 - image generation support and defconfig updates
 - fan controller framework and G76x driver
 - fan control command and Kconfig/Makefile integration
 - Marvell-specific EHCI host controller driver
 - AHCI/SATA fixes improving compatibility with Armada 370
 - USB/AHCI integration updates

The goal is to provide complete bootloader support for these NAS
devices, enabling reliable initialization of storage, USB, fan control,
and board-specific peripherals. The patches have been tested on
RN102 only.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>

---
Luca Lauro (19):
      ARM: mvebu: add board support for Netgear RN102
      ARM: mvebu: add lowlevel support for Netgear RN102
      ARM: dts: add barebox device tree for Netgear RN102
      ARM: dts: update RN102 Linux DTS
      ARM: mvebu: add Kconfig entry for Netgear RN102
      ARM: mvebu: add RN102 image support
      ARM: mvebu: enable RN102 in mvebu_defconfig
      ARM: mvebu: rn104: placeholder bay management
      ARM: mvebu: add lowlevel support for Netgear RN104
      ARM: dts: update RN104 Linux DTS
      ARM: mvebu: adapt RN104 image support
      ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
      drivers: fan: add fan framework and API
      commands: add fan control command
      commands: integrate fan command into Kconfig and Makefile
      usb: ehci: add Marvell EHCI host controller driver
      usb: ehci: minor fixes for Marvell compatibility
      ata: ahci: fixes and updates for Marvell SATA controller
      drivers: integrate USB/AHCI changes

 arch/arm/boards/Makefile                         |    1 +
 arch/arm/boards/netgear-rn102/Makefile           |    4 +
 arch/arm/boards/netgear-rn102/board.c            |  243 +++++
 arch/arm/boards/netgear-rn102/lowlevel.c         |   49 +
 arch/arm/boards/netgear-rn104/board.c            |  193 ++++
 arch/arm/boards/netgear-rn104/lowlevel.c         |   43 +-
 arch/arm/configs/mvebu_defconfig                 |    1 +
 arch/arm/dts/Makefile                            |    1 +
 arch/arm/dts/armada-370-rn102-bb.dts             |   13 +
 arch/arm/mach-mvebu/Kconfig                      |    4 +
 commands/Kconfig                                 |    7 +
 commands/Makefile                                |    2 +
 commands/fan.c                                   |  286 ++++++
 drivers/Kconfig                                  |    1 +
 drivers/Makefile                                 |    1 +
 drivers/ata/ahci.c                               |  656 ++++++------
 drivers/ata/ahci.h                               |    1 +
 drivers/fan/Kconfig                              |   35 +
 drivers/fan/Makefile                             |    8 +
 drivers/fan/fan.c                                |  180 ++++
 drivers/fan/i2c_fan_controllers/Kconfig          |    6 +
 drivers/fan/i2c_fan_controllers/Makefile         |    5 +
 drivers/fan/i2c_fan_controllers/g76x.c           | 1184 ++++++++++++++++++++++
 drivers/fan/other_fan_controllers/Kconfig        |    7 +
 drivers/fan/other_fan_controllers/Makefile       |    3 +
 drivers/fan/spi_fan_controllers/Kconfig          |    1 +
 drivers/fan/spi_fan_controllers/Makefile         |    3 +
 drivers/usb/host/Kconfig                         |    7 +
 drivers/usb/host/Makefile                        |   13 +-
 drivers/usb/host/ehci-hcd.c                      |   22 +-
 drivers/usb/host/ehci-marvell.c                  |  229 +++++
 dts/src/arm/marvell/armada-370-netgear-rn102.dts |  114 ++-
 dts/src/arm/marvell/armada-370-netgear-rn104.dts |  173 ++--
 images/Makefile.mvebu                            |   13 +-
 include/fan/fan.h                                |   94 ++
 include/fan/i2c_fan_controllers/g76x.h           |   37 +
 include/mach/mvebu/debug_ll.h                    |    2 +-
 rebuild-series.sh                                |   39 +
 38 files changed, 3257 insertions(+), 424 deletions(-)
---
base-commit: d6c5023bc58092b15a0cd8c01f708480efb26640
change-id: 20260723-rn102-rn104-series-d668eb09d0ff

Best regards,
--  
Luca Lauro <famlauro93l@gmail.com>




