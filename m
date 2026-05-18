Delivery-date: Mon, 18 May 2026 15:14:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxnh-00193X-1a
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 15:14:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxng-0002pM-Sh
	for lore@pengutronix.de; Mon, 18 May 2026 15:14:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VWAsJZEnQXvXJaBZIU+VbTRzplnxVIjLRkf+M1/5FOQ=; b=Z8D9kGwrpTpIgq
	DyOH63JYwF1723myU/sf3yOm+3kKnpVQ/kUwLWBYpT9hJ80ofSFjQITKoTaypNAWaWtNkJh85hjRX
	1+CimdUp057cuCsF/GaGeU1zbrdtPOFJKGZvfc6FNR4+tk7hf8GP5wqwKJlamrMYQD9Cgz/a2qtGY
	7OuxWLxtfWWYmCadhcu4VA1ptbkSthKmoUNFcBTGtPMFe00b+VNaQmTY3ke8SbwIL5iJc7F7qVXcr
	SIn36T22BDgLXKgBRCVqH0pYjNGs76TRmt0rPJDNTGyPN37aZ4INC1kjqRUmGnRscai/1d4zZYGe0
	kJbtRqbR6nUlzHxRTwjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxn6-0000000Fm3G-2eMt;
	Mon, 18 May 2026 13:13:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxn2-0000000FlxX-1u6q
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:13:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxms-0002UU-PY; Mon, 18 May 2026 15:13:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000bPE-1j;
	Mon, 18 May 2026 15:13:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000000000ZS-3vxP;
	Mon, 18 May 2026 15:13:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 15:13:35 +0200
Message-Id: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH8QC2oC/32NQQ6CMBBFr0Jm7Zi22hpdcQ/DAspAJ4a2aZFgC
 He3cgCX7yX//Q0yJaYMj2qDRAtnDr6AOlVgXetHQu4LgxLKCC0lpmBf1nFEmiaLLl+FQDJadRe
 6taa7Q1nGRAOvR/XZFHac55A+x8kif/Z/b5EoUEs9dKZXgqSqI/nxPafgeT33BM2+7190T4kyu
 wAAAA==
X-Change-ID: 20260511-rockchip-emmc-hs400-e652b3e7a6b9
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779110017; l=1791;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KbTPS7+7OvePDhFfRf/+Cf+6dUeLYdGXMfgcnXl5Lbg=;
 b=w2vv6oZ/Tswo7CAPcnbBl9FLr9Y9Co0L0eHqcGzMvshZMP5nPJTXqcLgs6OE79WEKGSxs7t2V
 ZuVv3slmQEmCSvsPu6WWRQ8MEcXUkpUuhKLkalD/ga+fLpOkH6A/3SF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_061348_503096_2AF3F767 
X-CRM114-Status: UNSURE (   7.85  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 00/10] mci: rockchip-dwcmshc: add HS400(ES) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on the previous series to add HS200 support for the Rockchip SDHCI
controller this series now adds core support for HS400(ES) and also
Rockchip support for HS400(ES). As expected the speed gain isn't that
dramatic anymore, but it still goes up from 120MB/s to 170MB/s on reads.
Write is at about 22MB/s.

Tested on a Radxa Rock 5T.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Integrate Review feedback from Ahmad
- Link to v1: https://lore.barebox.org/20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de

---
Sascha Hauer (10):
      mci: sdhci: define VDD_180 and shrink UHS_MASK to bits 0..2
      mci: mmc_send_tuning: actually point data.dest at the buffer
      mci: sdhci: add ADMA2 descriptor helpers
      mci: add HS400 mode selection
      mci: add HS400 Enhanced Strobe (HS400ES) selection
      mci: rockchip-dwcmshc-sdhci: use ADMA2
      mci: sdhci: rockchip: set TX-path source-select bit in DWCMSHC_EMMC_DLL_TXCLK
      mci: sdhci: rockchip: distinguish IP revision 0 (rk3568) from 1 (rk3576/rk3588)
      mci: sdhci: rockchip: support HS400
      mci: sdhci: rockchip: support HS400 Enhanced Strobe

 drivers/mci/imx-esdhc-common.c       |   2 -
 drivers/mci/mci-core.c               | 197 ++++++++++++++++++++++++++++++++++-
 drivers/mci/rockchip-dwcmshc-sdhci.c |  99 ++++++++++++++++--
 drivers/mci/sdhci.c                  | 157 +++++++++++++++++++++++++++-
 drivers/mci/sdhci.h                  |  62 ++++++++++-
 include/mci.h                        |   9 ++
 6 files changed, 509 insertions(+), 17 deletions(-)
---
base-commit: 4c7af34b16eb83fcab8aeb3444d6cbf184cadd39
change-id: 20260511-rockchip-emmc-hs400-e652b3e7a6b9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



