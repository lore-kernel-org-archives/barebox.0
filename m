Delivery-date: Fri, 06 Mar 2026 11:32:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySTo-008eAR-0Y
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:32:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySTo-0007r7-ER
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:32:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0BXXWf/7avMptutfWwccLACn8FBT18KqmlCkSWGWJdg=; b=n8V81WIQgjQzVQ
	9awuTdoWqQIWYWp99sepx9dUR+couZ59gtp9Y+r2EhYIO0ahVTasyA7ldO6iV5m3n3HzHwlkeqqFG
	o++gArOvg0MEoiYMvC4QiOo9EjvAOICF6+H2a+XqVa1kWTbob7JHoIcoyq3nksvl58/HFEIeHJWO1
	FtF5bD7JWN2UvqqhP0/NUYb54rE4KUIxYcTDKIgFsDWacQGqgk4mgpSNv/tiZNQTvcv8mG1mhrFch
	HsJy3bABg54Zsfyeq2Pbg6VAkuA5uxK7JuLknw6Oa966W+1/9X1gH5q8emwKroGyyokPjbh9OgDFX
	I8UWz9foALrcSn+t+iSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySTK-00000003TTy-13Ip;
	Fri, 06 Mar 2026 10:31:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySTF-00000003TSt-3nr8
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:31:53 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vySTE-0007b0-C3; Fri, 06 Mar 2026 11:31:48 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 06 Mar 2026 11:31:40 +0100
Message-Id: <20260306-v2026-01-0-topic-tqma8mpxs-v2-0-0acc817e5fe4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA2tqmkC/42NSw6DIBRFt2IY9zWA9pOOuo/GAeJD30CgQImNY
 e9FV9DZPWdw7sYiBsLIHs3GAmaK5GwFeWqYnpWdEGiszCSXVy5FC3lfwAVwSM6ThvRe1H3xa4T
 BtFIJ1aIeLqwGfEBD6xF/9ZVnismF7/GVxW7/yuZddp2RWvObNmieHu30ScFZWs8jsr6U8gOXU
 FegyQAAAA==
X-Change-ID: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023149_970005_117B2180 
X-CRM114-Status: UNSURE (   7.17  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] ARM: boards: add support for tqma8mpxs boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extending the TQMA8MPxL board code with support for TQMA8MPxS, as they
share the same processor and a lot of the same codebasis, but differ in
small changes.

Both now have support for the different RAM configurations, but no ECC
support yet.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v2:
- Moved dts to arch/arm/dts, since they are not upstream. (thanks Ahmad)
- Link to v1: https://lore.barebox.org/barebox/20260213-v2026-01-0-topic-tqma8mpxs-v1-0-44f2cc07cfef@pengutronix.de

---
Fabian Pflug (3):
      dts: arm64: freescale: add imx8mp-tqma8mpqs board
      ARM: boards: tqma8mpxl: extend with support for xs
      ARM: boards: tqma8mpxx: add no_ecc ram timings

 Documentation/migration-guides/migration-master.md |   10 +
 arch/arm/boards/Makefile                           |    2 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c               |  113 ---
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/Makefile  |    0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/board.c   |   17 +-
 .../flash-header-tqma8mpxx.imxcfg}                 |    0
 arch/arm/boards/tqma8mpxx/lowlevel.c               |  196 ++++
 .../{tqma8mpxl => tqma8mpxx}/lpddr4-timing.c       |  763 +++++++++++++-
 arch/arm/configs/imx_v8_defconfig                  |    2 +-
 arch/arm/configs/multi_v8_defconfig                |    2 +-
 arch/arm/dts/Makefile                              |    2 +-
 arch/arm/dts/imx8mp-tqma8mpqs-mb-smarc-2.dts       |  388 +++++++
 arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |   15 +
 arch/arm/dts/imx8mp-tqma8mpqs.dtsi                 | 1066 ++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |    5 +-
 images/Makefile.imx                                |    2 +-
 16 files changed, 2442 insertions(+), 141 deletions(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



