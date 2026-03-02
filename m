Delivery-date: Mon, 02 Mar 2026 17:38:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Hs-007LRt-2k
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 17:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Ht-0007KY-6M
	for lore@pengutronix.de; Mon, 02 Mar 2026 17:38:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dxMPuoLJ1kM2NvKqHP/QqkPTUMoC9ygZ0qUmhUk1tQE=; b=Eb/sPbOI/6h+GSP0rIZo/5xvl7
	JHVMI3L2J1uOubQ8AwBmLsue/2M42bVZq6Q8G9i2VLMtY0BTYcmx/VwUGoQaWg85Fji1WIfwzOdKm
	MK8u8ceI6+z8LJx0ZGFua+I3rsa0btq4G7qFuXuuQc3YQ6UKX1LSvIrAbjYn6RiUSyK3MIIBXVPC3
	4Dfr6AJYevAI2q7kZKyJvyKOQlvrPDA+7W5nCDXpgnVKQymtlA+XyFDPjQYnRYAqsgLxEvqx02K+L
	JVfRm0My9XVAn8HnkdtyCjCk4E8wylvaNP9pnclc5vIQCKga5/lcdVK2NT2Y4vRq7SnslWrsgrtMO
	dzFBoBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HL-0000000DVXl-1AIq;
	Mon, 02 Mar 2026 16:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HH-0000000DVWM-2OjX
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 16:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00075k-QD; Mon, 02 Mar 2026 17:37:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HE-003PXz-0r;
	Mon, 02 Mar 2026 17:37:49 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00000002QFi-2BBC;
	Mon, 02 Mar 2026 17:37:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Mar 2026 17:37:41 +0100
Message-ID: <20260302163748.577552-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302163748.577552-1-a.fatoum@pengutronix.de>
References: <20260302163748.577552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_083751_629110_635D5615 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 2/3] mci: treat unknown MMC version as greater than known versions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, unknown MMC revisions are assumed to be v4.0-compatible.

Instead let's assume newer eMMC revisions to be compatible with the
newest that's explicitly supported by assigning 0xFFF as versions, so
comparison for being greater than some version always evaluate true.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 5 +++++
 include/mci.h          | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 54006b149c0a..517e4de1c6b0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1155,6 +1155,8 @@ static void mci_correct_version_from_ext_csd(struct mci *mci)
 {
 	if (!IS_SD(mci) && (mci->version >= MMC_VERSION_4) && mci->ext_csd) {
 		switch (mci->ext_csd[EXT_CSD_REV]) {
+		case 0:
+			mci->version = MMC_VERSION_4;
 		case 1:
 			mci->version = MMC_VERSION_4_1;
 			break;
@@ -1179,6 +1181,9 @@ static void mci_correct_version_from_ext_csd(struct mci *mci)
 		case 9:
 			mci->version = MMC_VERSION_5_1B;
 			break;
+		default:
+			mci->version = MMC_VERSION_MAX;
+			break;
 		}
 	}
 }
diff --git a/include/mci.h b/include/mci.h
index b05571730ec2..fc418ec0a2ea 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -47,6 +47,7 @@
 #define MMC_VERSION_5_0		(MMC_VERSION_MMC | 0x500)
 #define MMC_VERSION_5_1		(MMC_VERSION_MMC | 0x510)
 #define MMC_VERSION_5_1B	(MMC_VERSION_MMC | 0x51B)
+#define MMC_VERSION_MAX		(MMC_VERSION_MMC | 0xFFF)
 
 #define MMC_CAP_SPI			(1 << 0)
 #define MMC_CAP_4_BIT_DATA		(1 << 1)
-- 
2.47.3



