Delivery-date: Fri, 14 Jan 2022 17:54:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqQ-002DJw-0e
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqO-0004Tq-86
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUSC3NDNnE4bIRQvaprY5tvTx6fvoD7GJYlLLTbMUUs=; b=VLjC+3L4p7vIXH
	e5nID2Xn2fw/MawZTJjWWGkeQpMiZ/fJbU9KrGAj6QfwXX9dZ4ymZ0kD8ihbmp697kE6uxxDQSDmu
	4/EJEGVQloQOT3vP2x8WfZxCMnkm7CZamCpbZsNnPkj6Lz/rbFQrY/WhflV8vBElwMl7eoK8URvP6
	JTaisfflTocz6rCgo76FvKoP8Jf67TlKGmQ0WnFHol2KT0PioAb3roLiK8Za3nftE9Rjf6RLkAG2q
	gSmu+GIwOjDFL557HzfSHIkwEfhI7z9mibk1AG9Z78D+36Z/yCHVSRu1U1MVDOX/1Go3R3lnTxUJh
	WVA5r9SwK8ULX3kNKazg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pp3-009qaW-Vk; Fri, 14 Jan 2022 16:53:06 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGm-0J
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 7C52562854
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179144;
 bh=brDrOX+GXDmAN1XvOIjllEPchKXXCKJyUev9wVS9/Do=;
 h=From:To:Cc:Subject:Date;
 b=qzfXSHwYH2iVG8a4851m+uWYG2V9hVu9u4Q2gJTWf5jzinLzD+2J8i+f1RW05iukv
 T4OmAz14V8UowdTUJ2Y3f/fO7g/+Sg6xQZO8Ap8Dsi7yJV+Y7TB4zJIJiTWgVQDZaI
 n5B800HPyl58WeyGpElUomfJolBZwhDYx9yJbkp4=
Received: from fx304 (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 33C456284B;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <a21a.61e1aa47.d4e46.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx304.security-mail.net (Postfix) with ESMTPS id D63EA62854;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id B086227E0341;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 96D3F27E03A2;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 96D3F27E03A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179143;
 bh=0xLuoA741ADIonziqUZsC8OawEVxFttoHvTJiIZwIEs=;
 h=From:To:Date:Message-Id;
 b=rD8piP7g1m1v9Wqku9o5TV2pi1/PpDMum746oAOpL3U/DBxdCPSu7R6T0k5EI5zIZ
 a0ENZ1E04BhSlpOlGNECrsi6u83e0/zqX3BqsY0ydnao72G37WfR03O9+db2G0hup2
 i5vZF8XrbxkCzSkNiYZf0P9P4f/CTCCg2IcGPI+U=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sifeFwh5KXaC; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8333427E0341;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:51:59 +0100
Message-Id: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_440872_C74296B7 
X-CRM114-Status: GOOD (  11.57  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] kvx arch update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has updates for the KVX architecture, with some fixes and
with the addition of kvx specific drivers for the otp-nvmem and socinfo.

With this series it is now possible to run barebox on qemu, however
our qemu port isn't upstreamed yet, it can still be compiled. To do
so you will need to check this git repo [1] and follow the build
instructions.

To compile barebox for the KVX architecture there is a pre-built
toolchain that can be downloaded here [2]

The following commands should build an run barebox on qemu:
$ PATH=<path/to/gcc-kalray-kvx-v4.7.0-cd2>/bin:$PATH ARCH=kvx make generic_defconfig all
$ qemu-system-kvx -m 1G -kernel barebox

[1] https://github.com/kalray/qemu-builder
[2] https://github.com/kalray/build-scripts/releases/tag/v4.7.0-cd2

---

Clement Leger (6):
  common: elf: add elf_load_binary
  kvx: enable FITIMAGE support
  nvmem: add kvx otp non volatile regbank support
  kvx: add kvx_sfr_field_val
  drivers: add soc hierarchy properly
  soc: add kvx_socinfo driver

Jules Maselbas (6):
  kvx: dma: Remove arch dma_map/unmap_single
  kvx: Move LINUX_BOOT_PARAM_MAGIC in asm/common.h
  kvx: Accept LINUX_BOOT_PARAM_MAGIC as a valid magic value
  clocksource: kvx: Register as postcore_platform_driver
  kvx: Update defconfig
  kvx: dts: Update k200.dts

Louis Morhet (1):
  watchdog: kvx: do not disable watchdog on probe

 arch/kvx/Kconfig                   |   1 +
 arch/kvx/configs/generic_defconfig |  32 +++
 arch/kvx/cpu/cpu.c                 |   2 +-
 arch/kvx/dts/k200.dts              | 426 +++++++++++++++++++++++++++--
 arch/kvx/include/asm/bootm.h       |  11 -
 arch/kvx/include/asm/common.h      |   3 +-
 arch/kvx/include/asm/sfr.h         |   4 +
 arch/kvx/lib/bootm.c               |  33 ++-
 arch/kvx/lib/dma-default.c         |  38 ---
 common/elf.c                       |  83 ++++--
 drivers/Kconfig                    |   2 +-
 drivers/clocksource/kvx_timer.c    |   2 +-
 drivers/nvmem/Kconfig              |   7 +
 drivers/nvmem/Makefile             |   3 +
 drivers/nvmem/kvx-otp-nv.c         |  99 +++++++
 drivers/soc/Kconfig                |   6 +
 drivers/soc/Makefile               |   1 +
 drivers/soc/kvx/Kconfig            |  10 +
 drivers/soc/kvx/Makefile           |   1 +
 drivers/soc/kvx/kvx_socinfo.c      | 141 ++++++++++
 drivers/watchdog/kvx_wdt.c         |   4 +-
 include/elf.h                      |   1 +
 22 files changed, 814 insertions(+), 96 deletions(-)
 delete mode 100644 arch/kvx/include/asm/bootm.h
 create mode 100644 drivers/nvmem/kvx-otp-nv.c
 create mode 100644 drivers/soc/Kconfig
 create mode 100644 drivers/soc/kvx/Kconfig
 create mode 100644 drivers/soc/kvx/Makefile
 create mode 100644 drivers/soc/kvx/kvx_socinfo.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

