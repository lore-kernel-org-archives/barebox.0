Delivery-date: Mon, 02 Mar 2026 17:38:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Hq-007LRC-0E
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 17:38:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Hq-0007Jv-Ch
	for lore@pengutronix.de; Mon, 02 Mar 2026 17:38:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MhdzEgEomtwYmpW1DXYKBXKF85YnoHpE+HZEliokrVw=; b=GiFnZJaBSMj8aHEZkqalzaf+KC
	GDskAkpUZUE37VnqMHeqEpiF3a9cRTFBP0/LD4ikYiUPtyoTST4B5zvlrRNPeB4MHSSBFckTfMk4i
	cjVZWCUlMReQ0c1E5l/4NeIGPb6Yrzr1ASusPj1Og4L9+McvVWdcTiQMQchxgB+68cZ8y4dcqvjI/
	cuP+H1qnj3g4Bg0GZoLj2MVrgFsB7X9IvP7XjO48pvM90XvelIrpjTxtR8z0fbFEWmiv/lovq3jZM
	f+kFECVl7jGcWPwLnZNDGciMce3mcvbQbsAvACqqRAKhjlG5YGLrC7hCASGzZz1waNeyUqbcRph4W
	XRbQSiug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HJ-0000000DVXX-2z7W;
	Mon, 02 Mar 2026 16:37:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HH-0000000DVWO-2P7w
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 16:37:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00075j-Op; Mon, 02 Mar 2026 17:37:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HE-003PXy-0k;
	Mon, 02 Mar 2026 17:37:49 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00000002QFi-1yYU;
	Mon, 02 Mar 2026 17:37:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Mar 2026 17:37:40 +0100
Message-ID: <20260302163748.577552-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_083751_630071_05218466 
X-CRM114-Status: GOOD (  13.26  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mci: add support for eMMC v5.1b
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer eMMC versions than what barebox knows about appear to be
interpreted as v4.0, which would affect at least erase group
size determination and manufacturer date calculation.

Fix this by adding proper v5.1b support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 11 ++++++++++-
 include/mci.h          |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 37d864b3d02f..54006b149c0a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1176,6 +1176,9 @@ static void mci_correct_version_from_ext_csd(struct mci *mci)
 		case 8:
 			mci->version = MMC_VERSION_5_1;
 			break;
+		case 9:
+			mci->version = MMC_VERSION_5_1B;
+			break;
 		}
 	}
 }
@@ -1436,7 +1439,7 @@ static char *mci_version_string(struct mci *mci)
 	n = sprintf(version, "%u.%u", major, minor);
 	/* Omit zero micro versions */
 	if (micro)
-		sprintf(version + n, "%u", micro);
+		sprintf(version + n, "%X", micro);
 
 	return version;
 }
@@ -2541,6 +2544,12 @@ static int mci_mmc_decode_cid(struct mci *card)
 			card->cid.year += 16;
 	}
 
+	if (card->version >= MMC_VERSION_5_1B) {
+		/* eMMC 5.1b: y field rolls over again after 2025 */
+		if (card->cid.year < 2023)
+			card->cid.year += 16;
+	}
+
 	return 0;
 }
 
diff --git a/include/mci.h b/include/mci.h
index 50214aaae7bb..b05571730ec2 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -46,6 +46,7 @@
 #define MMC_VERSION_4_5		(MMC_VERSION_MMC | 0x450)
 #define MMC_VERSION_5_0		(MMC_VERSION_MMC | 0x500)
 #define MMC_VERSION_5_1		(MMC_VERSION_MMC | 0x510)
+#define MMC_VERSION_5_1B	(MMC_VERSION_MMC | 0x51B)
 
 #define MMC_CAP_SPI			(1 << 0)
 #define MMC_CAP_4_BIT_DATA		(1 << 1)
-- 
2.47.3



