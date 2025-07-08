Delivery-date: Tue, 08 Jul 2025 22:09:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcg-00FTJk-1S
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 22:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcf-0002Ft-Sm
	for lore@pengutronix.de; Tue, 08 Jul 2025 22:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DA69lGZd4evP/BqiiwoflcwUbOUx8rbVX3BidK4Jq7M=; b=Shjgs4HVXmUtLpIPff9V/mIXLn
	5HAJLaYKCnrV7iGUu6jDjbUHVCCNQmvosciao+MoG3sbytKcEikr80TaMKIU4isAUv7XiI2y41shS
	XwGdJIeA/7IBW5H/UTHpjgoWVTjmGqQ64Xj42Vhoo7xb7ZpNaz+rfUSqrZJl6Xc9qxTCrWMgjh3Sl
	MWgOW0lbEfzVdqSiFvZNyB5WDhOujH6XkKNh0eQdGEyFV69rLiyHnc1qs1N49e1xpJl0V4takkf92
	nwIn7vxvF4wCRbVc/NNQrdr+vIN+BsWMrvGig0yK1l8u2a/2inMJoWz7TWK/o6Q+q0722Jlm29KG0
	odxDe6cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEc5-00000006Sly-1vQG;
	Tue, 08 Jul 2025 20:08:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE6o-00000006M30-2r5R
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 19:36:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uZE6k-0008Qx-Kg; Tue, 08 Jul 2025 21:36:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Dang Huynh <danct12@riseup.net>
Date: Tue,  8 Jul 2025 21:35:56 +0200
Message-Id: <20250708193600.758772-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123606_718124_7E84B6EA 
X-CRM114-Status: UNSURE (   8.48  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] test: add/document pytest --graphic, --env, --fs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The --env and --fs options are very useful for passing stuff into QEMU
without having to assemble images or type stuff into the console.

Document them and add a new --graphic option that spawns either a Bochs
ISA, PCI or a ramfb graphic device depending on the target.

Ahmad Fatoum (4):
  test: update requirement to Labgrid v25.0
  test: drop now superfluous extra_args
  test: document pytest --env and --fs options
  test: add support for pytest --graphic

 Documentation/boards/emulated.rst             | 21 +++++++++++++++++++
 conftest.py                                   | 20 +++++++++++++++++-
 test/Containerfile                            |  2 +-
 test/arm/a15@multi_v7_defconfig.yaml          |  2 +-
 test/arm/a9@multi_v7_defconfig.yaml           |  2 +-
 .../qemu-raspi0@multi_v5_v6_defconfig.yaml    |  2 +-
 .../qemu-raspi1ap@multi_v5_v6_defconfig.yaml  |  2 +-
 test/arm/qemu-raspi2b@multi_v7_defconfig.yaml |  2 +-
 test/arm/qemu-raspi3b@multi_v8_defconfig.yaml |  1 +
 .../qemu-sabrelite@multi_v7_defconfig.yaml    |  1 +
 test/arm/virt@multi_v7_defconfig.yaml         |  2 +-
 test/arm/virt@multi_v8_defconfig.yaml         |  2 +-
 test/mips/be@qemu-malta_defconfig.yaml        |  2 +-
 test/mips/qemu-malta64el_defconfig.yaml       |  2 +-
 test/mips/qemu-maltael_defconfig.yaml         |  2 +-
 test/openrisc/generic_defconfig.yaml          |  2 +-
 test/riscv/qemu-virt64@rv64i_defconfig.yaml   |  2 +-
 test/riscv/qemu@virt32_defconfig.yaml         |  2 +-
 test/riscv/sifive@rv64i_defconfig.yaml        |  2 +-
 test/strategy.py                              |  4 ++--
 test/x86/pc@efi_defconfig.yaml                |  1 +
 test/x86/q35@efi_defconfig.yaml               |  1 +
 test/x86/virtio@efi_defconfig.yaml            |  1 +
 23 files changed, 62 insertions(+), 18 deletions(-)

-- 
2.39.5



