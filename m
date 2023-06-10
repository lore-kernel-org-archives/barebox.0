Delivery-date: Sat, 10 Jun 2023 12:33:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuS-000xv6-GI
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 12:33:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuQ-0006to-7J
	for lore@pengutronix.de; Sat, 10 Jun 2023 12:33:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DI08GivqKV3KuQCpdTFoXFUtpNeeDMOXAPagLkFO5n0=; b=4QBUv+q5hb6wGz
	Ppu/eJ/NDX8gjTMyzc6gfanRDTPRIwOY7RVzyX0VH+90zmh9DPyhkTSuWH+mziGUOu1iLuFpuc3uu
	tvzUKNP43wBC3OQU/oSFR9FAAwDVYE+UU74hvt8xQKKN9HFTT+HqhpC2wVUgmWi019X0VA7kF3mKW
	EsBFm7r4LBWnniuKNPBBPJuIeKLjK6igmfnz5y+t5bw0o3xlepWn9jVIulkRao+ABDgfBUGuj+dW1
	WKZmSyRywNPWZSrH9RcUz/Ts86BxOfzetxHv+oCeZWK+hWxlkzybojyAJCYCPDfq3pNRdQGZaQe2B
	3YmLK7j9mIv30KUOK+jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vtB-00FqTA-0N;
	Sat, 10 Jun 2023 10:32:09 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vt6-00FqN8-2X
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 10:32:06 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b1a3fa2cd2so28988751fa.1
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 03:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686393120; x=1688985120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DI08GivqKV3KuQCpdTFoXFUtpNeeDMOXAPagLkFO5n0=;
        b=AN8u2TTvHXbQBLikqPzXtGEIWFbDbGKDA4ZTAZ9lTUOXZv7prN0+elKmkkjQooZX/v
         JdNuM8shvcKh4IHmNcNwlp3ESTsHs2uHDOJtk79sPLc1HaKiNcCj8QSmM8qZ/6wr64Xn
         iaNgttCTWcfgPNDb5tAou30ec40WjX0D0e+KSSp+pOEZYJP1Jhls5wWIz2o3ExTjO7D7
         eDFaF+GtdZemAiCeRIX4sfOLizGg6OsNiaOtn+VjMKjQtXgAjUXW0Ex1yWTG4iD8oKSt
         WuSmHZIKZqAOfxB1rAchsqp/wncJvPP45TJvg1xMpAW8mYt1zntOUDNuAPmyxJvmY7JN
         ZkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686393120; x=1688985120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DI08GivqKV3KuQCpdTFoXFUtpNeeDMOXAPagLkFO5n0=;
        b=gIypZw0kSaBUZfYXmeATpaP9fy8X6zoEQNdIvt4S2z65Cd2+ceC98TgFj0Mkp3zLue
         NuiiDPQec+0j1Eii+356Zu1JX/oibSPctOfu82Mz1we2fD3pm+XEo0xknpVMYbiCICXi
         Zmgdfae0Xq/2mTfXTRAc4Fd1kP9igf7iBUqVsaGV3HFpCu8J4t6ovNZaYYAmT1OimdAL
         zvBUqx4QKSNEhWGxra9Ca7X4JcVyNkA2eDFKjQJ5TSecC+L2kbX7Hvkiq9t3kVIoMbIH
         0Gd0RXU68sf4AbBSxp2Z0HajNzPF/U8B7l1hFkY0RSmWsM3yfdWPX+d1v079ZIAeGSOO
         LCfg==
X-Gm-Message-State: AC+VfDxTRWmaQQNKMfpbLN7c5fuPUqzNaTeb4wbesbe0Dk+hfbh5beVI
	dZfG3A3jhw1mkstKmW3i+pa0rFH3kTY=
X-Google-Smtp-Source: ACHHUZ4RVvmTqx4ETqUPalKMslK91fUVUpaBknvCxGhFEFemme3tyIO9y2fYxGpLLIr9jAhfMVUEWw==
X-Received: by 2002:a2e:97c5:0:b0:2b1:a3ce:b709 with SMTP id m5-20020a2e97c5000000b002b1a3ceb709mr492858ljj.39.1686393119430;
        Sat, 10 Jun 2023 03:31:59 -0700 (PDT)
Received: from cinco.. ([109.252.8.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002adf8d948dasm792727ljg.35.2023.06.10.03.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 03:31:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 13:32:16 +0300
Message-Id: <20230610103220.566369-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_033204_827451_FEAF476B 
X-CRM114-Status: GOOD (  10.14  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 0/4] Run barebox on sc6531e-based feature phone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series adds initial support for SC6531E chip.

SC6431E chip is specially designed solution for creating
feature phones. It contains

  * ARM926EJ-S core (up to 208 MHz)
  * embedded PSRAM
  * peripherals: USB, SPI, UART, IIS, PCM, I2C, keypad, LCD
  * SIM card and GSM/GPRS/FM/BT stuff

This work is based on FPDoom, see [1], [2], [3] for details.

At the moment only timer and debug_ll output via USB
are supported.

After adding lcd and keypad driver running bareDOOM [4]
on SC6531E will be possible.

  [1] https://github.com/ilyakurdyukov/fpdoom
  [2] https://habr.com/ru/articles/706766/
  [3] https://www.youtube.com/watch?v=tln_Iace1O8
  [4] https://github.com/a3f/bareDOOM

Antony Pavlov (4):
  clocksource: add sc6531e driver
  ARM: add sc6531e and F+ Ezzy 4 phone support
  sc6531e: add debug_ll support
  Documentation: add sc6531e instructions

 Documentation/boards/sc6531e.rst          | 187 +++++++++
 arch/arm/Kconfig                          |  10 +
 arch/arm/Makefile                         |   1 +
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/ezzy-4/Makefile           |   6 +
 arch/arm/boards/ezzy-4/env/init/automount |  27 ++
 arch/arm/boards/ezzy-4/lowlevel.c         |  19 +
 arch/arm/boards/ezzy-4/usbio.c            | 449 ++++++++++++++++++++++
 arch/arm/configs/ezzy-4_defconfig         |  49 +++
 arch/arm/cpu/uncompress.c                 |   7 +
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/ezzy-4.dts                   |  22 ++
 arch/arm/include/asm/debug_ll.h           |   2 +
 arch/arm/mach-sc6531e/Kconfig             |  17 +
 arch/arm/mach-sc6531e/Makefile            |   3 +
 drivers/clocksource/Makefile              |   1 +
 drivers/clocksource/timer-sc6531e.c       |  70 ++++
 include/mach/sc6531e/debug_ll.h           |  17 +
 18 files changed, 889 insertions(+)
 create mode 100644 Documentation/boards/sc6531e.rst
 create mode 100644 arch/arm/boards/ezzy-4/Makefile
 create mode 100644 arch/arm/boards/ezzy-4/env/init/automount
 create mode 100644 arch/arm/boards/ezzy-4/lowlevel.c
 create mode 100644 arch/arm/boards/ezzy-4/usbio.c
 create mode 100644 arch/arm/configs/ezzy-4_defconfig
 create mode 100644 arch/arm/dts/ezzy-4.dts
 create mode 100644 arch/arm/mach-sc6531e/Kconfig
 create mode 100644 arch/arm/mach-sc6531e/Makefile
 create mode 100644 drivers/clocksource/timer-sc6531e.c
 create mode 100644 include/mach/sc6531e/debug_ll.h

-- 
2.39.0



