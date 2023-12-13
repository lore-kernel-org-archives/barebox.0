Delivery-date: Wed, 13 Dec 2023 15:58:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgq-002GMj-37
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 15:58:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgr-0001BE-8v
	for lore@pengutronix.de; Wed, 13 Dec 2023 15:58:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HXeFpWebPO5jfu7x+h4qCXKL9RkiW8ADyNI4kHutYFU=; b=b4VSQFvmszInCC3hIdFFVCYylM
	vbPKCBkjZ9BvlgH31Cy8dilOmixpcO/AxkkQuEfuBRIeiWnbrAw0/UiROIPSdE2v8iFMU/vwzATgy
	WyUK6Cfdg+K1rpyOhh+At5A4gfgzZYfh20O82ke/EXNoA9pI+22977FRtPmo833ammCXOiz6EUhMD
	hm4ziDDsdhcvCLuATbjF82LVYvzdRiZamJJDIt086QAEYWfZR7ojyCI0eS7pYb7pW5tH0z6Mm6WJo
	WujRHevPuWcSWYKgOilFhbgaKo60iZ0d+Xpoam5Px/3VW4b9iWVqVLd3n+CVTbqrjN8yMvLseM8D2
	DDy0fv8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQfk-00F779-0X;
	Wed, 13 Dec 2023 14:57:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQff-00F73s-1t
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 14:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfZ-0008GM-23; Wed, 13 Dec 2023 15:57:05 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-00Faqo-Ki; Wed, 13 Dec 2023 15:57:04 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-0081Fh-1s;
	Wed, 13 Dec 2023 15:57:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Dec 2023 15:57:02 +0100
Message-Id: <20231213145703.1911415-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231213145703.1911415-1-s.hauer@pengutronix.de>
References: <20231213145703.1911415-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_065711_623584_A9A00B40 
X-CRM114-Status: GOOD (  11.10  )
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
Subject: [PATCH 2/3] mci: imx-esdhc-pbl: ls1046a: Add missing ESDHC_FLAG_MULTIBLK_NO_INT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

LS1046a needs the ESDHC_FLAG_MULTIBLK_NO_INT flag. Without it we run
into a timeout ("timeout 2") during a MMC_CMD_STOP_TRANSMISSION command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index f789f43b69..892329de51 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -321,7 +321,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 	int ret;
 	uint32_t val;
 	struct esdhc_soc_data data = {
-		.flags = ESDHC_FLAG_BIGENDIAN,
+		.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN,
 	};
 	struct fsl_esdhc_host host = {
 		.sdhci.base = IOMEM(0x01560000),
-- 
2.39.2



