Delivery-date: Wed, 06 Nov 2024 20:03:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ4-005dY9-2b
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ4-0001so-MQ
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CMkZV3NVnyfXWGlHkY4vy1v1qF/Uut9VgfBCkgRilHE=; b=qj9kiu6jJ+yJqbT2YEQ0gpBCJG
	H4x3QVWpzo+55f2GWHNeTSOFr3HZCTV42JmZwSBOBhZOzQAgzxzbdZ7Ghx3lRmjCwzfLVzB4d0FHa
	T2Ki9TBd0KsjpG9SBAV0yBiXUSVGsN1oV9bXjQCnCE/dxg2GyihgRuROxhTSEND5Z+N2f1vFHtvtS
	mTu0ibXiPO9TjLwS8c65BOPiS9z3Thh4SBfFVnqPDNMoVspi6SAwb+7vyIG+pkel9ZDEUv0V613fI
	aLUKkPxDXhFKIPJKsd9wcuNq/QlbeKH9wX40+pI43pRzrJzma0Te4qMQJ/EajmQXVOviby7E1mnj7
	psorXqYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIY-00000004R24-2ZEL;
	Wed, 06 Nov 2024 19:02:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Pup-1pEb
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000VZ-1h; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-002LMd-2X;
	Wed, 06 Nov 2024 19:57:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-2F;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>
Date: Wed,  6 Nov 2024 19:57:18 +0100
Message-Id: <20241106185724.2526-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_573786_7679B7DD 
X-CRM114-Status: UNSURE (   8.31  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] ARM: Rockchip: fix OP-TEE as BL32 installation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series resulted while getting OP-TEE to work on RK3399.
There is no upstream OP-TEE support for the RK3568 or RK3588,
but the expectation that loading the blob is analogous to the
RK3399, which is fixed by this series.

Ahmad Fatoum (6):
  firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
  ARM: lds: move stack top section to front of rodata
  ARM: Rockchip: fix clang warning about passing 32-bit register operand
  ARM: Rockchip: save pointer to scratch memory in global variable
  ARM: Rockchip: implement tee.bin v1 header parsing
  ARM: Rockchip: use vendor blob OPTEE load addresses

 Documentation/boards/rockchip.rst |  11 ++--
 arch/arm/lib/pbl.lds.S            |   6 +-
 arch/arm/mach-rockchip/Kconfig    |  14 ++--
 arch/arm/mach-rockchip/atf.c      | 106 +++++++++++++++++++++++++-----
 arch/arm/mach-rockchip/rockchip.c |  16 +++++
 firmware/Makefile                 |  11 +++-
 include/mach/rockchip/atf.h       |  23 +++++--
 include/mach/rockchip/bootrom.h   |  30 +++++++--
 8 files changed, 170 insertions(+), 47 deletions(-)

-- 
2.39.5



