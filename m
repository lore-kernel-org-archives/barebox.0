Delivery-date: Tue, 25 May 2021 09:21:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRNo-0008By-Gl
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:21:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRNm-0003hp-Tn
	for lore@pengutronix.de; Tue, 25 May 2021 09:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z6W1MoLzrEaT3MeGYmiJZbrN6HLo3ydRI9pf05HzkuE=; b=i4dRMBH/axkjvn
	HXHWnxMrqWK4J5GzTV65POD94C3A6x45b624AullNZmQozg1POWj2memffIktcod4CgUhNSMqVWgS
	iNstfmesJifTo25+JECvyHIebg2666DD27xFzK1T5wvfNe4LF8ZkNQJoYx+/ZucmUvtklC7UC+v9S
	O1nJtA1WGacRKxwG+8aLODuoDhYqVhX89jjhFk4U44MRVlZTyxuasUkjtFF6iiYm+bdcYBD2SyJDN
	BRUYkJ/ckCeRFJ5l5StuCDG8HbEf6tSgpXVsEZfOonbB7JCuhPBtgtMr/8abUa80qROm+N0XvaXcO
	l9jf6ppG0z9liyH3B3Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRMU-003ppv-4M; Tue, 25 May 2021 07:20:22 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMD-003pmg-IL
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:07 +0000
Received: by mail-lf1-x12c.google.com with SMTP id f30so7454205lfj.1
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BI7ZfECU6bZEWzKjbnxdtrmbr72eq4BDJUhNF5a54yM=;
 b=s7uM812R3C+KdiTCSjQgsarrs73QGpQwzr8ZJA6jWJL5BDVLEUSNnFYvqqEAq9M/72
 9Mw4y84YSX+a6NaoEXlPvYyiU2kF9j6UtIzPPvklrk6jLuxILWzsjCZ3UqL7XN3fRon8
 TVqsI9DMU9nlTyYb6pVFmpFE4/0j0l7QYiZlDapzAd5HlqR/oghj3snPsnW4m0q2IOya
 P4ekDn4OC2vbIDXjKMntvBpm05fNSPewm5m7lVz6htsbG27ZdpgJEf5gwOUhzIDmFN9d
 w2w/YlN4b1R29UxIBESxZYknlk6P/XdIAabfMdgloI7S2VpYUXiGvZedGncTAoeSQqR6
 l7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BI7ZfECU6bZEWzKjbnxdtrmbr72eq4BDJUhNF5a54yM=;
 b=QNuY5b6GkfuSB/3XX0aYL7y1BpYuAzFxpHk91L4Y65wJNBhMwo/6kJQQEEx7FZnoGG
 JesQOV689eA+9CfrOBKH+2L2UL6M6mKicK3Wwr02x8NOy4o12hItNQAqV2yu0I4vk5Up
 pU9n//3WhSfLgWkqJLhm/1wH06plPQpMAGjkElzy5pWPinjKD3zt3yC3xRf2AtWJf8Pk
 kn/JxQ2ywqb2P5lHvO2qW02k0JQJ1Y9QnplSrybY26NjNSHY2oEJ1lGk02WzZJQAzUA6
 xiskGGhXeW3kY56kuHPLka42VxZzTq1ZkKNLD8U4HE9zWSWliJfrfXncRHI0fbsUHJgB
 Ugcw==
X-Gm-Message-State: AOAM533Dlm92XG3VGjcDWvYnoR+yUP55SjJt4Jre4erwQg2mjr8IOWGV
 HxNFxExdwGL/GdI/C18umpURE8nDb+YYWw==
X-Google-Smtp-Source: ABdhPJw+5TmtV0oyUeP9oNzDOcNUpc98+F1NXNs6VcCVTssEt5bhh2UUdAkv3/ryU5jRxPPpUy4DRg==
X-Received: by 2002:a19:7e8f:: with SMTP id
 z137mr13120057lfc.466.1621927203714; 
 Tue, 25 May 2021 00:20:03 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:42 +0300
Message-Id: <20210525071952.18045-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002005_679876_28DBE7D6 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/10] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Changes since v2:

  * rebase on top of master branch (f873c7ff2497) +
    "RISC-V: extend multi-image to support both S- and M-Mode"
    (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
  * "litex serial: add setbrg callback" patch by Marek Czerski is added
    for review;
  * fix "clocksource: timer-riscv: select CSR from device tree" patch;
  * change gpio IP-block base addresses in litex dts;
  * gpio-74xx-mmio uses device_get_match_data() now.

Changes since v1:

  * rebased on top of next branch;
  * new patches are introduced:
    * clocksource: timer-riscv: select CSR from device tree
    * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
    * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
  * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
  * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()

Antony Pavlov (9):
  clocksource: timer-riscv: select CSR from device tree
  RISC-V: make it possible to run nmon from PBL C code
  RISC-V: boards: erizo: make it possible to use nmon
  serial: add litex UART driver
  gpio: add driver for 74xx-ICs with MMIO access
  spi: add litex spiflash driver
  net: add LiteEth driver
  RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
  RISC-V: add litex_linux_defconfig

Marek Czerski (1):
  litex serial: add setbrg callback

 arch/riscv/Kconfig.socs                  |  14 +
 arch/riscv/boards/Makefile               |   1 +
 arch/riscv/boards/erizo/lowlevel.c       |   4 +
 arch/riscv/boards/litex-linux/Makefile   |   3 +
 arch/riscv/boards/litex-linux/lowlevel.c |  22 ++
 arch/riscv/boot/Makefile                 |   1 +
 arch/riscv/boot/nmon_entry.S             |  13 +
 arch/riscv/configs/litex_linux_defconfig |  76 +++++
 arch/riscv/dts/Makefile                  |   1 +
 arch/riscv/dts/erizo.dtsi                |   2 +
 arch/riscv/dts/litex-linux.dts           |  92 ++++++
 arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++
 arch/riscv/include/asm/debug_ll.h        |   3 +
 arch/riscv/include/asm/debug_ll_litex.h  | 123 ++++++++
 arch/riscv/include/asm/riscv_nmon.h      |  49 ++-
 common/Kconfig                           |   4 +
 drivers/clocksource/timer-riscv.c        |  24 +-
 drivers/gpio/Kconfig                     |  14 +
 drivers/gpio/Makefile                    |   1 +
 drivers/gpio/gpio-74xx-mmio.c            | 165 ++++++++++
 drivers/net/Kconfig                      |   8 +
 drivers/net/Makefile                     |   1 +
 drivers/net/liteeth.c                    | 376 +++++++++++++++++++++++
 drivers/serial/Makefile                  |   1 +
 drivers/serial/serial_litex.c            | 103 +++++++
 drivers/spi/Kconfig                      |   3 +
 drivers/spi/Makefile                     |   1 +
 drivers/spi/litex_spiflash.c             | 241 +++++++++++++++
 images/Makefile.riscv                    |   4 +
 29 files changed, 1370 insertions(+), 29 deletions(-)
 create mode 100644 arch/riscv/boards/litex-linux/Makefile
 create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
 create mode 100644 arch/riscv/boot/nmon_entry.S
 create mode 100644 arch/riscv/configs/litex_linux_defconfig
 create mode 100644 arch/riscv/dts/litex-linux.dts
 create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
 create mode 100644 arch/riscv/include/asm/debug_ll_litex.h
 create mode 100644 drivers/gpio/gpio-74xx-mmio.c
 create mode 100644 drivers/net/liteeth.c
 create mode 100644 drivers/serial/serial_litex.c
 create mode 100644 drivers/spi/litex_spiflash.c

-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

