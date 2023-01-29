Delivery-date: Mon, 30 Jan 2023 18:40:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMY8h-007qk2-Ei
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:40:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMY8e-00088T-RR
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:40:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cx60/EqBH7uFVZs+SgLI50k9TZHXButpo//njDYK1Tg=; b=Gk/bQyEH9Wv+VJ8MZhBWaMbDMd
	54RoPqMcGNaBaozhRhcAkADatD6Stn4u/cpqO7GItQ+9SiMPxrS+16iegq6ltE8m9ZhHGbO44gRRs
	5Sw6Obr6jbaZ/uLzjxGqno9O/qoq0T7bGDr8EkS9KBAQ2c232E21tqDyQbysnovxIQGQrkxLgZe3I
	wD8RZx0URfncm1jMzB/D7EDEYBC1x+t4MAOANxm/7kzeZFsMaUFT08JRjwJZDBhquBW6SaI2fzv1J
	NmACU/ErIO02MtDikU4m0m2PpkKj2zgWXHW6/ePowHS8iDUEZAiGHgwqeEGLL1B6EvVM7mvdIgnii
	zD2ZRe7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMH9K-0022FT-PF; Sun, 29 Jan 2023 23:31:50 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMH9F-0022Eg-N3
	for barebox@lists.infradead.org; Sun, 29 Jan 2023 23:31:47 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675035098;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cx60/EqBH7uFVZs+SgLI50k9TZHXButpo//njDYK1Tg=;
	b=oD0AZd4nI9OI7l4lVIYTtjc4Pf7Mk9wRDhBMM8wNOU2TbS2zSoQsblEMMb7B2ZG5DcRtTR
	iYJlXRly8n+LV4GUhko14cOElZBOGZbigA018LKxHhroGQYodeuBFZiCv/klktCTYPaUjP
	iOaKZHKrDv1UisANb5Ht+4x8QIiWvbNhL7f7BfoB4X5FboeQ5XyI0U7wcptmFCAyruWMbN
	+1LP5GB4mnCd7xmlSmhamGNKI/R8RJ2YEetCQBLUXXA5NCW9UvYAAytoI2Ewa1K52cLqHC
	9R6j4nZOW49zn+MKsGd5rtFtac9G+zRMcSvOze+ukwRDCZUiKEDFujL3siWGFA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 30 Jan 2023 10:27:56 +1100
Message-Id: <20230129232758.1799987-1-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_153146_600499_4CFAF016 
X-CRM114-Status: GOOD (  11.73  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series introduces support for the Novena board.
This support is basic but enough to boot Barebox.

The EEPROM code here is included in anticipation for reading the features
flag in the future when more board features are supported.

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
 arch/arm/boards/novena/lowlevel.c             | 183 ++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6q-novena.dts                 |  18 ++
 arch/arm/mach-imx/Kconfig                     |   8 +
 images/Makefile.imx                           |   2 +
 11 files changed, 452 insertions(+)
 create mode 100644 arch/arm/boards/novena/Makefile
 create mode 100644 arch/arm/boards/novena/board.c
 create mode 100644 arch/arm/boards/novena/ddr_regs.h
 create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
 create mode 100644 arch/arm/boards/novena/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-novena.dts

-- 
2.39.1



