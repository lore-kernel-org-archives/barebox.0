Delivery-date: Mon, 03 Mar 2025 10:02:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gY-009GoL-19
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gX-0004CH-0O
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tlVANkEGYb35sYDote3DJhmg5fAVBJbazubaktf/t90=; b=kGE6RA9Mbp+k2c
	ImpgIm3PP6XPp2PVRc7r6rWqnmKrRMCYa2XkQiR6xPktYRKvuqM5NC0sImEAbWx1+jSUJDL3iuDHC
	2WiKbbkVHdNT0jRvQy5yY8MXeJfBVZAZkBUpP+59mE6mBMxD2/KD1JM8kFpN3DPqQLzHP/qcFrj/m
	//2JGKB+pHt2fjE7mDIJOXtXyF/D22zgWuDIEiuBRwcRkvzGgnx0V7xplgTVYeblw3dqctqW+06jC
	t9Eq5s2GWXh3oVZUZ2tllCSpt74DxRACnpcOiuXOlL7RNCKCw+x5k8mdyY1HiaKmS3y0pDquD2Tgv
	ay3zY7+cerX6KD+j+FCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g2-000000002pB-0RbF;
	Mon, 03 Mar 2025 09:01:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e0-000000002OQ-1pB7
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1dx-0003IF-Kl; Mon, 03 Mar 2025 09:59:21 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:16 +0100
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGRvxWcC/x2NMQ7DIAwAvxJ5riUD6pKvRB3ANYmXgEyFKqH8P
 bTb3XI3oImpNFiXASZdm5ZzinsswEc8d0F9TwdP/kmBAvYfIXkk/JSqjK1wrnvEaKbREabsWcg
 FSZxgZqpJ1u9/sb2u6wadIZG9cgAAAA==
X-Change-ID: 20250303-v2025-02-0-topic-socfpga-arria10-bf2ce013ebcb
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_005924_475694_FAD58688 
X-CRM114-Status: UNSURE (   7.06  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] SoCFPGA: Arria10: sdram: cleanup and fix DDR driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the L4WD0 is left enabled on startup, depending on handoff files
and its PLL settings, the DDR code might hang while waiting for the
calibration to be successful. Rework this code and cleanup the rest of
the driver a little bit while we are at it.

Tested on an Enclustra PE1 board.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (5):
      ARM: SoCFPGA: move wait_on_timeout to generic
      ARM: SoCFPGA: arria10-sdram: cleanup emif_clear
      ARM: SoCFPGA: arria10-sdram: cleanup emif_reset
      ARM: SoCFPGA: arria10-sdram: remove workaround
      ARM: SoCFPGA: arria10-sdram: cleanup ddr_setup

 arch/arm/mach-socfpga/arria10-sdram.c | 196 ++++++----------------------------
 arch/arm/mach-socfpga/arria10-xload.c |  16 ---
 include/mach/socfpga/generic.h        |  16 +++
 3 files changed, 46 insertions(+), 182 deletions(-)
---
base-commit: 2afd1a809f1a41f1dd42b95c2bc0ae74853b475b
change-id: 20250303-v2025-02-0-topic-socfpga-arria10-bf2ce013ebcb

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



