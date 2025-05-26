Delivery-date: Mon, 26 May 2025 16:19:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgF-000XuG-1y
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgE-0002JZ-CU
	for lore@pengutronix.de; Mon, 26 May 2025 16:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wPatrsj6GRQxTFrt3QrUr82pPBJ+ofqPWSipImzEmDs=; b=vvgJmxplcJ8Z06XdqC0K5dYuc/
	+Hvete99PQ8bSj3FwnQcX6UJCeGKf5aB04WzWvmBCxf3Y5SIMOYgNwemvdrZhz93Dz1ogWvcFqJhf
	il4qtdVt9pHTlKqzGj1SmrUxjnqROOnORwiYd71KGpp1YXsgZBkrOvDLw8p3iUsyKtFfwPiZauFvk
	Qiet5+qLlSJbf0zID1pQjtikcj3e3NukENPWVsxZaQrvbDsR4bTk6JkMkx+Cr6WAh5z8Zo1FAC1Wn
	nsL9ltZfH+UXZ9YmkUx7U9I7NvRWRYdlGb9Or0B331Kxgw4z/6v3qD5yZWhDsoxD6plplB6ZewIyB
	hbqggOJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfn-00000008zEu-22wl;
	Mon, 26 May 2025 14:19:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfh-00000008z93-1u0X
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:19:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uJYfd-0001p8-PX
	for barebox@lists.infradead.org; Mon, 26 May 2025 16:19:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 26 May 2025 16:19:08 +0200
Message-Id: <20250526141914.185212-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_071921_508463_47583FA9 
X-CRM114-Status: UNSURE (   8.98  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] resource: record memory type/attrs on all SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When running as EFI loader, barebox is expected to provide a virtual
memory map that describes the memory regions known to barebox as well as
attributes like whether regions are write-back cached (usable as normal
memory) or reserved (e.g., for OP-TEE).

>From a security point of view, it's useful to have this information
always to inform MMU attributes, so let's make it mandatory.

v1 -> v2:
  - replace !IS_ERR check with !NULL check for __request_sdram_region

Ahmad Fatoum (6):
  memory: export inside_barebox_area
  resource: record EFI memory type and attributes
  resource: add MEMATTRS_ definitions for common attribute sets
  drivers: tee: optee: separate local variables for each resource
  resource: supply memory type/attrs on all SDRAM requests
  resource: retire IORESOURCE_BUSY in favor of resource::type

 arch/arm/cpu/armv7r-mpu.c       |  5 ++-
 arch/arm/cpu/bootm-fip.c        |  3 +-
 arch/arm/cpu/cpu.c              |  3 +-
 arch/arm/cpu/mmu_32.c           | 13 ++++--
 arch/arm/cpu/mmu_64.c           |  7 ++-
 arch/arm/cpu/start.c            |  3 +-
 arch/arm/lib32/bootm.c          | 18 +++++---
 arch/arm/lib32/bootz.c          |  4 +-
 arch/mips/lib/cpu-probe.c       |  3 +-
 arch/powerpc/mach-mpc5xxx/cpu.c |  3 +-
 arch/powerpc/mach-mpc85xx/cpu.c |  2 +-
 arch/riscv/boot/start.c         |  2 +-
 arch/riscv/cpu/core.c           |  2 +-
 commands/iomemport.c            |  2 +-
 common/bootm.c                  |  9 ++--
 common/elf.c                    |  3 +-
 common/memory.c                 | 57 +++++++++++++++++-------
 common/memtest.c                |  4 +-
 common/oftree.c                 |  2 +-
 common/pe.c                     |  4 +-
 common/uimage.c                 |  6 ++-
 drivers/tee/optee/of_fixup.c    | 33 +++++++-------
 fs/pstore/ram_core.c            |  6 ++-
 include/efi.h                   | 37 +--------------
 include/efi/memtype.h           | 79 +++++++++++++++++++++++++++++++++
 include/linux/ioport.h          | 67 +++++++++++++++++++++++++++-
 include/memory.h                | 33 +++++++++++---
 lib/Kconfig.hardening           |  7 +++
 lib/libfile.c                   | 13 +++++-
 pbl/handoff-data.c              |  3 +-
 30 files changed, 320 insertions(+), 113 deletions(-)
 create mode 100644 include/efi/memtype.h

-- 
2.39.5



