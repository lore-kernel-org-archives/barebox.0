Delivery-date: Mon, 15 Dec 2025 15:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-00Blut-0t
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sa-0002aL-KH
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wPI0Y+sqhGpT1Gg3dnlZDlMvAGPDaMsh1u4wrVrdXRU=; b=3QYAS+nJfBfOnx
	rcqNBAcB+QJ2+GOALwV80YgXO8bY2EUIwWXc0kY4OL649ewTkiKiwBXI/aaI3Aiek3xInUZs7Emc3
	CI6MGnW+2uxkzm0qVJyswe/v/8gstwFL2Cw+JidcQOjMXrQOhDKZRrYcRPpyiXoVqcC7iKDl5Al1c
	9zwRdVVt6/OD/qYSa0PRsr0uaTBvmKX/V9iTPWW7Syl/CXoCsLPa0tKb1bWfyA41vStUwfaSCHwsx
	J9pwTVYksiLEMsVAKbsmxnJSnEVzsCbzMdquWXt4hwEsNlI4atga/xKCFYh9k42CsQFWblA2IUcF+
	mX4AtGUyWPwbpHFBSECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S6-00000003mjP-4Bae;
	Mon, 15 Dec 2025 14:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S3-00000003mhY-45En
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:21:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9S2-0002Gv-97; Mon, 15 Dec 2025 15:21:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:21:22 +0100
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGIZQGkC/x2NQQrDMAzAvlJ8niHOCN32lbFDcNzUMJoQj1Io/
 Xuz3qSLtINJUzF4DTs0WdW0LF3oNgDPccmCmrqDdz6Qp4Drn5AIHf5KVUYrPNUcMWb9yhbQ0sy
 KjzQmeZIkvjvosdpk0u0avT/HcQJ8YeU7eAAAAA==
X-Change-ID: 20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-8d7de91edc30
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062128_036442_92A159B4 
X-CRM114-Status: UNSURE (   7.35  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] mci: cadence: add v6 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Agilex5 apperently has a cadence sdhci host controller in version 6.
Add support for this version, reworking the original driver
significantly.

Tested on Agilex5, sadly HS200-support is currently broken and doesn't
work yet with this driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (5):
      mci: cadence: fix typo and actually build
      dts: include: reset: rst-mgr-s10: add SOFTPYH_RESET
      mci: sdhci: add sdhci_send_cmd
      mci: sdhci: add set_uhs_signaling callback
      mci: cadence: add support for version 6

 drivers/mci/Kconfig                              |   2 +-
 drivers/mci/Makefile                             |   1 +
 drivers/mci/cadence-sdhci.c                      | 714 +++++++++++------------
 drivers/mci/cadence-sdhci.h                      | 118 ++++
 drivers/mci/cadence-sdhci6.c                     | 373 ++++++++++++
 drivers/mci/sdhci.c                              | 137 ++++-
 drivers/mci/sdhci.h                              |  22 +
 dts/include/dt-bindings/reset/altr,rst-mgr-s10.h |   2 +-
 include/mci.h                                    |   2 +
 9 files changed, 979 insertions(+), 392 deletions(-)
---
base-commit: d6f0974673c0e3da00f8d0789d6302a43f3e478d
change-id: 20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-8d7de91edc30

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



