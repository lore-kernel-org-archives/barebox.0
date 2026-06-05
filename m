Delivery-date: Fri, 05 Jun 2026 15:08:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHW-002cq6-0C
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 15:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHV-0005Pe-92
	for lore@pengutronix.de; Fri, 05 Jun 2026 15:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KL3q/CQBsW0BQwk+xN8iYTm0lYaRS7ufsqCKOQzxiCI=; b=juf2Vlp41EWKQD
	0zTBPoF+UMuzuEDHhQD19dpG+Yedj1pP72h38WLxn6chFrGs6i8Hh7k7BTH7vWv8oAIlzmdNwocsk
	hnG97fFx9H1G5/w7UOkYQbwZ+EN7YJGah8SerkBK6qTTkMpWXfLH1lnQKydWbqlJ09a3s3cZ7Uqkc
	AnkkCUX+Fw9OuPC4qBPTAaMG7RPh7LrTfNYgtvLH4r7QKPPEfC1inRdoaGbZgB5urdBffkt309V38
	81iJ5uVblZtvCUNaT4ffiIpVO22ODBMPtEzfn51JGJIGIADT7KCX0vRYuiAaTejW02ioVwumtamlp
	iaMphj9PVS6d+nMt/tDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG9-00000000eoS-0EDy;
	Fri, 05 Jun 2026 13:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG5-00000000emd-1hNX
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 13:06:46 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVUG3-0004ul-NE; Fri, 05 Jun 2026 15:06:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 15:06:42 +0200
Message-Id: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOLJImoC/x3MTQqAIBBA4avErBswKYmuEi38mWxINBRCiO6et
 PwW7z1QKDMVWLoHMt1cOMUG2XdgDx09IbtmkEIqocSIJdn98hq150B1QhtOnIQhR8oMdnbQyiv
 TzvW/rtv7flX2woFlAAAA
X-Change-ID: 20260604-socfpga-agilex5-clk-50bede6b1c8d
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_060645_458597_29ED7CFD 
X-CRM114-Status: GOOD (  10.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a v2 of the patch series [0] to synchronize the socfpga clock
driver with the kernel driver, which was applied by reverted due to a
compile error.

This series split the original patch into cleanup patches to synchronize
the entire socfpga clock driver with the Linux driver and another patch
to apply the synchronization of the actual Agilex5 driver. Otherwise,
the fix of the compile error would have resulted in inconsistent structs
for the various clocks.

I runtime tested this patch series only on Agilex 5, and only did build
tests on the other SoCFPGA platforms.

[0] https://lore.kernel.org/all/20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de/

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      clk: socfpga: sync arria10 clock initialization with kernel
      clk: socfpga: remove clk-phase setting

Steffen Trumtrar (2):
      clk: socfpga: sync clock structs with kernel
      clk: socfpga: agilex5: sync with kernel

 drivers/clk/socfpga/clk-agilex5.c    | 842 ++++++++++++-----------------------
 drivers/clk/socfpga/clk-gate-a10.c   | 104 +----
 drivers/clk/socfpga/clk-gate-s10.c   |  32 +-
 drivers/clk/socfpga/clk-periph-a10.c |  39 +-
 drivers/clk/socfpga/clk-periph-s10.c |  66 ++-
 drivers/clk/socfpga/clk-pll-a10.c    |  56 +--
 drivers/clk/socfpga/clk-pll-s10.c    |  57 ++-
 drivers/clk/socfpga/clk.h            |  15 +-
 drivers/clk/socfpga/stratix10-clk.h  |  48 +-
 9 files changed, 498 insertions(+), 761 deletions(-)
---
base-commit: 713a1e59dfea4516446822323b7c0db571cb214f
change-id: 20260604-socfpga-agilex5-clk-50bede6b1c8d

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



