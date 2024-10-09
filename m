Delivery-date: Wed, 09 Oct 2024 08:08:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsP-0027dX-03
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:08:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsO-0007Iw-CF
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:08:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TbHuTQsc8fT1dyb0OhMeIUEsfqf1TTnqEtNGFmEd23c=; b=M+opvhC11BOJTXlGwsmDJFCWzk
	HGLuF+eZQk1sW6sgHyxxmSD55U0JeM38h474xQt+LFu2DG0loAcOzhKLkz+g/QpAwLTJ2zTkZxM9G
	79CpjEfCgmllz7BV1uRP4VGefzB9/FYr/1YIptWdRH4JvoDnwkfUKC09Rm/ZsQVI7gWaVoFjJhj7p
	bwK+/veSqeoBUPxAGCWftcPuRS2MRRAAl5QMZk2EqMJ5np1q06MupLr3mxbnzcE/OZ1c8Z4Dfwx3+
	I4G/F9FP/uH3IRzQ2qwIb3Feb/3b6WRYGOO9XMtXKiZ6Y4wWaAEEvwQVSthtx6mjYmeZ6iBY4NeXK
	4U2PnUYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPrw-000000082lu-2t8M;
	Wed, 09 Oct 2024 06:08:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpI-000000082IU-2C0o
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vC-5a; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-000XZs-PK; Wed, 09 Oct 2024 08:05:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2G;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Wed,  9 Oct 2024 08:05:06 +0200
Message-Id: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230536_582156_6926E09F 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH 0/5] ARM64: make barebox compatible with KVM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It was noticed by a patch series[1] for OpenEmbedded-core that
neither barebox nor U-Boot reach their shell when tested on a native
AArch64 server with Qemu running with KVM enabled.

After investigation and help from the Qemu/KVM maintainers[2], it turns
out that software that wants to run under KVM needs to take care what
instructions it uses for MMIO accesses:

Accessing a MMIO region will trap and KVM will check the exception
syndrome register and extract the information it needs to emulate the
access.

However, not all instructions that access memory can be described by
this Instruction Specific Syndrome. Notably, the pre- and post-index
variants of ldr/str don't have valid syndromes on trap; this is because
the instruction not only access the memory specified by the register,
but also increments the address in the register and KVM would need to
decode these instructions to be able to emulate that, which it currently
does not.

Linux doesn't suffer from this issue, because it implements readl/writel
in assembly and makes sure they only use KVM-friendly instructions.

This series does the same for barebox and also fixes other crashes
and slow-downs related to I/O that were noticed along the way.

[1]: https://lore.kernel.org/all/b77f2c6737c330ef9ecce325d50a4aaa25b3e536.camel@linuxfoundation.org/
[2]: https://lore.kernel.org/all/89f184d6-5b61-4c77-9f3b-c0a8f6a75d60@pengutronix.de/

Ahmad Fatoum (5):
  ARM64: io: implement I/O accessors in assembly
  ARM64: board-dt-2nd: grow stack down from start of binary
  mtd: cfi-flash: use I/O accessors for reads/writes of MMIO regions
  ARM64: mmu: flush cacheable regions prior to remapping
  virtio: don't use DMA API unless required

 arch/arm/cpu/board-dt-2nd-aarch64.S |   2 +-
 arch/arm/cpu/mmu_64.c               | 105 ++++++++++++++++++++++++++--
 arch/arm/include/asm/io.h           |   5 +-
 arch/arm/include/asm/io64.h         |  99 ++++++++++++++++++++++++++
 drivers/mtd/nor/cfi_flash.c         |   2 +-
 drivers/mtd/nor/cfi_flash.h         |  15 +++-
 drivers/virtio/virtio_ring.c        |  85 +++++++++++++++++++---
 include/linux/virtio_ring.h         |   1 +
 8 files changed, 293 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/include/asm/io64.h

-- 
2.39.5



