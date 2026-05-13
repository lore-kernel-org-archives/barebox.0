Delivery-date: Wed, 13 May 2026 14:21:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8b3-001Ffk-1i
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:21:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8az-0004PU-6s
	for lore@pengutronix.de; Wed, 13 May 2026 14:21:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LFS0J2n2mxkxY790GMxitnprYKqmUSqsopFuPrF3GX0=; b=mg2E+xZG0rww1G
	+zPTKGeWI6QVf54WTBOvtGqp/pQWsFIxMUscU5ps/pU0rQE2tmvzhEJwYOqvx1FrUyaRGi2Ws/obn
	zvlt0ahjpHbDyF4WHE2GN6eHY6Nw6hL33sCGGlWaWW68licIB1pGmDlrJs9sVNPuhlQGk5C4gXfNY
	Q8jQ6XBs3/KVgbjNTX4uc0br41Vyt/16UNnKA2s0UY3ZgtfElAwJM7BZb7rznk9AVBx5PW4B9It2P
	fWY1dGNVCzY8LeksY+g3hui3Kaz9Ze1b/2ZRs6MLrDfCsf0Zdpx5mDCNU+zTnfv9z+wWGnvFxBjFi
	GuUzsKR6jg9xoGcdXRVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zg-00000002STU-07ga;
	Wed, 13 May 2026 12:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zd-00000002SRq-4Ahc
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:20:27 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8Zc-0003rS-Ft; Wed, 13 May 2026 14:20:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:20:16 +0200
Message-Id: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIBsBGoC/x3MQQqAIBBA0avErBO0SKirRIvSGRsCDQciEO+et
 HyL/wsIZkaBpSuQ8WHhFBtM34E79xhQsW+GQQ9WT2ZUkhzdYVeXS5E4KEQ/HzTOVh8GWnVnJH7
 /47rV+gG679X+YQAAAA==
X-Change-ID: 20260513-socfpga-kconfig-eed9bf3960b1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052026_039687_6FC17F90 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] arm: socfpga: cleanup Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reorganize the SoCFPGA configuration menu. Move the entire configuration
into a submenu, move the ARCH for all SoCs above the board options and
move special features that depend on the ARCH below the boards.

Patch 1 fixes the formatting of the Kconfig file and replaces
spaces with tabs.

Patch 2 reorganizes the menu.

Patch 3 regenerates the defconfig files after the menu reorganization.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (3):
      arm: socfgpa: use tabs for indent in Kconfig
      arm: socfpga: reorganize Kconfig menu
      arm: socfpga: regenerate defconfig files

 arch/arm/configs/socfpga-agilex5_defconfig |  1 -
 arch/arm/configs/socfpga-arria10_defconfig |  8 +----
 arch/arm/configs/socfpga-xload_defconfig   |  2 +-
 arch/arm/configs/socfpga_defconfig         |  4 ---
 arch/arm/mach-socfpga/Kconfig              | 56 ++++++++++++++----------------
 5 files changed, 29 insertions(+), 42 deletions(-)
---
base-commit: 2cb5e0014a37160731ad6eb6d7f7d846394db362
change-id: 20260513-socfpga-kconfig-eed9bf3960b1

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



