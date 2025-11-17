Delivery-date: Mon, 17 Nov 2025 20:17:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jX-0024jO-2z
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 20:17:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jX-00024c-8E
	for lore@pengutronix.de; Mon, 17 Nov 2025 20:17:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4aFBQnGIYlVr3bep1KEuUc+2YMs6lL8v9eTs5Ld8FIo=; b=dS0XuT17mn0u3BNMPntVMLGCM4
	nkWg4tuQRhHrtSn9U2uAuaFairNhyBJe2/ZjMGJrqaM6+wS+38+IfFLGHVdOSmQVY7cv6+LPbTUcG
	TY2XjZL274PXj81OqU5Ocox0e5xjmhlufUVa7dt/m3OQ23H+lI4+PtaxOhUhViBZoPr2P7dHaLoLr
	81F+BCf21veRWhg9WvOYPssRwkO2qjbjWsL20vKr+Cf8V+TaeuWu5GX/r/Pgtxda03CaytbaluQyq
	SNOYueNvQA5XnjjRN3Jrmd9Sqt23G4HNPAROMsrM41NbOjjmIahUN0mFqC+PziWsMZhdNqJMxPVyV
	s1iiGgZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4jA-0000000Gjhc-2EkV;
	Mon, 17 Nov 2025 19:17:28 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4j7-0000000Gjg7-3Okn
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 19:17:27 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 5AHJNUtK013562;
	Mon, 17 Nov 2025 19:23:30 GMT
Received: (from akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) id 5AHJNU30013561;
	Mon, 17 Nov 2025 19:23:30 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Date: Mon, 17 Nov 2025 19:23:28 +0000
Message-Id: <20251117192329.13516-1-akurz@blala.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_111726_136608_3AF2040B 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/1] Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Changes in v3:
- Link to v2: https://lore.barebox.org/barebox/aRrgLDG2tbcJ1dg0@pengutronix.de/
- Implemented detection of mmc1 compatible with barebox,deep-probe,
  thanks Sascha.

Changes in v2:
- Link to v1: https://lore.barebox.org/barebox/aRMOO3jH4a16GBI6@pengutronix.de/
- Remove explicit RAM size settings from lowlevel.c and dts since this can be
  autodetected. As consequence, both DP75SDI variants (Paperwhite 2 and 3) now
  share the same dts.
- Rebase to current
- Attempts to use barebox,deep-probe did unfortunately not work yet.
  Brief description of the problem:

Alexander Kurz (1):
  ARM i.MX6SL: Add Kindle generation 6/7 support

 .../boards/imx/amazon-kindle-6-7.rst          |  94 ++++++++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/kindle-mx6sl/Makefile         |   5 +
 arch/arm/boards/kindle-mx6sl/board.c          | 208 ++++++++++++++++++
 .../defaultenv-kindle-mx6sl/boot/mmc_kernel   |  11 +
 .../defaultenv-kindle-mx6sl/init/pmic         |  32 +++
 .../defaultenv-kindle-mx6sl/init/usbserial    |   4 +
 .../nv/autoboot_timeout                       |   1 +
 .../defaultenv-kindle-mx6sl/nv/boot.default   |   1 +
 .../nv/linux.bootargs.base                    |   1 +
 .../nv/linux.bootargs.console                 |   1 +
 .../nv/linux.bootargs.video                   |   1 +
 .../flash-header-kindle-mx6sl-256m.imxcfg     | 126 +++++++++++
 .../flash-header-kindle-mx6sl-512m.imxcfg     | 126 +++++++++++
 arch/arm/boards/kindle-mx6sl/lowlevel.c       |  84 +++++++
 arch/arm/configs/kindle-gen-6-7_defconfig     |  89 ++++++++
 arch/arm/dts/Makefile                         |   3 +
 arch/arm/dts/imx6sl-kindle-common.dtsi        | 167 ++++++++++++++
 arch/arm/dts/imx6sl-kindle-dp75sdi.dts        |  51 +++++
 arch/arm/dts/imx6sl-kindle-nm460gz.dts        |  65 ++++++
 arch/arm/dts/imx6sl-kindle-wp63gw.dts         |  40 ++++
 arch/arm/mach-imx/Kconfig                     |  17 ++
 images/Makefile.imx                           |  21 ++
 23 files changed, 1149 insertions(+)
 create mode 100644 Documentation/boards/imx/amazon-kindle-6-7.rst
 create mode 100644 arch/arm/boards/kindle-mx6sl/Makefile
 create mode 100644 arch/arm/boards/kindle-mx6sl/board.c
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video
 create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx6sl/lowlevel.c
 create mode 100644 arch/arm/configs/kindle-gen-6-7_defconfig
 create mode 100644 arch/arm/dts/imx6sl-kindle-common.dtsi
 create mode 100644 arch/arm/dts/imx6sl-kindle-dp75sdi.dts
 create mode 100644 arch/arm/dts/imx6sl-kindle-nm460gz.dts
 create mode 100644 arch/arm/dts/imx6sl-kindle-wp63gw.dts

-- 
2.39.5



