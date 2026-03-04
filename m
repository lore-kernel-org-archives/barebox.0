Delivery-date: Wed, 04 Mar 2026 12:01:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyo-007xP7-0E
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyn-0005oe-Cm
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0m5vQHjlXdYtd4wTyJ72uijWczr8PkevaLT/E8y6L+M=; b=zdJUmRybi3Po+E
	RbxOo4SjrXBeGGMbROToTGXpo4IlOFheJbzo7VOnHwErcgsQEdg8B/pu07iRCXzYa9P5dCqm9E1WA
	/cTto+Z1I0ScuNXV5GJhtNV6bvQ/mSOkbESih3jZ6hqpCn6JLEqLWVPn2o4gxCRQRpNsr/T69v1b7
	fVsqaRPMemS4wm5cv4BKTwkhmwRulc+hLLaR74k/wltSlYE2QNkcn0X2YYpvb7ef/4f7M7Dvk3Qvv
	AC/3r+Ff3rDGV6Ec3EHdvOlkkjz8ZsVGrTgGKYeKdv7dCyK3jh5R6manTuHPKH16Iu5s3X8arlqzV
	VTYPPx4VZtcV5RGZYMyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyJ-0000000H22O-43fH;
	Wed, 04 Mar 2026 11:00:55 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyG-0000000H203-0Ts8
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=0m5vQHjlXdYtd4wTyJ72uijWczr8PkevaLT/E8y6L+M=;
	b=tNIujZYtJU99cRpLj0JcP6suWmTfRgI5PdDVhTsC0tLQvlSjRE2+sQK+pKbuudZhzHSCsAqAu7JDG
	 jGx8bsOSYD0zJG6tpVsQXHolI3rkRGclPIaOgtNwsAvwXqesk1eqDHrnqWDi8uELlKN5o5zw6Xk2wN
	 s+xLMLS+NivRH/OGVOxYdaAmsUh8uxbEQjcgAsQHlbX2ndM5t8SO0SWlasKgfQ/7sBFGN38aEPioW3
	 AK/aobL3xSeZ/e0PiENm7oqSCeEESBLXP+jeUpuI//GKJhEANRDbcEZOOGxLGuH60yO8AGp7HPEI8W
	 mFpa2uLm4rvPurqHw9+D7Wl9lqQB9Qw==
X-MSG-ID: 64fec9f3-17b9-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:04 +0100
Message-ID: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030052_298077_33BD9C1A 
X-CRM114-Status: UNSURE (   7.78  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] ARM: boards: protonic-mecsbc: Generalization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>

Hello,
This patch series makes changes to the existing protonic-mecsbc
board support. These changes pave the way for supporting multiple
simular products with the same board support code. We'll be adding
products with a RK3562 chipset to the mecsbc board code. 
For that we'll change the board name to be more generic: protonic-rk356x

Regards,
Robin

David Jander (1):
  ARM: boards: protonic-rk356x: Fix crash with different boards

Robin van der Gracht (8):
  ARM: boards: Rename protonic-mecsbc to protonic-rk356x
  ARM: boards: protonic-rk356x: Remove VIN measurement
  ARM: boards: protonic-rk356x: Use devicetree alias for saradc
  ARM: boards: protonic-rk356x: Configure ADC and channels in model data
  ARM: boards: protonic-rk356x: Move mecsbc code to model init function
  ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
  ARM: boards: protonic-rk356x: Move bbu setup to device late init
  ARM: boards: protonic-rk356x: Read board serial and MAC address from
    eMMC

 Documentation/boards/rk35xx.rst               |   2 +-
 arch/arm/boards/Makefile                      |   2 +-
 arch/arm/boards/protonic-mecsbc/board.c       | 180 -----------
 .../Makefile                                  |   0
 arch/arm/boards/protonic-rk356x/board.c       | 297 ++++++++++++++++++
 .../lowlevel.c                                |   0
 arch/arm/configs/rockchip_v8_defconfig        |   2 +-
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/rk3568-mecsbc.dts                |   1 +
 arch/arm/mach-rockchip/Kconfig                |   6 +-
 images/Makefile.rockchip                      |   2 +-
 11 files changed, 306 insertions(+), 188 deletions(-)
 delete mode 100644 arch/arm/boards/protonic-mecsbc/board.c
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/Makefile (100%)
 create mode 100644 arch/arm/boards/protonic-rk356x/board.c
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/lowlevel.c (100%)

-- 
2.43.0


