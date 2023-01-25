Delivery-date: Wed, 25 Jan 2023 17:44:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKisp-001i0c-Pu
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 17:44:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKism-0007jC-9J
	for lore@pengutronix.de; Wed, 25 Jan 2023 17:44:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9aMmX61HMX4UoL4KZlrnIbEg7TIiocDkZzM3I+uUx9E=; b=o0i2mREX4KAICfl/Ily3xOoAXl
	Tnu+YkCTRNGJvtyKwaCF0MBYl5eWYaBR6Hu9zPVWaHVgX7M4yyrakHkLgeW6qdhJwFP8hn+K3T8vV
	+KrETkCMD9p6QFOiC6nB+EA+UqxJQiG4mD4BIe+xkYiWtFt8oD8Cgg3M4y5bVlKW3OBKRjPCc1sEv
	33HMwzKLp97a5qQd68n7RdMZUgeMi6AWhw05PpAC/T1er2fUa0zZvPtN0gj3L9u0P3OSP4n7xv2rZ
	lpDtJ2W6dJeM+LPLYoLBU3EfXHSeUpixtY/wg2gwsvbKM7CiFbS8vJeoC+anEg1N7hr7cerEMu6R7
	8tp5Q0+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKirK-0080RO-Ce; Wed, 25 Jan 2023 16:42:50 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKirE-0080Nr-DZ
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 16:42:46 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674664960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9aMmX61HMX4UoL4KZlrnIbEg7TIiocDkZzM3I+uUx9E=;
	b=QY4NdAGb3qa3uk7QbGREgMONCMKNsjs1+gCaOJCR7ZrQHE3A1FKhd/Mo8ojG6YW4YELVCn
	8qYX6CjxvBabp4xuKlJ4vyHY+GyQcpRymr0rFuXtsf8JQkVkeynr6qniZTtK1guHfhz2O2
	AxYXSVaJsnrynJW47rk/aUSNdGUozyx0066QxFNMKU50ry+O6rIjOkEcwEmPZJhKOwEhyK
	GYJlDCK/a8M6eg5NdlUzYkNY8MDwX1iUUkjKAZOCRV3TL6Eat8Bsh/uQqKupPYnHjWiTcp
	lvZP0k05GAymsKmlmtNVRfPMmtyMKz9tDFcJwtyrO+gvS34wtF/6lnK0HUPpHQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu, 26 Jan 2023 03:42:26 +1100
Message-Id: <20230125164230.2328043-1-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_084244_888412_F276CD44 
X-CRM114-Status: GOOD (  10.30  )
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
Subject: [PATCH v2 0/4] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series introduces support for the Novena board.
This support is basic but enough to boot Barebox.

The EEPROM code here is included in anticipation for reading the features
flag in the future when more board features are supported.

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
 arch/arm/boards/novena/board.c                | 114 ++++++++++
 arch/arm/boards/novena/ddr_regs.h             | 119 +++++++++++
 .../boards/novena/flash-header-novena.imxcfg  |   6 +
 arch/arm/boards/novena/lowlevel.c             | 198 ++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6q-novena.dts                 |  19 ++
 arch/arm/mach-imx/Kconfig                     |   8 +
 images/Makefile.imx                           |   2 +
 11 files changed, 473 insertions(+)
 create mode 100644 arch/arm/boards/novena/Makefile
 create mode 100644 arch/arm/boards/novena/board.c
 create mode 100644 arch/arm/boards/novena/ddr_regs.h
 create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
 create mode 100644 arch/arm/boards/novena/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-novena.dts

-- 
2.39.0



