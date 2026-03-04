Delivery-date: Wed, 04 Mar 2026 12:24:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLE-007xwc-2E
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:24:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLF-0002ZW-08
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:24:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1ACO8pQtBgEt5mpIKOr6JB+jkq8VfL2Lkj/BSFzVKY=; b=fBnK8YPenx84yj
	14Hh1OWLB2xeMyqRsWoq9OPqhSF41ZKkHBCgZUsRrDKGzBFjvKCx4/QIGxBVcmczZxc49YDsBGlWu
	C1IReztRr7iehTMa5/Hx2ttJ+9C9wc/xobGAXM9rZ7CUU1fZldOtKS1mV4dnUkOlLaGQd8G2RVwLa
	2AHC44mtpMf6LTbJXvHb71y2zAqeYCtQhjo+1KDLjQyIlK/cp4TImypTcXaW8zc0YBPsEXQ7mzDGq
	Y+fsFAFlrqfpGKYylTfgqMXhE6f+8g+e8+x9oKk9jXQpHVoeqHifxOgkZXhGw06hF/D4m3xthZHDL
	a5Uk0v+mCqx9STF63agA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKp-0000000H5HH-2FHd;
	Wed, 04 Mar 2026 11:24:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKm-0000000H5Ev-2q44
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:24:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vxkKj-0002He-S6; Wed, 04 Mar 2026 12:24:05 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 04 Mar 2026 12:23:41 +0100
Message-Id: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD0WqGkC/x2MuwqAMAwAf0UyG0ir+PoVcZCaagbb0ooI4r9b3
 e6GuxsSR+EEQ3FD5FOSeJdFlQWYbXYroyzZQZNuqKIaz4+QNBIePohB2a8O2RjsNTWWWVmqWsh
 9iGzl+t/j9DwvE+LGv2sAAAA=
X-Change-ID: 20260304-v2026-02-0-topic-imx8-ecc-9206fee1f037
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_032408_727620_61D994FD 
X-CRM114-Status: UNSURE (   8.11  )
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
Subject: [PATCH 0/4] ARM: i.MX8: add DDRC-ECC support
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
Also, a board_dram_ecc_scrub() function must be provided, so that the
RAM is initialized on startup.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
David Jander (3):
      arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
      drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
      arm: boards: protonic-imx8ml: Add ECC + scrubbing

Steffen Trumtrar (1):
      ARM: i.MX: esdctl: fix spelling of ad(d)ress

 .../boards/protonic-imx8m/lpddr4-timing-prt8ml.c   | 25 ++++++-
 arch/arm/dts/imx8mp-prt8ml.dts                     | 10 ++-
 arch/arm/mach-imx/Kconfig                          |  8 ++
 arch/arm/mach-imx/esdctl.c                         | 86 ++++++++++++++++++++--
 drivers/ddr/imx/imx8m_ddr_init.c                   | 73 ++++++++++++++++++
 include/soc/imx8m/ddr.h                            | 11 +++
 6 files changed, 203 insertions(+), 10 deletions(-)
---
base-commit: f4122cb473bf8ca2d3d84cf7cd3c981d1da3309f
change-id: 20260304-v2026-02-0-topic-imx8-ecc-9206fee1f037

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



