Delivery-date: Thu, 12 Mar 2026 12:35:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eJy-00Anyl-1z
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:35:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eJy-0005bu-Ss
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:35:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HuzxZWltso7wvH5VVMCdpFrKFTVHZ+7kjoE6mNRG4/0=; b=tfd6/RGds9d8k+
	b2uN58nYY//Cyh04aOvOdVcDHlBD+Fhvdnhncq5vKbi/CxukqTHy9+i/LuWi+9oE/eUTduPnTADF5
	s+TAHVjdGC5Nj3C/CVfynILwWGC2mKbb7NseqWMVPj+abbhwKmaiTsJy/mgga1IIY6NOGyGbxsW/p
	o2nScjw09KAUgJzUhcGs0b/pKXzZE/i/8RX+p29pqvWXmFwTHUDR5i9IkY/XS/ug6zolPWtDFkyiQ
	inWeq1SPEv6zFzqlgUcsyLJAq9PpekE8tkvGn5rnstWrwiD4OAjqRIly1jmkzoevAFV+qUGluhX39
	nBcmN/+7XCDQZ7yKhv8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJQ-0000000Dxjh-0w55;
	Thu, 12 Mar 2026 11:34:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJN-0000000DxiV-38Fv
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:34:43 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0eJM-0005Mw-0R; Thu, 12 Mar 2026 12:34:40 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 12:34:30 +0100
Message-Id: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMeksmkC/43Nyw7CIBCF4VcxrMXAQC9x5XsYF3Q6tCx6ESqpM
 X13qRtNNI27Of/imwcL5B0Fdtw9mKfoghv6NPR+x7A1fUPc1WkzEJALkIrH9eJCcsGnYXTIp2t
 nym6cA6+sAiONIqwyloDRk3XzCz9f0m5dmAZ/f/2Kcq1/sXGNWltAFAVasqeR+uY2+aF386Emt
 toR3p4S+aYHKQqDWMqCMkv6p6c+PAmbnkpRGWUr0BlSWX95y7I8AalVohZpAQAA
X-Change-ID: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_043442_262281_98EA5743 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/3] ARM: boards: add support for tqma8mpxs boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extending the TQMA8MPxL board code with support for TQMA8MPxS, as they
share the same processor and a lot of the same codebasis, but differ in
small changes.

Both now have support for the different RAM configurations, but no ECC
support yet.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v4:
- Split patch into two. One to rename the tqma8mpxl and the second to
  add support for tqma8mpxs (Thanks Marco)
- Link to v3: https://lore.barebox.org/barebox/20260312-v2026-01-0-topic-tqma8mpxs-v3-0-3a3fb245ce8d@pengutronix.de

Changes in v3:
- append "-upstream" to dts from upstream, which are not yet in linux.
- squashed commits 1 and 2 to have the upstream dts in the same commit
  as the board changes.
- Link to v2: https://lore.barebox.org/barebox/20260306-v2026-01-0-topic-tqma8mpxs-v2-0-0acc817e5fe4@pengutronix.de

Changes in v2:
- Moved dts to arch/arm/dts, since they are not upstream. (thanks Ahmad)
- Link to v1: https://lore.barebox.org/barebox/20260213-v2026-01-0-topic-tqma8mpxs-v1-0-44f2cc07cfef@pengutronix.de

---
Fabian Pflug (3):
      ARM: boards: tqma8mpxl: rename to tqma8mpxx
      ARM: boards: tqma8mpxl: extend with support for xs
      ARM: boards: tqma8mpxx: add no_ecc ram timings

 Documentation/migration-guides/migration-master.md |   10 +
 arch/arm/boards/Makefile                           |    2 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c               |  113 --
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/Makefile  |    0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/board.c   |   17 +-
 .../flash-header-tqma8mpxx.imxcfg}                 |    0
 arch/arm/boards/tqma8mpxx/lowlevel.c               |  196 ++++
 .../{tqma8mpxl => tqma8mpxx}/lpddr4-timing.c       |  763 +++++++++++++-
 arch/arm/configs/imx_v8_defconfig                  |    2 +-
 arch/arm/configs/multi_v8_defconfig                |    2 +-
 arch/arm/dts/Makefile                              |    2 +-
 .../dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts   |  402 ++++++++
 arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |   15 +
 arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi        | 1075 ++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |    5 +-
 images/Makefile.imx                                |    2 +-
 16 files changed, 2465 insertions(+), 141 deletions(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20260213-v2026-01-0-topic-tqma8mpxs-bf32a1a3ecb5

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



