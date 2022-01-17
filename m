Delivery-date: Mon, 17 Jan 2022 23:21:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNp-004zHG-Ep
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNn-0005Qq-UY
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U/oaRu+3F9hl/Y0HSJM+vdcOcyeW1RO2+7oshnilHp8=; b=uzA7/eZ51Wbd52
	DDXrK+5r3fODy7kHN5drAJga2w3N5n8WWPNEUQszA/US5NLthYt8TsV7LjLWnAkpXQHsD9iwPL0Nh
	5PjO9I23jkv4UpJuyspUqYQASz94y3fVL5OQgRlGyUuCIlwosGYu3DYTmsmpc9F7gmL6JklwjHC/d
	ug6WvrEMPnu+lIOKkxlvNXUwul9ZJE/nJNIcOrihjPZz6XzbU2qtElkZtJoa1iOQrGlKL+pZlzQ1O
	4VggHYcPIzJgoVWdlQNF2qOKN8r3EQOUK6TiMWKhkNIBIbgg9EtfUfHYOHpDCymAimDhIoL1K/C2o
	HhW9J2nfoW0/0ztlk4aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMA-00GTB7-V4; Mon, 17 Jan 2022 22:20:07 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM2-00GT6c-RV
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 7F47624BD01C
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642457996;
 bh=+oBJicwLSrnM4ybjN3nbBr6wcbzWFxEl7BTb8qyVPXI=;
 h=From:To:Cc:Subject:Date;
 b=RLfoAj+EyRJd3Hkf5zyCZICWloXvpjNTU+/kCDlAbiWXURcQiO1aDxvVn1XeQ2sio
 nY4NKWXvtBF13OmdHy/6mgNlU94uWLMsrCdyxD8DHfM/LUBO4df5waPnsLbXddbAZH
 cJZqyON3r4DIHwRPjl8XUHQnlJLtvN463AbEeL9k=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 3507B24BD024;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1096c.61e5eb8b.ca9f4.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id CB5A624BD00D;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id A333427E0341;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8817727E03CB;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8817727E03CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=QPVYGw9N2R7Gkrhn5UCCJm6FGxL59RCCXfbFF4LzezE=;
 h=From:To:Date:Message-Id;
 b=jQpJ2hwFBjCZMVt4FBJDSwgpUZPLfh/2bAbngz3mShiFxbcqE7Uqep4dpFo5FxDF5
 9ZoOEoKzqMe9dSU0oiZbZnqZnt7o8Vgeibh09aZSqU3/4ObqmBGuwd/yqDrm5lNW2+
 q/Xja8QAVymmWJPFUFUUdpfQ3EDiI5PIMfujgcqY=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XH4QVKe_ZpT5; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6772D27E0341;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:06 +0100
Message-Id: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_188657_58DF818D 
X-CRM114-Status: GOOD (  14.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/11] kvx arch update
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
$ qemu-system-kvx -m 1G -nographic -kernel barebox

[1] https://github.com/kalray/qemu-builder
[2] https://github.com/kalray/build-scripts/releases/tag/v4.7.0-cd2

---

Changes in v2:
 - rebased on master
 - updated with Clement's new email address
 - droped two patches (the config and device-tree update) as there are
   not needed by qemu and the device-tree requires drivers not upstreamed
   yet.
 - small fixup on the nvmem driver

Clement Leger (6):
  common: elf: add elf_load_binary
  kvx: enable FITIMAGE support
  nvmem: add kvx otp non volatile regbank support
  kvx: add kvx_sfr_field_val
  drivers: add soc hierarchy properly
  soc: add kvx_socinfo driver

Jules Maselbas (4):
  kvx: dma: Remove arch dma_map/unmap_single
  kvx: Move LINUX_BOOT_PARAM_MAGIC in asm/common.h
  kvx: Accept LINUX_BOOT_PARAM_MAGIC as a valid magic value
  clocksource: kvx: Register as postcore_platform_driver

Louis Morhet (1):
  watchdog: kvx: do not disable watchdog on probe

 arch/kvx/Kconfig                |   1 +
 arch/kvx/cpu/cpu.c              |   2 +-
 arch/kvx/include/asm/bootm.h    |  11 ---
 arch/kvx/include/asm/common.h   |   3 +-
 arch/kvx/include/asm/sfr.h      |   4 +
 arch/kvx/lib/bootm.c            |  33 +++++++-
 arch/kvx/lib/dma-default.c      |  38 ---------
 common/elf.c                    |  83 ++++++++++++++-----
 drivers/Kconfig                 |   2 +-
 drivers/clocksource/kvx_timer.c |   2 +-
 drivers/nvmem/Kconfig           |   7 ++
 drivers/nvmem/Makefile          |   3 +
 drivers/nvmem/kvx-otp-nv.c      |  98 ++++++++++++++++++++++
 drivers/soc/Kconfig             |   6 ++
 drivers/soc/Makefile            |   1 +
 drivers/soc/kvx/Kconfig         |  10 +++
 drivers/soc/kvx/Makefile        |   1 +
 drivers/soc/kvx/kvx_socinfo.c   | 141 ++++++++++++++++++++++++++++++++
 drivers/watchdog/kvx_wdt.c      |   4 +-
 include/elf.h                   |   1 +
 20 files changed, 371 insertions(+), 80 deletions(-)
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

