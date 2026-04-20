Delivery-date: Mon, 20 Apr 2026 14:45:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEo0N-00ELVd-2C
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 14:45:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEo0N-0000BE-35
	for lore@pengutronix.de; Mon, 20 Apr 2026 14:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9g3aNdLq97EfTuXbOI7pjkQ7xTitc0khPA9bU3TQaiA=; b=M3vn9iwDaMG9GR
	tvgEhFs6dLVLqxkfBxsBIHryHRVwIez+TWokx0c/35EHtwNXlj9UJBULUoQvPUnsb8UJjkcHgBGgC
	JngyRizLm/WTq8S2E4tn+N8YHOTZjdVIcmsX1IZJuEnvLUSae0l7li3o4m0+hOhTA7qBChoxXG2jA
	BMM5+Lbko+uBf8fOeOFV2dsp9cxP5BdCBXDxFdtxzrVdAVPmN5K1nVQcw4mN9ts724n/sluPBUN2J
	DPuhf2pYht1F3sv5ypcloE1nf6POkiXnqqMZH8Pz5ow0zx2XNZ+hm1aSL2Mb63ETlAZ8r4H1f9lri
	75DiAXqFqZn/0+ZtkGDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnzt-00000006u4r-0pyO;
	Mon, 20 Apr 2026 12:45:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnzq-00000006u32-1VBX
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 12:45:03 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wEnzn-0008Ta-DG; Mon, 20 Apr 2026 14:44:59 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Mon, 20 Apr 2026 14:44:49 +0200
Message-Id: <20260420-fpf-imx8mp-frdm-v2-0-5107d1976d4e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMEf5mkC/2WNQQ6CMBBFr0K6dgxTEMWV9zAsms4UZkFpWiQYw
 t2tJK5cvpf89zeVOAondS82FXmRJJPPoE+FsoPxPYNQZqVL3ZSINbjgQMb1NgZwkUaw9oqG3KU
 mQpVXIbKT9Sg+u8yDpHmK7+Ngwa/9tdq/1oJQAlbO2KZlMrp6BPb9a46Tl/VMrLp93z9zPjT3s
 wAAAA==
X-Change-ID: 20260114-fpf-imx8mp-frdm-cc71adf54dd1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_054502_418852_5284BD56 
X-CRM114-Status: UNSURE (   7.83  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] add imx8mp-frdm board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
display interfaces, camera connectors, and standard expansion headers.

This patch stack integrates the board into Barebox.
The DT changes were taken from the upstream Linux kernel,
which are not yet contained in any release [1].

The patch that integrates this DT shall not be merged, as it will be
dropped anyway after the next Barebox release, which integrates the
v7.1-rc1 DT patches.

[1] 95d7d7d2ad27d ("arm64: dts: imx8mp-frdm: add sd, ethernet, wifi, usb and hdmi support")

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
Changes in v2:
- Rebase onto next
- Apply upstream kernel device tree
- Link to v1: https://lore.kernel.org/r/20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de

---
Fabian Pfitzner (2):
      DONT MERGE: dts: backport NXP i.MX8MP FRDM board dts
      ARM: i.MX8MP: add imx8mp-frdm board

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/nxp-imx8mp-frdm/Makefile           |    4 +
 arch/arm/boards/nxp-imx8mp-frdm/board.c            |   36 +
 .../flash-header-imx8mp-frdm.imxcfg                |   10 +
 arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c         |  145 +++
 arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c    | 1119 ++++++++++++++++++++
 arch/arm/configs/imx_v8_defconfig                  |    1 +
 arch/arm/configs/multi_v8_defconfig                |    1 +
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx8mp-frdm.dts                       |   13 +
 arch/arm/mach-imx/Kconfig                          |   10 +
 dts/src/arm64/freescale/imx8mp-frdm.dts            |  538 +++++++++-
 images/Makefile.imx                                |    2 +
 13 files changed, 1833 insertions(+), 48 deletions(-)
---
base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
change-id: 20260114-fpf-imx8mp-frdm-cc71adf54dd1

Best regards,
-- 
Fabian Pfitzner <f.pfitzner@pengutronix.de>



