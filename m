Delivery-date: Tue, 17 Aug 2021 12:13:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5n-0005tV-FM
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5i-0003ZE-Lm
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vWXRkErQzfiubW9h9vqcPt1DDeRUiTKeT/hP8dWOMkk=; b=tNnNxCv2bN0oJU
	9/zUKegQdDhSHSgi+S+MWyM47a3Ifo77mmxBSkn4yZwLlNngmqCLtBYRfUF4IbAJijFPlr7tT8F9R
	LFXhYF3PQirj2Hk+FyIvoStLvBz7Q9UO8a/wxJnY1d+kGxFLRac2dwpbPs++5bYzhHnvqkR7AJYe/
	2xXUyYySsklN4HkBUUzTFrr0XqsIaknlqyJPnvx/U57HncniAX+fL1t8vo4ciDiy5m/0spDbRccnE
	uJr5+0d/fY3Vt53VroIs6L3O9Ts83TKQ927KeufZ53reSQr2qx4LWDlUaHkVDczwUFx913dlvykZa
	rPkyaXJeBVsHSxS2eemw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw46-0021du-CD; Tue, 17 Aug 2021 10:11:26 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw3w-0021an-DQ
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:20 +0000
Received: by mail-lf1-x135.google.com with SMTP id p38so40521739lfa.0
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8RS3Q9FDYDy1X9HTmgMR9/yCalKA6k8T8auw5kk/2Ik=;
 b=OX69htthPz3SfUKJKpw5Db8atG4i1qTutxnXNN/8AQX/f9JO8CqXA+UrTC0X4Pn3F2
 NB+dKjIOT3coDDue0iurCdHE1+YT/TTtEqGLKH0z/PCFoVSl2aWUSFqAOuZELqODr7DR
 3fkpEaiCzW4z8IUhi6TFd5yoXd3JIhHJvYBVnR2hak9PMN2t99ktC1OgSiFVG4Z8DEdI
 UNJCaCzWtN5akXfAhV9kSD6oT8dkF96nWJFYAdpcf4Uz0VbpLJsvkKeQqGqwYR+DlG2t
 LAp8Zbh9qvhFVzNCHCZ5Ym4MKowyhNggkybiCUmrhn0K5h1jMIQkLxzbfVcopSjL15Kb
 vxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8RS3Q9FDYDy1X9HTmgMR9/yCalKA6k8T8auw5kk/2Ik=;
 b=NNS8ncEvFMrMfC6zcv6yxmlox0pIICcN9eMylcsgdcN9eAEm07Od4qH1DdQO51KrOy
 TDETnvh5K6SM3iDGKkb2YCy6Dz1p4UfvlRhzxVplY4AAtflF9kBWvNenR50fjkv7dBXG
 zQtSXVc33yg8UJFlHTEpbknbNITtK/BhxNGMKMi6s7lVj/xuhtk04qAPLY2IP0V2Yvr0
 FgVi8KsldA7mPNiPDj4TBmGYsjEvAU5YYpqZg1MD2FEIMKpoQHMmhztrEpDOMu19vEN/
 uTqlZTpqzQrUjbsv5UyNlEdTJIQCLoLNvVJOFbVFwm/XFWfXtWOpY8c2s9PmaLdiUtVT
 QUTg==
X-Gm-Message-State: AOAM532wwq56ZFJK86xA/I12nABmDNW9nHlxWAD63NB8FRrs2Wn5cKiC
 8YaJeeH20aqD+irfui8TRV6b+uas9WM=
X-Google-Smtp-Source: ABdhPJzvJeaIn8Asp+0XPhKSKNcCVWVzgzXsKzJtncUUb8TdFsZJveHZDFuUxJdz+vIKbJk2z7Gfkw==
X-Received: by 2002:a05:6512:2618:: with SMTP id
 bt24mr1900964lfb.180.1629195074674; 
 Tue, 17 Aug 2021 03:11:14 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:10:56 +0300
Message-Id: <20210817101104.114945-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031116_485431_25C4A76D 
X-CRM114-Status: GOOD (  13.65  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 0/8] RISC-V: add LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Changes since v3:

  * rebased on top of next branch;
  * the "console: support set baudrate for fixed baudrate drivers" patch
    is introduced so the "litex serial: add setbrg callback" patch is dropped;
  * update mac0 IP-block base addresses in litex dts according to latest
    SoC configuration.

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


Antony Pavlov (8):
  clocksource: timer-riscv: select CSR from device tree
  serial: add litex UART driver
  console: support set baudrate for fixed baudrate drivers
  gpio: add driver for 74xx-ICs with MMIO access
  spi: add litex spiflash driver
  net: add LiteEth driver
  RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
  RISC-V: add litex_linux_defconfig

 arch/riscv/Kconfig.socs                  |  14 +
 arch/riscv/boards/Makefile               |   1 +
 arch/riscv/boards/litex-linux/Makefile   |   3 +
 arch/riscv/boards/litex-linux/lowlevel.c |  22 ++
 arch/riscv/configs/litex_linux_defconfig |  75 +++++
 arch/riscv/dts/Makefile                  |   1 +
 arch/riscv/dts/erizo.dtsi                |   2 +
 arch/riscv/dts/litex-linux.dts           |  92 ++++++
 arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++
 arch/riscv/include/asm/debug_ll.h        |   3 +
 arch/riscv/include/asm/debug_ll_litex.h  | 123 ++++++++
 common/Kconfig                           |   4 +
 common/console.c                         |  10 +-
 drivers/clocksource/timer-riscv.c        |  24 +-
 drivers/gpio/Kconfig                     |  14 +
 drivers/gpio/Makefile                    |   1 +
 drivers/gpio/gpio-74xx-mmio.c            | 165 ++++++++++
 drivers/net/Kconfig                      |   8 +
 drivers/net/Makefile                     |   1 +
 drivers/net/liteeth.c                    | 376 +++++++++++++++++++++++
 drivers/serial/Makefile                  |   1 +
 drivers/serial/serial_litex.c            |  96 ++++++
 drivers/spi/Kconfig                      |   3 +
 drivers/spi/Makefile                     |   1 +
 drivers/spi/litex_spiflash.c             | 241 +++++++++++++++
 images/Makefile.riscv                    |   4 +
 26 files changed, 1318 insertions(+), 16 deletions(-)
 create mode 100644 arch/riscv/boards/litex-linux/Makefile
 create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
 create mode 100644 arch/riscv/configs/litex_linux_defconfig
 create mode 100644 arch/riscv/dts/litex-linux.dts
 create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
 create mode 100644 arch/riscv/include/asm/debug_ll_litex.h
 create mode 100644 drivers/gpio/gpio-74xx-mmio.c
 create mode 100644 drivers/net/liteeth.c
 create mode 100644 drivers/serial/serial_litex.c
 create mode 100644 drivers/spi/litex_spiflash.c

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

