Delivery-date: Mon, 19 Jan 2026 16:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhqni-0034Ap-0d
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 16:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhqng-00079H-Vs
	for lore@pengutronix.de; Mon, 19 Jan 2026 16:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t7yk7iB69VOWJvuKyH/bi75G7RA4DcEngnyJEaD1jkg=; b=fTcyrjS28kVTh6
	+k0hN+w/ALobgH49r2try1fY4GEd5RrZu3pbFBAzdh3m4CMmDBBhqsh3K9xMJKqJVUYCQvEcR4jjs
	W2oksSIGyxLu9qqa927c+RE9gA1sx4C4CbYA7v0On6jXGMukI3/AYt3MU0wT/ozzeaBAJgiTz1PFy
	CTZWMITLnHu1Rr4wxfNLYX1lruIxfhL1QdAxvYaXfHEYWy0XSfo7E/4oynN50Ap/nIcArxUxeJ6f7
	rtDB/Tc/4I4iQXBM1G23jRZDKodrud6pUrs/Xklv2eDgRSyheIHG7NnZafYMrwasUmKBjwB3HbQM1
	+SULUqLbwRr9t1kYwzOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqmd-00000002J7v-0MB0;
	Mon, 19 Jan 2026 15:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqmW-00000002J6W-3IGa
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 15:03:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1vhqmT-0006gy-9F; Mon, 19 Jan 2026 16:03:01 +0100
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Mon, 19 Jan 2026 16:02:54 +0100
Message-Id: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ5HbmkC/x3MPQqAMAxA4atIZgNG/MOriENpEs1QLS2IIN7d4
 vgN7z2QJZlkmKsHklyW7TwKqK7A7+7YBI2LoW3aoSHqUKOihXsKETVxQO9Hcqx9x0xQqphE7f6
 Py/q+H0OGhbJhAAAA
X-Change-ID: 20260114-fpf-imx8mp-frdm-cc71adf54dd1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_070304_831410_7647384A 
X-CRM114-Status: UNSURE (   8.43  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] add imx8mp-frdm board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
display interfaces, camera connectors, and standard expansion headers.

This patch stack integrates the board into Barebox. The DT was taken
from the upstream Freescale i.MX ARM sub-architecture kernel tree, which
has not been integrated into the master yet. Furthermore, the DT was
enriched by SD card, Ethernet and USB support taken from the NXP I.MX
repository [1].

The cbtl04gp node in the DT sets a compatible for a driver that does not
yet exists in the upstream Linux kernel. Thus, it is not yet possible to
use the USB-C SuperSpeed mode in both orientations.

[1] git@github.com:nxp-imx/linux-imx.git

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
Fabian Pfitzner (3):
      ARM: i.MX8MP: add imx8mp-frdm board
      dts: backport NXP i.MX8MP FRDM board dts
      dts: imx8mp-frdm: import downstream changes

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/nxp-imx8mp-frdm/Makefile           |    4 +
 arch/arm/boards/nxp-imx8mp-frdm/board.c            |   36 +
 .../flash-header-imx8mp-frdm.imxcfg                |   10 +
 arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c         |  145 +++
 arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c    | 1119 ++++++++++++++++++++
 arch/arm/configs/imx_v8_defconfig                  |    1 +
 arch/arm/configs/multi_v8_defconfig                |    1 +
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx8mp-frdm.dts                       |  784 ++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   10 +
 images/Makefile.imx                                |    2 +
 12 files changed, 2114 insertions(+)
---
base-commit: 6a22100e120a81c606b7e41d69814205006c7256
change-id: 20260114-fpf-imx8mp-frdm-cc71adf54dd1

Best regards,
-- 
Fabian Pfitzner <f.pfitzner@pengutronix.de>



