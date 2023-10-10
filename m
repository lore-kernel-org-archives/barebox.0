Delivery-date: Tue, 10 Oct 2023 16:34:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDp1-003BIF-F1
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDoy-0008M0-3i
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=egjtI0jqqrw9lHnXJ2xp/mfkUQDPB1uLBAGM5O3bRtA=; b=TIJ+DkvGgF0ASDqH5oUY/L7Z8P
	eI65K0iFwwWkcn0jIQyQsIYZQj6GalYnrjdPSUIGdBM0iv0Odbddcai/G8ZCR+0Y3aDr+hv1vLywI
	9QBO57CdGekPeGCloqI5xY3gdxNzvsxfwGWmKYzBOc1FX+Kvp020tQTsMMEy+PtW5kJOlxkBy0XxG
	lDs5AcgCY9aor3yeCnDndEiiH66RbfxY2G45H7nEv6uMdIgE/h1vkXZrfVwVa8i+4AIMaQ7+hX8R0
	cBERQXe7Oj/eXHapE6mG7B5X4ZUkSZFi/Y5Vh8DRBPMkf2t9GQA0XDllhVW09Fgg/gszOvy+4aY8U
	veltqv4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00DZZR-1z;
	Tue, 10 Oct 2023 14:33:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQI-1O
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:27 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Hn
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:04 +0200
Message-Id: <20231010143314.2031253-17-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_470194_FBFD0B51 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/26] scripts: imx: move flexspi_image() into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the flexspi_image() into the imx.h header to make the code reusable
between imx.c and imx-image.c. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 12 ------------
 scripts/imx/imx.h       | 13 +++++++++++++
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1f96b383901f..ecb16187de17 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -290,18 +290,6 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
 	return 0;
 }
 
-static bool flexspi_image(const struct config_data *data)
-{
-	/*
-	 *           | FlexSPI-FCFB  | FlexSPI-IVT
-	 * -----------------------------------------
-	 * i.MX8MM   |   0x0         |  0x1000
-	 * i.MX8MN/P |   0x400       |  0x0
-	 */
-
-	return data->image_flexspi_ivt_offset || data->image_flexspi_fcfb_offset;
-}
-
 /*
  * ============================================================================
  * i.MX flash header v2 handling. Found on i.MX50, i.MX53 and i.MX6
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 08cdf8321a09..65697a9b0d43 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -15,4 +15,17 @@ static inline int cpu_is_mx8m(const struct config_data *data)
 	}
 }
 
+static inline bool flexspi_image(const struct config_data *data)
+{
+	/*
+	 *           | FlexSPI-FCFB  | FlexSPI-IVT
+	 * -----------------------------------------
+	 * i.MX8MM   |   0x0         |  0x1000
+	 * i.MX8MN/P |   0x400       |  0x0
+	 */
+
+	return data->image_flexspi_ivt_offset ||
+	       data->image_flexspi_fcfb_offset;
+}
+
 int parse_config(struct config_data *data, const char *filename);
-- 
2.39.2



