Delivery-date: Wed, 05 May 2021 12:10:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUE-0007Z1-TD
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:10:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUD-00053V-Su
	for lore@pengutronix.de; Wed, 05 May 2021 12:10:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QzCKQtp63cSuBdivhFlvgukUKwGOU2GU3naUHKRWC10=; b=U+sZD7/vJhWGJ8fn4Vx2s3T6mH
	p6lzzKikvsOY5qFvw6BW4t9gfiCee+WWknfMXtH/Zo9dtOkxs62Z3dCGKv4hlZM1FaCZR9J4Yr/BI
	Z1bw4ABqhueiYl3Ruh0hkdovbqSRFc5VDcL1PLCdnP72NEkNBJhzuKIHB0zKbwmGKIX2UoQKGCgLO
	SNzqKChH4j3zPFTXFb8LXqkXlWQUPMIYLZs6xA5YmTlZZKkxZdafm+NuROofSaDUCqLN46haOPKYl
	pYiqCiRbkXn9O5kwhuDx9INXpZUPMR5meuH2kD6e/RE3kYyvB/OVH1njmmXadhK5mvVhwMn17CW8L
	1/TzuhXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leET9-000q14-Ro; Wed, 05 May 2021 10:09:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET3-000q0p-EZ
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=auokRHjK0huYhkK4I45xRp5oZdljqhkO6euH0X8l6bM=; b=fqzHlB5klJABVbIY0ZLQSAbNr+
 3TvP7qCmWeItrOL5ecZE7Nj4B+o7TBJhUqG0vKXWkMvdv7SGfL3SVr0C84cHmjj4iiKP8OWXnqafW
 RsCiOpzNkk+BuRsUPScVMuGopPZbk5lGKV3B1LwY6SpuCm3FIPmfleNnRywqD0PG5BlJKXP5JFeg0
 kD63T8YJhpn4u01UeM9rGhU3of31fodsjuZ0kXUaT7eS9dMf1D6X3GZPRYZJdnLnzBuf1XhazP5K+
 qYnbKjqeUtZO+Evw438ox79hCVKc9m8+R7zHuAaVWOkZDgsbPwI6GQq1uy9ch6xKXCU59sgcVXF+m
 L0AKeu9g==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET0-004eNs-3V
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:20 +0000
Received: by mail-lf1-x12e.google.com with SMTP id x20so1775081lfu.6
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=auokRHjK0huYhkK4I45xRp5oZdljqhkO6euH0X8l6bM=;
 b=r7OC2Flj4eV6F/6bYXpBVNEJ55zcLxErl4tpWWZWXTk7sKYVK8z0xjUEExf11IbhWP
 BH63U69Cb4XUM995pGJgRXpzU8+kQp3i286EhYcx67rEe4b5CGA5wvBCtH3GNNz5UMJf
 NefwQJwYi+K8Ez3gP2C4JQve1JNWEX1JweqWmb/mN7XHCSK9sGJYGkvARBfmnk9eqoA/
 dSzvekhe7gl05G/d7YvQwE/kUNC45sF7OJ+DUqXTtEVcK7e0OKpG2l8RfGcZVd1KratR
 82gRGy+AaBeRkdtVdk9Fi1k0sEG+WO1vxxvgTiKd48p9Wvidth9n0TJ5u2NnnLAOaek7
 jx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=auokRHjK0huYhkK4I45xRp5oZdljqhkO6euH0X8l6bM=;
 b=GDImatLUwIdeeumxgjKoS/InvKXQw2sRRK3Jh3RYZ3HNW46UUjVhdD+VS1gkiuHjLh
 j3f+QlGqoXfEstGfTEzHZz6WpIBXgchowt+uWRkGKUhOqGf8Ljz4xIeRDHi6x7CviesX
 M8//+YY9x8O2MkguAaZhQX4bnNKWnMMGakqW4iBjiAPZbeOYyI1RDTbkYSqqV0Qwuv6S
 ykYTqvhjFizMx0S6fK0GRmAaBEZQpk4U6jclHwZRWUlHyZ4HQA/g1p22OEGkej8IOzdR
 tca9Z7Nyqjf4WcrBNc74Y4t377Do0nN21VYbK/+Md4RCSqs+4wT5evB193jD2n5IyoRB
 gC2A==
