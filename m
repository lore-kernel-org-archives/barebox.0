Delivery-date: Mon, 29 Jun 2026 14:47:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBP0-00B7SC-0d
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 14:47:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBOx-0001we-9o
	for lore@pengutronix.de; Mon, 29 Jun 2026 14:47:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ND6UyQMektcSccqRCO99xO3OtiTqDF1CgnLszL1PGg=; b=yEb2APnAaTjs4HBLI4lyGymKdQ
	0ZtKbx21gE8dUzD8KjoB/lLHy1/Pm1PKucJh8lBmrdAqnmWetne4MjhE/Bn6nAMTBuUyCErhYlxKp
	NMWO2PFCZ0x4lUlGJp6az5pAuoF6lX7raie+BXMzV+wkaDKDUjJaNYO3Yz+CGNyx0obDHeFhqpD1m
	ik2yZMfnX1c6rby9TLYWWG8M6pQJqRo35MVYgyYI1SHlYpIKml/4gtz2ECpMUc3ODMqBElj3QwqLk
	5LRE1TrlsOn/8k2olW7CMkiLUg/YSuxaRa2hz3ZkvzqQSntai49ow9lZuMkfG8nNbKI7lqnwd6cg6
	IrvCztzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNu-0000000Ebc1-0M4C;
	Mon, 29 Jun 2026 12:46:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNs-0000000EbYm-06vF
	for barebox@bombadil.infradead.org;
	Mon, 29 Jun 2026 12:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7ND6UyQMektcSccqRCO99xO3OtiTqDF1CgnLszL1PGg=; b=e0tRe6HlTTB7xsJEGbSJ3h43n7
	4sOhfRa6GD2LlEH1hNHNsDrL+qYG900pEakwlGvgmikw4DPOU0pjlbzMeAEN+QVh/dOO6rzwUJNz5
	MDPEZnP+Km76fUVAL8OdRMLUSdCSLmsEuIyS/Sgdvhy5ZUAydlgAZNldwkTAT36Ni+q59vXRi5aKl
	/8jAhqSXbiXZhP46y0vJ0kExOWNoQneh5mcfSR2oKL3CZkb1SWHLhvjqvKbkDUJYgyKFqnPZ+W0y/
	pUT37jqQ0mO9iQTJ8L+m59y20eF6lqK3OXf0ERE+3MQQm7Tj+sdttOAQeiXeuk+gOIbZTNeY++p9E
	Yrr0576g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1weBNl-0000000106U-48G4
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 12:46:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1weBNi-0000LG-Vc; Mon, 29 Jun 2026 14:46:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 29 Jun 2026 14:45:26 +0200
Message-ID: <20260629124631.689090-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260629124631.689090-1-a.fatoum@barebox.org>
References: <20260629124631.689090-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_134638_221311_F146D722 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/10] mci: sdhci: define same SDHCI_INT_* constants as Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already define a number of these bits and make use of them, but not
all of them are named identically to Linux.

To make code easier to port and avoid confusion, just define the Linux
bits as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - no change
v1 -> v2:
  - new commit
---
 drivers/mci/sdhci.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d1f05ac96859..a3b8e65b55ee 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -111,6 +111,10 @@
 #define  SDHCI_RESET_DATA			BIT(2)
 #define SDHCI_INT_STATUS					0x30
 #define SDHCI_INT_NORMAL_STATUS					0x30
+#define  SDHCI_INT_TUNING_ERROR			BIT(26)
+#define  SDHCI_INT_ADMA_ERROR			BIT(25)
+#define  SDHCI_INT_AUTO_CMD_ERR			BIT(24)
+#define  SDHCI_INT_BUS_POWER			BIT(23)
 #define  SDHCI_INT_DATA_END_BIT			BIT(22)
 #define  SDHCI_INT_DATA_CRC			BIT(21)
 #define  SDHCI_INT_DATA_TIMEOUT			BIT(20)
@@ -119,13 +123,36 @@
 #define  SDHCI_INT_CRC				BIT(17)
 #define  SDHCI_INT_TIMEOUT			BIT(16)
 #define  SDHCI_INT_ERROR			BIT(15)
+#define  SDHCI_INT_CQE				BIT(14)
+/* Host Version 4.10 */
+#define  SDHCI_INT_FX_EVENT			BIT(13)
+#define  SDHCI_INT_RETUNE			BIT(12)
 #define  SDHCI_INT_CARD_INT			BIT(8)
 #define  SDHCI_INT_CARD_INSERT			BIT(6)
 #define  SDHCI_INT_DATA_AVAIL			BIT(5)
 #define  SDHCI_INT_SPACE_AVAIL			BIT(4)
 #define  SDHCI_INT_DMA				BIT(3)
+#define  SDHCI_INT_BLK_GAP			BIT(2)
 #define  SDHCI_INT_XFER_COMPLETE		BIT(1)
 #define  SDHCI_INT_CMD_COMPLETE			BIT(0)
+
+/* Linux-compatible constants */
+#define  SDHCI_INT_RESPONSE			SDHCI_INT_CMD_COMPLETE
+#define  SDHCI_INT_DATA_END			SDHCI_INT_XFER_COMPLETE
+#define  SDHCI_INT_DMA_END			SDHCI_INT_DMA
+#define  SDHCI_INT_CARD_REMOVE			SDHCI_INT_CARD_INT
+
+#define  SDHCI_INT_CMD_MASK	(SDHCI_INT_RESPONSE | SDHCI_INT_TIMEOUT | \
+		SDHCI_INT_CRC | SDHCI_INT_END_BIT | SDHCI_INT_INDEX | \
+		SDHCI_INT_AUTO_CMD_ERR)
+#define  SDHCI_INT_DATA_MASK	(SDHCI_INT_DATA_END | SDHCI_INT_DMA_END | \
+		SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL | \
+		SDHCI_INT_DATA_TIMEOUT | SDHCI_INT_DATA_CRC | \
+		SDHCI_INT_DATA_END_BIT | SDHCI_INT_ADMA_ERROR | \
+		SDHCI_INT_BLK_GAP | SDHCI_INT_TUNING_ERROR)
+#define SDHCI_INT_ALL_MASK	((unsigned int)-1)
+
+
 #define SDHCI_INT_ERROR_STATUS					0x32
 #define SDHCI_INT_ENABLE					0x34
 #define SDHCI_INT_ERROR_ENABLE					0x36
-- 
2.47.3



