Delivery-date: Wed, 15 Apr 2026 10:13:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvNl-00CLou-2S
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 10:13:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvNl-00033l-7b
	for lore@pengutronix.de; Wed, 15 Apr 2026 10:13:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oI1bhWXih6XrwJI3YFc7S3rYZTAFtu/eQQlylQtPg+I=; b=s5++APR5XiVglB
	+SnEJN7VyINNwWtN6noBRXkJOcuU5pt8c56SkUgvNase3TXOHwmkQ9dwDJdWNfSG3OWsKo+I/hSss
	EBVanXXAtTm6znPfV97jb9WWPlkOcQBAAfW1Kl/5pgnBdQT6WKrYPGon/MdMFU6QoleeEYXHi2HEB
	YdrrpkcGcbdL4osvJhWq44fieG5H+I6meDZE9BQH74qnKdsEaQ7Nhzdhei8cWTgCf1S7gGMhgsYF7
	n4XiK06OxJAr8T4AKJ73FpHRwX4A3GbaquIClbQ76eMUDoPUE4CQhQlp+a1y7iDyxba+3omj41NxM
	hMbUrHXbCq8RRFzTyMcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvNB-00000000mfw-0iPg;
	Wed, 15 Apr 2026 08:13:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvN8-00000000mer-25zU
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 08:13:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wCvN6-0002oP-P7; Wed, 15 Apr 2026 10:13:16 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 15 Apr 2026 10:13:08 +0200
Message-Id: <20260415-v2026-03-1-topic-arkona-at300-v2-0-e5ae4c029193@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJRI32kC/42OTQ6DIBCFr2JYl2YAf9Kueo/GBeqo0yZgAImN8
 e4Fe4Hu5nt5+d7szKMj9Oxe7MxhJE/WJJCXgvWzNhNyGhIzCbKGEhoe88VBccGDXajn2r2t0Vw
 HBcAFduWtGkQ1NjeWHIvDkbbT/2x/7NfuhX3I0tyYyQfrPucDUeTev1tRpByh7hoFFShZPxY00
 xqcNbRdB2TtcRxfJa/amOEAAAA=
X-Change-ID: 20260407-v2026-03-1-topic-arkona-at300-1eb495d15f79
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_011318_545344_0ED030E1 
X-CRM114-Status: UNSURE (   8.95  )
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
Subject: [PATCH v2 0/2] ARM: ls1046a: add support for Arkona AT300
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for a variant of the TQ tqmls1046a SoM.
The Arkona AT300 is based on the TQ SoM, with mainly different RAM and QSPI setup.

To help generating the RCW IO-muxing values, add a header and tool to
generate these values.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- enable barebox deep-probe in devicetree
- only add alternate qspi on AT300 board
- split rcwtool to scripts/include/ls1046a-rcwtool.h header
- Link to v1: https://lore.barebox.org/20260407-v2026-03-1-topic-arkona-at300-v1-1-e06b73050326@pengutronix.de

---
Sascha Hauer (1):
      ARM: tqmls1046a: Add Arkona AT300 support

Steffen Trumtrar (1):
      scripts: ls1046a-rcwtool: add functions to generate RCW

 arch/arm/boards/tqmls1046a/Makefile             |   2 +
 arch/arm/boards/tqmls1046a/arkona_at300_rcw.cfg |  86 ++++++
 arch/arm/boards/tqmls1046a/board.c              |   5 +
 arch/arm/boards/tqmls1046a/lowlevel.c           |  23 +-
 arch/arm/boards/tqmls1046a/rcwtool-at300.c      |  89 +++++++
 arch/arm/boards/tqmls1046a/start.S              |  13 +
 arch/arm/dts/Makefile                           |   1 +
 arch/arm/dts/fsl-tqmls1046a-arkona-at300.dts    | 338 ++++++++++++++++++++++++
 images/Makefile.layerscape                      |  14 +-
 scripts/include/ls1046a-rcwtool.h               | 147 +++++++++++
 10 files changed, 711 insertions(+), 7 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260407-v2026-03-1-topic-arkona-at300-1eb495d15f79

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>



