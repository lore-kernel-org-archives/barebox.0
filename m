Delivery-date: Fri, 07 May 2021 00:10:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCU-00035d-EI
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCS-00052D-6k
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iT1dKTU4fJnXNru+Wad3ywBFKgFlFXDQb7cL1ZFNMOc=; b=aVxN6RYhK+88jAn8g7GVMjMu/f
	Pc9VQS5ccMGSg4g90suSXUSn5wJu12MHG+7iC8gBvdqIyf/OZVA5WLE3qxZU6ET+AXjhb1uOLje92
	nxsYmKno4/aqqotxH7nkA5KYDnvzcL1jCCncSs8jKIoKfBX+tyI1S2o/aL+FpWWxcxQVoIaeNq/N2
	VRc83dvjagKJApAksqiv9QWon3vj9yQrsHAfnimNIQvxMF1j194osVxRn+KHDET1yqZPNFw2EPGiD
	KDgNqyKaiX0Szz4dBzEsO5gekCapQYXpemGvSSXZ1GecLzpitorx+C4UBlmsg2vpCb8XG/FUHuH6c
	DbRSKOfA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemB9-005ROO-Lm; Thu, 06 May 2021 22:09:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemAz-005RO2-Hd
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:08:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=pov9cUVlw3XEZSXKORw1hB/Xz3JVn0G6EKTH8/22fBo=; b=ZTl7yt06le/BQyfH7Gacjm2X5b
 ab4mBxh7LtGe6rtg+hMP1YrC+N62K2pdV0YV01RqjnXyN01FyBNaiAOnM6pBWGyULk51xJrxJgCE5
 aXeyrorpEoTcOeUYOk+zyUi7VN+ab5w6KdP9vg86D2tbLwMx88mfuAJeY8tQI3sn0KKtzS3FzrhNs
 h4YN8ZbAad9Y2mxZVciDX4uGiR273im+p152zxPTaWGlSdJwhszGNLEEWv8AFEE5Frq1RscZDgj1I
 waagHpsToMCFUdN8dfsMaLTcTOIMIv1AJk6L23HkHqifgf/324EzXcRJ+5mWQmBQgQ0ldm8BFmoEC
 4QJwKXew==;
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemAx-006QNv-0a
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:08:56 +0000
Received: by mail-lj1-x231.google.com with SMTP id v5so9012459ljg.12
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pov9cUVlw3XEZSXKORw1hB/Xz3JVn0G6EKTH8/22fBo=;
 b=BC50C3DSRCuVe0GLPqpWUx4xrLHIoshk6vYuOXEmaMmYc6EmHf5kODtdL3uxP8WjF0
 YbLVMB66nQmFz2D6Jf7c3SBZcu7x0uY6LDlJR8QHbji3WnSVcJe505X3Tqi84l27HLgI
 7QtIp25Onv33ks9DrE5PGgxaGObZOdCi6zBG4XfpFt0jEu1oH6ZWWvUI7jPym4TPGmC0
 6ls0g86JvFu9VsgKV0sGZSXNH78nKTK1KZZ02568Xw3ru29ZmWbMFQ44xuukfM6wCL5c
 manspoSG47eDKfQZI19KZfPnEhIsMYzNiazE1crhlhA3blOUeG6j5EoYXZ9ETlW4/7EE
 usZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pov9cUVlw3XEZSXKORw1hB/Xz3JVn0G6EKTH8/22fBo=;
 b=VfOy5xR2VKZyA+utMlFHsIxKpx5SNa+6t6+9MqIXTIOp7G6GdUBFzIcPrxUsQD4cm6
 sPD7W6Ska75iVNa/+b/p58ZPEU2w3raIToWhQlRQHM0Ooiele+oA1O+UkahPwK8gQqoi
 XcYXh3U8yT/Kin9TqS/WU6QKVKTdJaLYeosIk2+iaJCEAR67PA13Y3qjPbuQp1kbPLw+
 NXW2Dn7y6N5Y1fC0AVLL3pfcQ7To7NOzXdLQK1ldtJT/FiS8Jm9qrkHmNO/vtiDrXIB+
 HJIRbkHcF20fswOa84HBuvW9byXZx90LhbhOAK2dLe6y7VGsaqHKJFfiFqlnnHTDA4fr
 5W7A==