X-Gm-Message-State: AOAM533ee3Afz/AwcoT8mFMGjHbpHMF4k+5Z0DF+wdJ9EMy7EI8DPzPy
 BW119UjSmojH54DaPPOwdv0d+6zzHSo2tw==
X-Google-Smtp-Source: ABdhPJwXjjj0ixusyKe1+2dUVTpGWCgqTP9c/C+VLr+pa5rhPskRAhu6CSfJtMZ8QV7UsVhlN0EjiA==
X-Received: by 2002:a05:6512:318f:: with SMTP id
 i15mr19963114lfe.636.1620209355258; 
 Wed, 05 May 2021 03:09:15 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:51 +0300
Message-Id: <20210505100900.88141-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030918_715533_52B64072 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Florent Kermarrec <florent@enjoy-digital.fr>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Marek Czerski <m.czerski@ap-tech.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/9] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (9):
  RISC-V: make it possible to run nmon from PBL C code
  RISC-V: boards: erizo: make it possible to use nmon
  serial: add litex UART driver
  gpio: add driver for 74xx-ICs with MMIO access
  spi: add litex spiflash driver
  net: add LiteEth driver
  RISC-V: add initial LiteX SoC support
  RISC-V: add litex-linux board support
  RISC-V: add litex_linux_defconfig

 arch/riscv/Kconfig                            |   9 +
 arch/riscv/Makefile                           |   1 +
 arch/riscv/boards/Makefile                    |   1 +
 arch/riscv/boards/erizo/lowlevel.c            |   3 +
 arch/riscv/boards/litex-linux/Makefile        |   3 +
 arch/riscv/boards/litex-linux/lowlevel.c      |  20 +
 arch/riscv/boot/Makefile                      |   1 +
 arch/riscv/boot/nmon_entry.S                  |  13 +
 arch/riscv/configs/litex_linux_defconfig      |  76 ++++
 arch/riscv/dts/Makefile                       |   1 +
 arch/riscv/dts/litex-linux.dts                |  96 +++++
 arch/riscv/dts/litex_soc_linux.dtsi           |  49 +++
 arch/riscv/include/asm/riscv_nmon.h           |  33 +-
 arch/riscv/mach-litex/Kconfig                 |  11 +
 arch/riscv/mach-litex/Makefile                |   3 +
 arch/riscv/mach-litex/include/mach/debug_ll.h | 124 ++++++
 drivers/gpio/Kconfig                          |  14 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-74xx-mmio.c                 | 170 ++++++++
 drivers/net/Kconfig                           |   8 +
 drivers/net/Makefile                          |   1 +
 drivers/net/liteeth.c                         | 376 ++++++++++++++++++
 drivers/serial/Makefile                       |   1 +
 drivers/serial/serial_litex.c                 |  96 +++++
 drivers/spi/Kconfig                           |   3 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/litex_spiflash.c                  | 242 +++++++++++
 images/Makefile.riscv                         |   4 +
 28 files changed, 1344 insertions(+), 17 deletions(-)
 create mode 100644 arch/riscv/boards/litex-linux/Makefile
 create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
 create mode 100644 arch/riscv/boot/nmon_entry.S
 create mode 100644 arch/riscv/configs/litex_linux_defconfig
 create mode 100644 arch/riscv/dts/litex-linux.dts
 create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
 create mode 100644 arch/riscv/mach-litex/Kconfig
 create mode 100644 arch/riscv/mach-litex/Makefile
 create mode 100644 arch/riscv/mach-litex/include/mach/debug_ll.h
 create mode 100644 drivers/gpio/gpio-74xx-mmio.c
 create mode 100644 drivers/net/liteeth.c
 create mode 100644 drivers/serial/serial_litex.c
 create mode 100644 drivers/spi/litex_spiflash.c

-- 

Cc: Florent Kermarrec <florent@enjoy-digital.fr>
Cc: Marek Czerski <m.czerski@ap-tech.pl>

2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

