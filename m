Delivery-date: Sun, 22 Jan 2023 18:53:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXE-002Gj0-Rb
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:53:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXC-00041G-Vn
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y32Ldu1AxbyMS7ZJtRtlhzuur5pB0c9ffYN94EbROrQ=; b=vpGPLGzQ7YLKEuyLNVy6ZyBfBv
	6FX7nnPYDzRWhAWbGOSi5Z5DfSo97FgGUvBCoOXAlLXLrAHR/8rsJkEV9JtPlRip+5ctqDhrVgINM
	0xKjVoBhIYFd6OTKbBQ/+PMM06uP/CNgdD1ul4lhHDu3iqbjEfPZh4SEMvDXv5SRYSvhGOY4AygOa
	UvDNXCNWrYEBYqDpZpg+HrRWdTJRo+yy5j4EHnZajhnltuSo7HSrtfWbAHkjXV67qVTnwA19V6d2j
	u5zuCt7WfuvGOzH3wABHbuPz0jkzMtxCD8zug30K0B75Y4E8e5LF1Sxq+Y8oYueFf/vKLUKOhKgZj
	D3lPdZAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeVj-00Fc5h-KA; Sun, 22 Jan 2023 17:52:07 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeVd-00Fc5B-Bi
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:52:04 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674409915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Y32Ldu1AxbyMS7ZJtRtlhzuur5pB0c9ffYN94EbROrQ=;
	b=ZrhJBEaDmCO12ZqM5SY3S3mkpBQbF4aco3I4N46o6wfJj2VU4rH7PDeOcyMgoYCsMTgWxA
	ejCSbGviB447c+tXIH2nO6As9MhKU8mEFsjpP0Lf8+syGueRW6RA+rxhlfXMvK07ubM+Bp
	+NfcJeX0Z/O1KgebZp4orwmwZ0mjFsjjPvyklvWn3FCHqAMnygxmnebYSmOo5gliyTH9Te
	NV6vsVQccPDyohdOXY9JLyBstMrhgWFDR9kVBYM2oq1StbcIzN+vduePfODbb28Q6JAlvz
	pHQ6+t7cebravUomzOcy8prShrzdXcYYGvuhJDWgw7xhnlhatxlCDUjKO33Big==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 23 Jan 2023 04:51:36 +1100
Message-Id: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_095202_731035_524C7368 
X-CRM114-Status: UNSURE (   8.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series introduces support for the Novena board.
This support is basic but enough to boot Barebox.

The last patch requires my previous patch series here:
https://lists.infradead.org/pipermail/barebox/2023-January/041270.html

John Watts (5):
  ARM: novena: Add Kosagi Novena board
  ARM: novena: Setup RAM using static configuration
  ARM: novena: Require the PFUZE regulator
  ARM: novena: Read Ethernet MAC address from EEPROM
  ARM: novena: Use DDR3 information from SPD EEPROM

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/novena/Makefile               |   4 +
 arch/arm/boards/novena/board.c                |  81 ++++++++
 arch/arm/boards/novena/ddr_regs.h             | 119 +++++++++++
 .../boards/novena/flash-header-novena.imxcfg  |   6 +
 arch/arm/boards/novena/lowlevel.c             | 195 ++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6q-novena.dts                 |  19 ++
 arch/arm/mach-imx/Kconfig                     |   9 +
 images/Makefile.imx                           |   2 +
 11 files changed, 438 insertions(+)
 create mode 100644 arch/arm/boards/novena/Makefile
 create mode 100644 arch/arm/boards/novena/board.c
 create mode 100644 arch/arm/boards/novena/ddr_regs.h
 create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
 create mode 100644 arch/arm/boards/novena/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-novena.dts

-- 
2.39.0



