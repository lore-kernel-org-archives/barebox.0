Delivery-date: Tue, 01 Nov 2022 19:08:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgG-00BAxy-Jq
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgF-0007Bo-8g
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=221klEk+NFoT35ygVWKHHQ19oP1WWzhzuyDhXs3rIhs=; b=MzQktWM4ZaW4nPXTMHXyyErdLD
	rLyLk9zjtibwv/t6c5uaenpBRWa8k4hTNgRTBPoMReKCRRJTRfZ8Ohis8KWtm5sFI5hJ6fSJZjvR/
	Zgx4iGIrfgIK60kJIKBcKdQg3A6cQkfTK5Xyw69tzdhrJagdVTwqgO9b9DoPdYTRgNw/3I5sOQQL4
	xKSY2hRql6LgvRUZL+Kr8f9EhU7SYQpIg+F2Q7d2cvR9e30YQUz0GOQSz9QBS3FGgXEix61PReSv+
	fZndLuy8yhSawARQHz1h9KC/nqlKuHZpnR4R0WxciGewTguWpQevlf/7O/1RRHFh0nuV1xAsNN147
	AG/DBHyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvf2-006Pcv-Aa; Tue, 01 Nov 2022 18:06:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvex-006PaJ-OW
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006xr-1o
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j48-8j
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aL-DW
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  1 Nov 2022 19:06:38 +0100
Message-Id: <20221101180643.244270-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110647_829323_02A81715 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] ARM: i.MX8M: implement bootrom log viewing command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ROM event log of the i.MX8M* can help with debugging boot
failures as it lists various information about boot mode, image,
fallback and recovery as well as timestamps when some actions along
the boot process occurred.

This adds a new bootrom -l command that supports reading this out.

Ahmad Fatoum (5):
  ARM: asm: set aside new arm_mem_scratch space
  ARM: i.MX8M: esdctl: export imx8m_barebox_earlymem_size
  ARM: i.MX8M: define imx8mX_scratch_space() helper
  ARM: i.MX8M: support saving BootROM event log before clobbering OCRAM
  ARM: i.MX8M: implement bootrom log viewing command

 arch/arm/include/asm/barebox-arm.h          |   7 +
 arch/arm/mach-imx/Kconfig                   |   4 +
 arch/arm/mach-imx/Makefile                  |   1 +
 arch/arm/mach-imx/atf.c                     |   3 +
 arch/arm/mach-imx/bootrom-cmd.c             | 220 ++++++++++++++++++++
 arch/arm/mach-imx/esdctl.c                  |  11 +-
 arch/arm/mach-imx/include/mach/esdctl.h     |   3 +
 arch/arm/mach-imx/include/mach/imx8m-regs.h |   8 +
 arch/arm/mach-imx/include/mach/romapi.h     |  11 +
 arch/arm/mach-imx/include/mach/xload.h      |  11 +
 arch/arm/mach-imx/romapi.c                  |  26 +++
 arch/arm/mach-imx/xload-common.c            |  10 +
 commands/Kconfig                            |   8 +
 13 files changed, 320 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-imx/bootrom-cmd.c

-- 
2.30.2



