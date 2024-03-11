Delivery-date: Mon, 11 Mar 2024 10:11:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgm-000ptR-2A
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 10:11:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgi-0001Wc-Sc
	for lore@pengutronix.de; Mon, 11 Mar 2024 10:11:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OAjRI1QQ1VRv7/YjopGozRcQ+PxIVD9JsrNeAR7J5/c=; b=eOYwKLef8+kiLfDNVQ8EmyWnLD
	HN1dKmbz1zdPEWF0yAmZcpz3Jfrh9ziselqDyAbzT+vXXSVtgxKWBeQdriKh3P/P7g+l2Czi6U7K8
	d6M0YuVX8KBbCKoJJYZS84ouBM/1LKL1JlGfVsy7BclY1WQsUQfns/ZLhdVHz4owiMIkF9CRdB2BP
	nXYZwM3rdes40MK0t/LRr3mexB8YUaz6P6VwpZenT94kWW+enzEyXY66/L1iiUmbkYpY4beRDkqAy
	WNbSxT3eglCc7e1iD/yS3l+PAC6x81ZzE/bZjJ2Cb+PnSyt+T6Cw17lAnKdgpG28s82pNLZ4vgmuO
	wlO0WJUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfu-00000000kKg-23gn;
	Mon, 11 Mar 2024 09:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfp-00000000kHv-3PES
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 09:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-0000gO-Hb; Mon, 11 Mar 2024 10:10:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-005g48-2T; Mon, 11 Mar 2024 10:10:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfh-00ANLu-1f;
	Mon, 11 Mar 2024 10:10:14 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 10:10:07 +0100
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG/K7mUC/x3NSwqDQBBF0a1IjVNga4KarYQM2vg0RegPVVEEc
 e9pMjyTew8yqMDoXh2k2MQkxQJ3qej19nEBy1RMTd1c69Y5/nhNLGHvQ2ZLgcfkdeI121fhg8S
 FB2Ae+rHr2huodLJilv3/eDzP8wfIHytCcwAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_021021_983915_1E301F6F 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] arm: imx8mp: add karo electronics qsxp imx8mp som
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Ka-Ro QSXP[1] is a i.MX8M Plus solder down system on module. This
series adds support for the SOM itself on the QSBASE4 RDK. For ethernet
support on the QSBASE4 RDK, the Micrel phy driver gains support for the
KSZ9131 gigabit ethernet phy.

[1]: https://www.karo-electronics.de/qsxp

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Marc Kleine-Budde (4):
      net: phy: micrel: update id table from Linux kernel
      net: phy: micrel: add support for ksz9131 phy
      arm: dts: karo: import dts for karo-qsxp-ml81
      arm: imx8mp: add karo electronics qsxp imx8mp som support

Sebastian Reichel (1):
      of: introduce of_property_read_s32

Stefan Kerkmann (1):
      arm: dts: karo: add karo imx8mp-karo-qsxp-qsbase4

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/karo-qsxp-ml81/Makefile            |    4 +
 arch/arm/boards/karo-qsxp-ml81/board.c             |   35 +
 .../flash-header-karo-qsxp-ml81.imxcfg             |    9 +
 arch/arm/boards/karo-qsxp-ml81/lowlevel.c          |  102 ++
 arch/arm/boards/karo-qsxp-ml81/lowlevel.h          |    8 +
 arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c     | 1597 ++++++++++++++++++++
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx8mp-karo-qsxp-ml81-qsbase4.dts     |   86 ++
 arch/arm/dts/imx8mp-karo-qsxp-ml81.dts             |  160 ++
 arch/arm/dts/imx8mp-karo.dtsi                      |  407 +++++
 arch/arm/mach-imx/Kconfig                          |   10 +
 drivers/net/phy/micrel.c                           |  188 +++
 images/Makefile.imx                                |    2 +
 include/linux/micrel_phy.h                         |   49 +-
 include/of.h                                       |    7 +
 16 files changed, 2659 insertions(+), 7 deletions(-)
---
base-commit: 6883d32102d8a253f4fc2bcfafbf3767a725e3a8
change-id: 20240311-karo-imx8mp-som-board-upstreaming-9eef98b7735e

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



