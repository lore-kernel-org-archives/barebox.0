Delivery-date: Thu, 02 Feb 2023 08:59:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUVX-00B86Y-LR
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 08:59:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUVU-00014b-Nf
	for lore@pengutronix.de; Thu, 02 Feb 2023 08:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2ZA16PyBXJKTYc9ZdVVaXR76nCpWjRsY/Wii/pfY+SE=; b=3gAJ4yvIFfVzHfwfXxyqVIbN/t
	DcaH4aQ60tSEQDlkxbgC5IVkCRt+OAR+fX+mKeHaUPQU6nlBaTAt7xoi/cR3cp5LggKBdSOc9udsq
	X6xkpMOX8Y76XQBvtJm7Ine86PWObDi75WBKtvDVNLe6zJrzuVeim0w8gUlvVDhnyWrycLCzS3K2R
	cDXZX1D67Ax4IKy2/y1agh0p2/xxy/A1pNT6HMWMFQyijU2pKzdQ2Hx8SLhJ89fIrUZPz0K0u+UV8
	K6BCYxau6lptGgWn8w6vTezSRcW9SnrY1dK1TagZ9eUmcDsHHNJck2hVcZLs8dWYvD011UoCwfIq6
	ptmkRloA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUU1-00EoU9-9E; Thu, 02 Feb 2023 07:58:13 +0000
Received: from out-122.mta0.migadu.com ([91.218.175.122])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUTs-00EoQ9-8R
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:58:06 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675324679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2ZA16PyBXJKTYc9ZdVVaXR76nCpWjRsY/Wii/pfY+SE=;
	b=jmMN3Fk7t6Xq/AxsI2RClgi5v5Gy/Q6rQBKWd7GE6ZpgjUFOAzL1VwqDyiPhD34+WSuM+u
	kxUDWQz+x8bhgySqH/zYzr9Z4AK0wYfBWGtK4QltfLYKPson4qYLN6iZT7/vqOTa3KLz0N
	A7RtbSr7IgPUCuAIcRcUxlp7X7JLywtUz6xPIzzD/L1Y5Hys37BL/QOdgOyULtWgxJCoQy
	RdA8LzYTxhqo66QmjAGz+uBPmXohHuGVeWS5OyFY7INsb1+bIdd24zOfkqr6j5YRC+vgYs
	WEJB2ebtGguQwV2sN19HuNwU/XBcpkflufb1rRHvKW7nD9rmAAAWvBjm3mv1PA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 18:57:37 +1100
Message-Id: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_235805_072855_C96E3FC7 
X-CRM114-Status: GOOD (  11.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/5] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series introduces support for the Novena board.
This support is basic but enough to boot Barebox.

The EEPROM code here is included in anticipation for reading the features
flag in the future when more board features are supported.

Changes v3 -> v4:
- Compressed device tree is now used
- Code style fixes
- Reworked DDR3 error checking to be more readable

Changes v2 -> v3:
- EEPROM data is freed correctly
- Add email to copyright headers
- Switched license from GPL2 to GPL2+
- Dropped get_runtime_offset for device tree
- Removed "okay" status from EEPROM in device tree
- Moved novena_try_eeprom code in to novena_probe
- Other small code re-organizations
- Moved OCRAM address to its own separate patch
- Moved udelay fix to its own patch

Changes v1 -> v2:
- The board uses the driver model now
- Memory density is now calculated correctly

John Watts (4):
  ARM: novena: Add Kosagi Novena board
  ARM: novena: Setup RAM using static configuration
  ARM: novena: Read Ethernet MAC address from EEPROM
  ARM: novena: Use DDR3 information from SPD EEPROM

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/novena/Makefile               |   4 +
 arch/arm/boards/novena/board.c                | 109 +++++++++++
 arch/arm/boards/novena/ddr_regs.h             | 119 ++++++++++++
 .../boards/novena/flash-header-novena.imxcfg  |   6 +
 arch/arm/boards/novena/lowlevel.c             | 172 ++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6q-novena.dts                 |  18 ++
 arch/arm/mach-imx/Kconfig                     |   9 +
 images/Makefile.imx                           |   2 +
 11 files changed, 442 insertions(+)
 create mode 100644 arch/arm/boards/novena/Makefile
 create mode 100644 arch/arm/boards/novena/board.c
 create mode 100644 arch/arm/boards/novena/ddr_regs.h
 create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
 create mode 100644 arch/arm/boards/novena/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-novena.dts

-- 
2.39.1



