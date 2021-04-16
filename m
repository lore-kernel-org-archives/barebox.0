Delivery-date: Fri, 16 Apr 2021 08:27:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHwr-0000oK-53
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 08:27:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHwq-0007eT-CO
	for lore@pengutronix.de; Fri, 16 Apr 2021 08:27:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w6rsuE/7jYUuJtPHaatKPzXbUuYY9pgAO9s5u8qiwaE=; b=hXQIYccZVLMwQsDvv/pVZg3cE7
	CC+KbY6Ueg3TiA1Wi3UzSHHs6Ekj44TkJ1p9UxwBFfm36Dfhs5QaaL5IGVuLX3OUL9hGCDrmhA2bh
	WuOHLHZnxrGRusAb9PVwRQh7InjWGZZ7HTkQDd8Bioiracgy4aWoAomsWxc9QRw8UoL+dDdDTVq/F
	wHTqUj07RA2mWaRPJClNRzGZ8C5lzRudosT8mDCuVWglJY0PjcChLk+RFL+ybYslHpwsOC79LWjnZ
	K9bDgiOtwaiMdp9Wywe/YXyhOXY7kZYeqPrnbfZzIQVlYnoUQ5O17H+R+1jwUA0VrGuiaDLUSvZ0R
	JJAxIFAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXHvG-00123s-LW; Fri, 16 Apr 2021 06:25:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuN-0011ph-Dl
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 06:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=PXEh5Dv+vTcZMwh5zobi9dEiB9vETvVtPQn7Lpmm4VE=; b=kTaogoHCR8WGT2klBkVu2EIedM
 7eYpB4Nysm+2ljUtUHkWulqpi3u/D+maHW9hpaadGBtUK7+5pgoHVKnrOHsBj2l7u1sFPOLv+PSyu
 zW8qV4yMorp6lhGshoKGa1UISIpotkNQJkaDcaGfxjqf54H6stUDpJlfRUoOQ6jEDrHrBmpmnOVfE
 J1OtUNpZricIs2V9tUtke+GIyUY9dqxvXqQyfU40GpDqqHjqYNlbefur8nqi/9IJ7VH3qDPklyKfF
 /3Iz9yAO62KhZd5pXVymWewg6yyNChXFuvaEBvj7tQYfSHeJcYgEKZ0oWaD5xfNeXrURq0zgdxH8g
 9nVLn2+A==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuK-0097Eb-85
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 06:24:50 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 43FE31C0004;
 Fri, 16 Apr 2021 06:24:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 16 Apr 2021 08:24:32 +0200
Message-Id: <20210416062436.332665-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_232448_435768_73AB60E7 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] x86: add EFI PCI host and iTCO watchdog support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v1 is here:
https://lore.barebox.org/barebox/20191204125659.22506-1-a.fatoum@pengutronix.de/

Series tested with:
  * QEMU q35: ns16550 serial, iTCO and virtio-pci
  * Dell Latitude 7490: Bus enumeration works correctly

v1 -> v2:
  - add DMA helpers, so the new virtio-pci support is usable on x86 as
    well
  - add preassigned bus support, so already running PCI UEFI drivers can
    continue to function
  - handle zero size resources correctly
  - add iTCO watchdog support in new commit

Cheers,
Ahmad Fatoum (4):
  x86: add DMA support
  PCI: support PCI BIOS preassigned buses
  pci: add EFI PCI root bridge IO protocol driver
  watchdog: add support for Intel TCO watchdog timer

 arch/arm/include/asm/pci.h     |   7 +
 arch/mips/include/asm/pci.h    |   7 +
 arch/x86/Kconfig               |   1 +
 arch/x86/configs/efi_defconfig |   2 +
 arch/x86/include/asm/dma.h     |  36 +++-
 arch/x86/include/asm/pci.h     |   7 +
 drivers/efi/Kconfig            |   1 +
 drivers/pci/Kconfig            |   5 +
 drivers/pci/Makefile           |   1 +
 drivers/pci/pci-efi.c          | 342 ++++++++++++++++++++++++++++++++
 drivers/pci/pci-efi.h          | 343 ++++++++++++++++++++++++++++++++
 drivers/pci/pci.c              | 106 ++++++----
 drivers/watchdog/Kconfig       |  17 ++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/itco_wdt.c    | 346 +++++++++++++++++++++++++++++++++
 include/linux/pci.h            |   3 +
 16 files changed, 1187 insertions(+), 38 deletions(-)
 create mode 100644 arch/arm/include/asm/pci.h
 create mode 100644 arch/mips/include/asm/pci.h
 create mode 100644 arch/x86/include/asm/pci.h
 create mode 100644 drivers/pci/pci-efi.c
 create mode 100644 drivers/pci/pci-efi.h
 create mode 100644 drivers/watchdog/itco_wdt.c

-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