X-Gm-Message-State: AOAM5311WHaKwQ+2X8hNbbK5e+TGDo097spLTZBrw/8FDrSjK9sEqsVV
 F3p8622kcqY5XbsFxTz/UOnpfKXaQCFf6w==
X-Google-Smtp-Source: ABdhPJwI0siBetN6yLnUoWBAs0sLpNNSNHZXAnFcdtl6/kYiRbMlDdOGYR6ehoF8zohHQA/KpJqHMQ==
X-Received: by 2002:a2e:b5d8:: with SMTP id g24mr5300498ljn.115.1620338932145; 
 Thu, 06 May 2021 15:08:52 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:23 +0300
Message-Id: <20210506220834.223350-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150855_081208_7344A543 
X-CRM114-Status: GOOD (  12.23  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/11] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Changes since v1:

  * rebased on top of next branch;
  * new patches are introduced:
    * clocksource: timer-riscv: select CSR from device tree
    * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
    * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
  * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
  * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()

Antony Pavlov (11):
  clocksource: timer-riscv: select CSR from device tree
  RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
  RISC-V: make it possible to run nmon from PBL C code
  RISC-V: boards: erizo: make it possible to use nmon
  serial: add litex UART driver
  gpio: add driver for 74xx-ICs with MMIO access
  spi: add litex spiflash driver
  net: add LiteEth driver
  RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
  RISC-V: add litex_linux_defconfig
  RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n

 arch/riscv/Kconfig                         |  22 +-
 arch/riscv/Kconfig.socs                    |  18 +-
 arch/riscv/boards/Makefile                 |   1 +
 arch/riscv/boards/erizo/lowlevel.c         |   5 +
 arch/riscv/boards/litex-linux/Makefile     |   3 +
 arch/riscv/boards/litex-linux/lowlevel.c   |  20 ++
 arch/riscv/boot/Makefile                   |   1 +
 arch/riscv/boot/nmon_entry.S               |  13 +
 arch/riscv/configs/erizo_generic_defconfig |   1 +
 arch/riscv/configs/litex_linux_defconfig   |  77 +++++
 arch/riscv/cpu/time.c                      |   7 +
 arch/riscv/dts/Makefile                    |   1 +
 arch/riscv/dts/erizo.dtsi                  |   2 +
 arch/riscv/dts/litex-linux.dts             |  96 ++++++
 arch/riscv/dts/litex_soc_linux.dtsi        |  49 +++
 arch/riscv/include/asm/debug_ll.h          |   3 +
 arch/riscv/include/asm/debug_ll_litex.h    | 123 +++++++
 arch/riscv/include/asm/riscv_nmon.h        |  49 ++-
 arch/riscv/include/asm/timer.h             |   1 +
 common/Kconfig                             |   4 +
 drivers/clocksource/timer-riscv.c          |  19 +-
 drivers/gpio/Kconfig                       |  14 +
 drivers/gpio/Makefile                      |   1 +
 drivers/gpio/gpio-74xx-mmio.c              | 166 +++++++++
 drivers/net/Kconfig                        |   8 +
 drivers/net/Makefile                       |   1 +
 drivers/net/liteeth.c                      | 376 +++++++++++++++++++++
 drivers/serial/Makefile                    |   1 +
 drivers/serial/serial_litex.c              |  96 ++++++
 drivers/spi/Kconfig                        |   3 +
 drivers/spi/Makefile                       |   1 +
 drivers/spi/litex_spiflash.c               | 241 +++++++++++++
 images/Makefile.riscv                      |   4 +
 33 files changed, 1388 insertions(+), 39 deletions(-)
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

