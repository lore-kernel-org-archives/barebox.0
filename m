Delivery-date: Tue, 28 Jul 2026 19:44:16 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wolqh-003roL-2I
	for lore@lore.pengutronix.de;
	Tue, 28 Jul 2026 19:44:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AC27F201D49
	for <lore@pengutronix.de>; Tue, 28 Jul 2026 19:44:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="vbAxZF/E";
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=MxNpvnDv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RyZ4w3IoWA+NkP45kUec6PtPO+DJBKuSyq/JDEUgAis=; b=vbAxZF/EpJM0UKRonLLK2KTIMZ
	dWlC2eDWI5iNe9AdJ40kcCEOIZb4DvDAEP+AcJwh8IdtCj1T9p2fwFKWT/zFyMcLHkAvVpBrJYMu+
	Ly2xGY6tzxwa6i1Nng/416GkJsVasjTJI90SCA/ztxP4XeoRU061QZD/iEtfctdGIh0/S/drDwsFv
	PrMOB/GuLo67utWab0X1b2AcxFBZeedKG0rir6Jb4CnOBLqA4OelQU/BKLbHSWsMRn6xcoq7CKR8F
	KgAWB+gvUpQ40/QteGDcxdjYsqdLLJ+3gY9MkaPJqpRGgXWj7vdPbHDQlDxoMN094PWtuI0nRay+P
	ilhd57pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolpA-0000000613S-0nes;
	Tue, 28 Jul 2026 17:42:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp8-0000000611I-0w9X
	for barebox@lists.infradead.org;
	Tue, 28 Jul 2026 17:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8927C60A94;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E983C2BCC6;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785260557;
	bh=H00v4HUVKl9uzNkmyI0LrvhRsTZAVpRTj0v61hqhmGE=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=MxNpvnDvgJPtW5coXWkSwaqyfMvg+5PN7iwBl6el66IMQbBXybtsGlqkXO11q3KoT
	 kF+Eqz49B7vg+a6jOh/XfnYYfmuvbK01Ahw2yDjH6u3CaHHAV5Qo1rvlOhCBhGfIRZ
	 uFSUw9s/HONQa4mvaD9982USLzVIWG4wmHv+aqMz8Fl9zy9yhag2R+sSmDxeyMT//6
	 XLN1nKh33C592ntMNlyDaSrGii0aJ3WnBczfXQnJI6RXtWZYmFmiY2sdC+7fHDsny9
	 D8uLLqY8ZpcSKQ3FHW9S0e2HEY4OwznVa+gRQl5Cn4ABK6Kl286INjRRyS/pD9ONb4
	 5akELDXBqz1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A0B1C54F54;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Subject: [PATCH v2 00/10] ARM: mvebu: add Netgear RN102/RN104 support and
 related drivers
Date: Tue, 28 Jul 2026 19:43:12 +0200
Message-Id: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADDqaGoC/32NQQ6CMBREr0L+2pq2agFX3sOwAPoL30hrWiQaw
 t1ty97NJC+ZN7NCQE8Y4Fqs4HGhQM5GkIcC+rG1AzLSkUFyqXgpT8xbwWXOM9tdppWqsOO15sZ
 AFF8eDX3y6L3ZOby7B/ZzWkqNkcLs/De/LiL1/h4sgnFWqrrS8qJNpdRtmFp6Hns3QbNt2w9o7
 A1BxgAAAA==
X-Change-ID: 20260723-rn102-rn104-series-d668eb09d0ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785260594; l=5094;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=H00v4HUVKl9uzNkmyI0LrvhRsTZAVpRTj0v61hqhmGE=;
 b=q/LCC4wvwWp5E3trRttpK7jA44NzAgvj2cX7aD8G6Hxr2MiUkLvVyJxflpJzg51qYqW1wStO8
 f6PyKiUQZA1DJDZ/KUNixbFXVsqj23Syj4WnBq0kTyxrE4PVOc7siOn
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
X-Stat-Signature: igwpxpx3dtowu4r8sq3x3n13hp8hutwa
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: AC27F201D49

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
Changes in v2:

Hi Sascha,

thanks for the review of the v1 series.

This v2 reorganizes the series to make it clearer and easier to review.
Platform‑specific patches have been grouped into thematic commits, noisy
changes should have been removed, and commit messages have been rewritten 
to better describe the functional modifications.

The AHCI patch has been cleaned up and clarified, the EHCI patches now
contain only functional changes, and the fan framework integration has
been consolidated. The previous “USB/AHCI integration” patch has been
squashed into the relevant commits.

No functional changes have been introduced beyond what was already
present in v1.

Thanks again for your feedback,
Luca Lauro

Link to v1:
https://patch.msgid.link/20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>

---
Luca Lauro (10):
      ARM: mvebu: add Netgear RN102 support
      ARM: mvebu: enable RN102 in mvebu_defconfig
      ARM: mvebu: add Netgear RN104 support
      ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
      drivers: fan: add fan framework and API
      commands: add fan control command
      commands: integrate fan command into Kconfig and Makefile
      usb: ehci: add Marvell EHCI host controller driver
      usb: ehci: minor fixes for Marvell compatibility
      ata: ahci: add PCI AHCI support and Marvell-specific fixes

 arch/arm/boards/Makefile                         |    1 +
 arch/arm/boards/netgear-rn102/Makefile           |    4 +
 arch/arm/boards/netgear-rn102/board.c            |  243 +++++
 arch/arm/boards/netgear-rn102/lowlevel.c         |   58 ++
 arch/arm/boards/netgear-rn104/board.c            |  182 ++++
 arch/arm/boards/netgear-rn104/lowlevel.c         |   43 +-
 arch/arm/configs/mvebu_defconfig                 |    1 +
 arch/arm/dts/Makefile                            |    1 +
 arch/arm/dts/armada-370-rn102-bb.dts             |   80 ++
 arch/arm/dts/armada-370-rn104-bb.dts             |   75 +-
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
 drivers/usb/host/ehci-hcd.c                      |   23 +-
 drivers/usb/host/ehci-marvell.c                  |  228 +++++
 dts/src/arm/marvell/armada-370-netgear-rn102.dts |  114 ++-
 dts/src/arm/marvell/armada-370-netgear-rn104.dts |  173 ++--
 images/Makefile.mvebu                            |   13 +-
 include/fan/fan.h                                |   94 ++
 include/fan/i2c_fan_controllers/g76x.h           |   37 +
 include/mach/mvebu/debug_ll.h                    |    2 +-
 38 files changed, 3354 insertions(+), 428 deletions(-)
---
base-commit: f9cc366e5b67680473e4ab7837eeb27bf1b5a567
change-id: 20260723-rn102-rn104-series-d668eb09d0ff

Best regards,
--  
Luca Lauro <famlauro93l@gmail.com>




