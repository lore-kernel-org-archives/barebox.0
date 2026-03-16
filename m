Delivery-date: Mon, 16 Mar 2026 18:22:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Be1-001Vi3-1a
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:22:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Be0-0005PG-Sz
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:22:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AvlhmSU/DH9GVzh1ddYVppB849uaVR8oFC3VPDF+wPc=; b=bZiwiGly+IQUGj
	b11Yk3f8g/iFLVoFVvw3MpMdTpzYmWn8q2u8py09TypTxKbBAIpqH5WSFINXN/h/F0DHUL/bN4Uv3
	+7Byx3q76tkmrHmn1RBSAn1u4LXF1/4QyYcgVRPODezmrrMbjcMeOYY+Qe1b2IXB3sDc2w81rgXf3
	z1Y7C6Z8xH6wRc7bkD29O2xHNQLFaQLF22Bj7RtBXGiH/3TbGDstsbj/kwU9hWRQ7GhdG3ytIDuH0
	aqdSchpqgtVWgGISHUkG2dIi95t2TI7D/hTvHe5wnRIVe0qPN7HvV/L/dwTLkjot1B5J0o8GKIL5D
	1goLRcHIIjLyndXiOJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bda-00000004YVS-0Jqn;
	Mon, 16 Mar 2026 17:21:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdY-00000004YTI-30BW
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=AvlhmSU/DH9GVzh1ddYVppB849uaVR8oFC3VPDF+wPc=; b=B/rnXalcBOwEvTRH43kCll5r2S
	VvGRTeOYmDt0WCCVr40ZEepmjUw3SKQisYKV+E+CI1XCJvqv3IDOADpTL4FwXyLju8izebAu+6gQA
	3dB7fpZxJPKPu3/O4Nz7+uGOpJuLQM5UN0xOSiIe5rpl+kf3HPrAHl04uXBrnBquNt3OjjCxwVQGs
	/cKvFXcRvl++4Eyl4Km/2YRVQdYl33U8zIjIls5rlNJE4ix2XsTTGWTOheMkvgmDaYFctrsTD5SZA
	zpBnk1gaSP3aOdv+1AVltfWcxPTziQtCBmUeBTDrofji+0PAMHD6YB/bHixZAm/YRP7SwPk4Cr8/P
	vJMAo7KQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdV-00000007JhP-2msX
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004ff-8i; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi4-2T;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2a6V;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:13 +0100
Message-Id: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAk8uGkC/x2MQQqAMAzAviI9O3CKin5FPFTXaQ9TaUGFsb87P
 AaSRFASJoWxiCB0s/J5ZLBlAeuOx0aGXWaoq7qrGtuZ9QyXkCo541nCg0KGPLYW+8Xh4CCXWfD
 8/tdpTukDW36AvWUAAAA=
X-Change-ID: 20260316-compressed-firmware-efa51a7bda9d
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=2556;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nS3VS4Dro+JV/bAxW+fEeWKrSt8Ulv4GJnyuBgPXJsg=;
 b=ozPvnhSMLQW7zs4OFraVz9kMC8/mHJTXRTA4y/RMx2NI1toAiNQxpzrSDFrDhCj7F6T8w5fmv
 Rr51bS4gLb+C3PBwcXk+CmmCRdUXVZF0kdEfTnaCYgzioNO4jTJPnV4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172149_819046_37B55A84 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
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
Subject: [PATCH 0/9] Firmware: support compressing firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TF-A and OP-TEE can reach significant sizes nowadays and are currently
uncompressed in the PBL. This series supports including them in compressed
form in the PBL. To accomplish this we introduce a new macro
get_builtin_firmware_compressed() which returns the compressed firmware
image. This can be decompressed afterwards with fwobj_uncompress().
There are always both the compressed and uncompressed images generated,
so the code can decide which one to use. This series switches over the
Rockchip TF-A and OP-TEE binaries to use the compressed variants.

Also included in this series are some unrelated patches I stumbled upon
while creating this series.

Sascha

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (9):
      ARM: socfpga: Drop unnecessary select USE_COMPRESSED_DTB
      ARM: radxa-rock5: Use compressed DTB
      ARM: Rockchip: Simplify retrieval of SoC specific addresses
      firmware: Move firmware assembly generation to scripts/gen-fw-s
      firmware: Use struct fwobj for get_builtin_firmware APIs
      firmware: Add compressed firmware symbols for PBL
      firmware: Add fwobj_uncompress() for decompressing firmware in PBL
      ARM: Rockchip: Use compressed OP-TEE binary
      ARM: Rockchip: Use compressed TF-A binary

 arch/arm/boards/radxa-rock5/lowlevel.c   |   8 +--
 arch/arm/boards/tqma6ulx/lowlevel.c      |   7 +--
 arch/arm/boards/webasto-ccbv2/lowlevel.c |   7 +--
 arch/arm/mach-imx/atf.c                  |  84 +++++++++++--------------
 arch/arm/mach-imx/ele.c                  |  12 ++--
 arch/arm/mach-imx/esdctl.c               |   7 +--
 arch/arm/mach-layerscape/tfa.c           |   7 +--
 arch/arm/mach-rockchip/atf.c             | 103 ++++++++++++++++++++-----------
 arch/arm/mach-socfpga/Kconfig            |   2 -
 arch/arm/mach-socfpga/atf.c              |   7 +--
 drivers/ddr/imx/ddrphy_train.c           |  97 ++++++++++-------------------
 drivers/mci/imx-esdhc-pbl.c              |   7 +--
 drivers/net/fsl-fman.c                   |  11 ++--
 firmware/Makefile                        |  65 ++++++-------------
 include/firmware.h                       |  37 ++++++++---
 pbl/decomp.c                             |   7 +++
 scripts/gen-fw-s                         |  87 ++++++++++++++++++++++++++
 17 files changed, 311 insertions(+), 244 deletions(-)
---
base-commit: 52bb6e0cada8a82cf665668cfbdfcd4e4854a027
change-id: 20260316-compressed-firmware-efa51a7bda9d

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



