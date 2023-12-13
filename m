Delivery-date: Wed, 13 Dec 2023 15:58:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgt-002GN5-1A
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 15:58:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgt-0001CD-KS
	for lore@pengutronix.de; Wed, 13 Dec 2023 15:58:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ylDyEFNFYa0dr9BIOL/E56tHMJllAFeWB7ImbtaM+go=; b=KrdS9rVbe8I0PTdkD7mOrdkHMF
	MKuggevIW6qqjySlIl8mtd8OM8t63LuAHdLzqCA/mn0DPWvlmdaq7FLxZcpEtnGAMWxj57y+RArb/
	PU/cmhEp2B13UeTSPnjQ4459pW1DtWk2FOo0hlBfZemZlUPJo7n1KCHI5Wrz+NVGPyPsUrTS1+RnN
	/63rSQgpKpDdJJrY5BsvjrKPL2n6NIt1qhpNZpQcznvrCUWy2kexoHMpa6/j53aPvIoFBxy0Lu6mW
	VptuC8VC0/SGQXYcwmXh/OLpYzJgMR2e5YHKSb5i+RaBG6ibtIg9rC/KirIaVf/KZToAeyKaOtFVa
	pqIfhH0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQfj-00F76v-1u;
	Wed, 13 Dec 2023 14:57:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQff-00F73q-1t
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 14:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-0008GL-W6; Wed, 13 Dec 2023 15:57:05 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-00Faqn-Jg; Wed, 13 Dec 2023 15:57:04 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-0081Fe-1n;
	Wed, 13 Dec 2023 15:57:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Dec 2023 15:57:01 +0100
Message-Id: <20231213145703.1911415-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_065711_621171_1E8C8D6A 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] mci: imx-esdhc: Fix WML setting for layerscape PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For the Layerscape PBL to correctly work in PBL we have to configure the
read watermark level to 0x80 aka one full block of 512 bytes (0x80 * sizeof(u32))

With the current value of 0x10 the ESDHC will signal data available, but
we are only allowed to read 0x10 words. After that we would have to wait
for data being ready again, but sdhci_rx_pio() does not do that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 3c1ff98824..3d93889143 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -59,19 +59,14 @@ static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 	u32 wml_value;
 
 	wml_value = data->blocksize / 4;
+	if (wml_value > 0x80)
+		wml_value = 0x80;
 
-	if (data->flags & MMC_DATA_READ) {
-		if (wml_value > 0x10)
-			wml_value = 0x10;
-
+	if (data->flags & MMC_DATA_READ)
 		esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
-	} else {
-		if (wml_value > 0x80)
-			wml_value = 0x80;
-
+	else
 		esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
 					wml_value << 16);
-	}
 
 	host->sdhci.sdma_boundary = 0;
 
-- 
2.39.2



