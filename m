Delivery-date: Mon, 11 May 2026 14:09:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSJ-000XpB-0p
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:09:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSE-0007IP-BW
	for lore@pengutronix.de; Mon, 11 May 2026 14:09:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GrIWoqO4i0d+l3s7gZmBG7jfql0UvohwmWqUgpd09+g=; b=sJ5fuF68wKnP9s5qsYljvwJkQ7
	oQHN3yDPjdtVANMlsZW9gelvQojw3SxSt6mzD5TwXwCVE/C46b/yXJ6L3Qvyts3HrYla1u/Z63OzL
	KWl/eYHT6jxEXTQp9wq2vGrvitZIM6IkTiyzP8xf1qISlMqxfIJQU93bFBv6YQkdZX+u604cIQrso
	i+QMOYvVx86HjJ4T7bBRSxP0FV2StSSvjwLjL0bmE8gXG3DNwzdcyIDkimdC8MQAHIH7ck02tkcHk
	oTAAR83L9RmMooKurY7h4DqlMqr9/kZCkVXBMuPsXz3HpKD056NUWnY+u3pMgDYM//dNhdb4uAffp
	EVy7E73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQi-0000000DSsS-1TNK;
	Mon, 11 May 2026 12:08:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQf-0000000DSqd-02wP
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006b7-Qd; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTI-22;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-12A0;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:07:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-1-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=2167;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=j1q/KhodESF8J2zApKHxgsi2NFtH5RiQe3dH9ycWmCk=;
 b=qhemryHMs0iBL11xZRbyM4c7/VrWce4/D6GelEmtdDt5BTmUqgUCOXuSZPgc9FOCjuHfu0McE
 e/9nz4JLrHgAJb0MydJra2Ua1PQMy+v2eFgaM/PmfcFaY05R/tdtF38
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050809_139592_37430368 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
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
Subject: [PATCH 01/10] mci: sdhci: define VDD_180 and shrink UHS_MASK to
 bits 0..2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Per SDHCI 3.0+, HOST_CONTROL2's UHS Mode Select is bits 0..2 (3 bits)
and bit 3 is the 1.8 V Signaling Enable. The current SDHCI_CTRL_UHS_MASK
of GENMASK(3, 0) is one bit too wide and clears 1.8 V signaling every
time sdhci_set_uhs_signaling() runs.

Shrink the mask to GENMASK(2, 0) and add SDHCI_CTRL_VDD_180 = BIT(3) so
controllers that need to drive 1.8 V on I/O for HS200/HS400/UHS modes
can OR the bit in without it being clobbered on the next set_clock().

No functional change for controllers where VDD_180 was unused (most
in-tree drivers do not touch it; voltage switching there is either
fixed by board wiring or handled by an external regulator).

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 2 --
 drivers/mci/sdhci.h            | 3 ++-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 050621d7fb..eb6a71915f 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -12,8 +12,6 @@
 
 #define	ESDHC_CTRL_D3CD			0x08
 
-#define  SDHCI_CTRL_VDD_180         0x0008
-
 #define ESDHC_MIX_CTRL			0x48
 #define  ESDHC_MIX_CTRL_DDREN		(1 << 3)
 #define  ESDHC_MIX_CTRL_AC23EN		(1 << 7)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 8d21febd7a..a04eb5b7ed 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -132,13 +132,14 @@
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_HOST_CONTROL2					0x3E
-#define  SDHCI_CTRL_UHS_MASK			GENMASK(3, 0)
+#define  SDHCI_CTRL_UHS_MASK			GENMASK(2, 0)
 #define   SDHCI_CTRL_UHS_SDR12			0x0
 #define   SDHCI_CTRL_UHS_SDR25			0x1
 #define   SDHCI_CTRL_UHS_SDR50			0x2
 #define   SDHCI_CTRL_UHS_SDR104			0x3
 #define   SDHCI_CTRL_UHS_DDR50			0x4
 #define   SDHCI_CTRL_HS400			0x5 /* Non-standard */
+#define  SDHCI_CTRL_VDD_180			BIT(3)
 #define  SDHCI_CTRL_DRV_TYPE_MASK		GENMASK(5, 4)
 #define   SDHCI_CTRL_DRV_TYPE_B			0x0000
 #define   SDHCI_CTRL_DRV_TYPE_A			0x0010

-- 
2.47.3



