Delivery-date: Sat, 21 Jan 2023 15:46:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8j-0012k9-2W
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8g-0000LU-Gx
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n7a18O9uyEAYholNxLxfG0Q3vxAq4QRq0KbMq7v7jAo=; b=0bhqX3VsY0YawyPVPrWsZPqv0t
	aLTjxaKiVBeqzrPuXzxWBpZymY50TUx77nFODiiUQ2S5poZjylmX1p0ADpFbKLygFaYPew67XkeDb
	2Y5r7uHm+RhZ9n/9Xoxdlixes9gZzfXN7XULpbKAJtk6TR9EqZfC5qUcRzPtEq7kvoWcd6dN8yuxs
	ZRmSlsQWs7entg8jJUeTh7+o97a8Fcc6IAhlaEXNUKIs+m/RRkc52xMHen21qYUb/WEYo+s17imZi
	6Bmhe3jVTDy/4OGE7MKsE55g0ms3qbzNo047vcQ86z4xidct3OJ58C5bVoJmPl+TBSOxBM7a6DoI9
	5HDvlUKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF6q-00DyEN-3d; Sat, 21 Jan 2023 14:44:44 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF6k-00DyDv-OO
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:44:40 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=n7a18O9uyEAYholNxLxfG0Q3vxAq4QRq0KbMq7v7jAo=;
	b=LfnKxxGVUJtdJKAKaVsaUHiGVnqmMH1rVA7+Xz6Nmouvo0guM0nf83a058N8HPq+em3vVC
	Ho0TM6AAS10EJuK0L3tQeWE03mxAnOxyH+KU9QKiIibP2RhXYQwcN8xF/irgJ6tVjJUJuf
	VvcyPvs4SMCN6alr6bhv4Eg8gGZuBhv6fhWpXl09xoNXWpcDP/II9WWWjrRmIMOX22DsHH
	2J3KUOaT4lMKhc8VcMcuGh8OlnxuNbzq5DEz8F1M364mePyTEaUSP7gmxsfd4dvrw9pjoM
	6P7DlcqNWe03OLL0GfzjPpXd/s92IxnKk9m+2YOfQsfhJ2G9szFx26GXhxXVcQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:22 +1100
Message-Id: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064439_548987_3422F905 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] Support generating DIMM parameters on more systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Boards that with swappable RAM sticks need to read SPD data and generate
useful parameters for the board's memory controller.

Currently the only board that does this is the ls1046ardb.
This patch series modifies and re-organizes that code so it's usable by
other boards.

I have used and tested this patch series on the i.MX6 and ensured the
existing board still compiles.

There is one API change: spd_read_eeprom now takes a memtype parameter.
This is required as the current code only supports reading DDR4 chips
while the i.MX6 uses DDR3 chips.

John Watts (7):
  I2C: i.MX: Add early i2c support for i.MX6
  ddr: fsl: Pass mclk_ps to ddr*_compute_dimm_parameters
  ddr_dimms: Move FSL dimm_params to include/ddr_dimms.h
  ddr: fsl: Remove includes to fsl-specific code
  ddr_dimms: Move ddr*_dimm_params to common
  ddr_dimms: Remove mclk_ps for DDR3 and DDR4
  ddr_spd: Support reading SPD from DDR3 sticks

 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 common/Makefile                               |   4 +
 .../ddr/fsl => common}/ddr1_dimm_params.c     |  13 +-
 .../ddr/fsl => common}/ddr2_dimm_params.c     |   7 +-
 .../ddr/fsl => common}/ddr3_dimm_params.c     |   6 +-
 .../ddr/fsl => common}/ddr4_dimm_params.c     |   6 +-
 common/ddr_spd.c                              |  16 ++-
 drivers/ddr/fsl/Makefile                      |   4 -
 drivers/ddr/fsl/fsl_ddr.h                     |  12 --
 drivers/ddr/fsl/main.c                        |   9 +-
 drivers/i2c/busses/i2c-imx-early.c            |  14 +++
 include/ddr_dimms.h                           | 114 ++++++++++++++++++
 include/ddr_spd.h                             |   3 +-
 include/pbl/i2c.h                             |   1 +
 include/soc/fsl/fsl_ddr_sdram.h               |  92 +-------------
 15 files changed, 166 insertions(+), 137 deletions(-)
 rename {drivers/ddr/fsl => common}/ddr1_dimm_params.c (96%)
 rename {drivers/ddr/fsl => common}/ddr2_dimm_params.c (98%)
 rename {drivers/ddr/fsl => common}/ddr3_dimm_params.c (98%)
 rename {drivers/ddr/fsl => common}/ddr4_dimm_params.c (98%)
 create mode 100644 include/ddr_dimms.h

-- 
2.39.0



