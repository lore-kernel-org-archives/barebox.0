Delivery-date: Mon, 09 Mar 2026 08:47:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-009fvk-0r
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 08:47:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-0007ON-EZ
	for lore@pengutronix.de; Mon, 09 Mar 2026 08:47:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=87U1+n9nFs9fWT/f2hqzCHkIuDUwTS045U54WIDzJzs=; b=rMXfHQJ8TWcdPs
	452BnOD7UJ6WxV9FvqEBRgO6f2REjYnf1co5ImlcB880BQo9ZDyUMRdBq/ouYp8ToUU+3UM5PhwXo
	vcEzWXI95A09fZXo3eBk7/8Scso3siy0ihIrmcEFupF4GqcGAG+Khiotnpvoyx59eGTOMf8TjKWjV
	qvy78LeuJT7R4DDk73WV47qT/1xN7RQ22JAF5whWs9Vj667QAEXM0oUy1DCwTHQp8DbaXtQlKmCg+
	Rn+uw9PUw3dod0KkPPNafqvIZF5vaPDyvHuGyUi24ZJmYFQ8cntBebu4Tt8RejaDZcFjpmcyaFb4I
	Q/5YQuHv+m2MzOXii7Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJs-00000006pNE-36mL;
	Mon, 09 Mar 2026 07:46:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJm-00000006pKw-3r6Z
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 07:46:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzVJi-00074T-QP; Mon, 09 Mar 2026 08:46:18 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 08:46:12 +0100
Message-Id: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMR6rmkC/42NQQ6CMBBFr0Jm7ZhpkQKuvIdhYcoAs7AlLTYYw
 t0tnMDdfz/5728QOQhHuBcbBE4SxbsM+lKAnV5uZJQ+M2jShkq6YToSkkbCxc9iUd5rg2wttpr
 MwKwGKmvI+znwIOvpfnaZJ4mLD9/zKqmj/ceaVO5qItM2VUm2so+Z3fhZgneyXnuGbt/3H1sBb
 r3HAAAA
X-Change-ID: 20260304-v2026-02-0-topic-imx8-ecc-9206fee1f037
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_004623_000140_151DD43A 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] ARM: i.MX8: add DDRC-ECC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8 DDRC controller supports using inline ECC with the DDR RAM.
Inline ECC reduces the usable RAM size by 1/8: 7/8 RAM is for data and
1/8 RAM is for the ECC bits. Also, measuring random memory writes in
linux with

    stress-ng --memthrash 4 --memthrash-method chunk1 -t 1m --metrics

shows a performance decrease by ~10%.

If a board wants to support ECC, the lpddr4 RAM settings in the
according lpddr4-timing-* must be adapted to enable and configure the
ECC registers.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- prt8ml: move ram timings to header
- prt8ml: build two images: with and without ecc
- add RAM size and scrubbing function to generic code
- Link to v1: https://lore.barebox.org/20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de

---
David Jander (3):
      arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
      drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
      arm: boards: protonic-imx8ml: Add ECC + scrubbing

Steffen Trumtrar (1):
      ARM: i.MX: esdctl: fix spelling of ad(d)ress

 arch/arm/boards/protonic-imx8m/Makefile            |    2 +-
 arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c   |   21 +-
 .../protonic-imx8m/lpddr4-timing-prt8ml-ecc.c      |   26 +
 .../boards/protonic-imx8m/lpddr4-timing-prt8ml.c   | 1100 +------------------
 .../boards/protonic-imx8m/lpddr4-timing-prt8ml.h   | 1123 ++++++++++++++++++++
 arch/arm/dts/imx8mp-prt8ml.dts                     |   10 +-
 arch/arm/mach-imx/Kconfig                          |    9 +
 arch/arm/mach-imx/esdctl.c                         |   91 +-
 drivers/ddr/imx/imx8m_ddr_init.c                   |   95 ++
 images/Makefile.imx                                |    2 +
 include/soc/imx/ddr.h                              |    1 +
 include/soc/imx8m/ddr.h                            |    4 +
 12 files changed, 1370 insertions(+), 1114 deletions(-)
---
base-commit: f4122cb473bf8ca2d3d84cf7cd3c981d1da3309f
change-id: 20260304-v2026-02-0-topic-imx8-ecc-9206fee1f037

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



