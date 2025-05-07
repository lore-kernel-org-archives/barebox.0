Delivery-date: Wed, 07 May 2025 11:19:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw4-0035MN-1W
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:19:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw2-00040y-Q5
	for lore@pengutronix.de; Wed, 07 May 2025 11:19:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fbF/PKVaoLiFtp6EQKDl/aePdDhULWWd2sGPtqNC3zg=; b=LcGuh40RpVtHqmc0P8GAksPqyg
	AGpBRr89YcX3eHFYOtX1+r7Wl+lXJKhDEQc36ZB+wXHTeMFKNNBQrcepnThEQjsDo5VY+wn98vNQ1
	SbEUCq26bgZYEySr5+0dl8r64AHwwQrF8j+YpyIzqDwhGfL4BvKv92m7bIQhm6FEmnXFKb0t2Fd2M
	9xThNHW0R9pA4rY/k8X9ZN6ArDFgaeyXTygi8sMOxUQ8mp2Hmsh/yGitAkxlQUE3/7bxbgmIh9HeV
	Gc0MJbKj7IxdKi4hM8jAtwAG0qj1g4FQ+8t7N6N8qLOS3yIAvKiBlo7dZjC0P1iBIdhAC9sNLjoe+
	9RjKoNog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCavX-0000000EuCA-0yc3;
	Wed, 07 May 2025 09:18:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa2f-0000000EibU-0WFL
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:22:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-0001eP-Ry; Wed, 07 May 2025 10:22:11 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-001WoA-1j;
	Wed, 07 May 2025 10:22:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-00AQeI-2x;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:45 +0200
Message-Id: <20250507082209.3289972-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_012213_193435_3057EB12 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/30] mci: add MMC_CAP_UHS constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently support higher speed modes only for eMMC, not SD, but to
simplify porting drivers, let's add the capability bits into the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 6 ------
 include/mci.h             | 8 ++++++++
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index a378e3d53c91..20dd03b83a9a 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -83,12 +83,6 @@
 #define AM654_SDHCI_MIN_FREQ	400000
 #define CLOCK_TOO_SLOW_HZ	50000000
 
-#define MMC_CAP_UHS_SDR104 0
-#define MMC_CAP_UHS_SDR12 0
-#define MMC_CAP_UHS_DDR50 0
-#define MMC_CAP_UHS_SDR25 0
-#define MMC_CAP_UHS_SDR50 0
-
 struct timing_data {
 	const char *otap_binding;
 	const char *itap_binding;
diff --git a/include/mci.h b/include/mci.h
index 7ee2e4faa90c..bb168ca2225f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -58,6 +58,14 @@
 #define MMC_CAP_MMC_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
 #define MMC_CAP_DDR			(MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR | \
 					 MMC_CAP_MMC_1_2V_DDR)
+#define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
+#define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
+#define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */
+#define MMC_CAP_UHS_SDR104	(1 << 19)	/* Host supports UHS SDR104 mode */
+#define MMC_CAP_UHS_DDR50	(1 << 20)	/* Host supports UHS DDR50 mode */
+#define MMC_CAP_UHS		(MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 | \
+				 MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104 | \
+				 MMC_CAP_UHS_DDR50)
 /* Mask of all caps for bus width */
 #define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
 
-- 
2.39.5



