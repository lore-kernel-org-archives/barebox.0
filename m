Delivery-date: Thu, 06 May 2021 11:30:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLJ-0001WX-OP
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:49 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLG-0008VD-Nt
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bGo3THGswRPXTV2GEbeyOvp28fbSpWHican1z6AZh08=; b=cITaxZkrc5LejL+TKEIef+YiO
	BXCA5Og57EEEuxK862W/l/prbpltoVdJvcA+4ZcFtqGBLC9VDThHuw3oOtBrzZULcWPeaHTQdm7Yt
	QVoRuIkbMiMji+jU8Dq7DqlqFulUFtKOJ8hA3fvHcaaxLGbBtUWTLEcuMZeVIhchUJOSZDjFnJZwa
	6wzetEktPKPy41hkLfiU38avNkw+6WOKhgMHMdrcDAzGUubRLlDKfaVjA9GRzSWs0O76QVZXEqrNn
	T2TOtpEy0Wv442YLMIStIvWrxJGvOblGW/sROZad99KBdEfJ8T78A9oHc61ioFRsN1X/pTO4MBzrE
	KkiTvRKIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKD-003nxN-St; Thu, 06 May 2021 09:29:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJi-003npe-NP
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=bWh3AmKlmUXd2V8MO68jUFH77Mp2ayDJsF6bY57jzws=; b=JOeBtYNHHR8PkrEX/LaNctbU4B
 qrEKYAOIEdLFU2R6gwGvPb8EX+l/3GuGhKg/NLkZvixxamo77r/QaMLNNIL7zF7zk+3JTepI1Ejbq
 +E2jhs5vIDxINddDLbb5w64Z947Hr5D6eoP2Z6lHKghRP4duOBhL6Hu+c5T3plFGGMjTIVr88gNvW
 CKspycjKz9ZvgtWF1cluw7vzBbxLWODZnfHXc+4MbAp81STtXGPlN25qINOcocfIiEdto+Pm7iwVd
 6LeppW+/wkJbGejPbE22ktqe0vcRANPanN677LRR+96slR2FAdD8V8ASuMU8ONjmsojufubiAtlnt
 iCtZIpIg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFY-N5
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007p5-2t; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001l9-C5; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:45 +0200
Message-Id: <20210506092901.25461-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_776465_F622453C 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/17] imx53: remove unused imx53_add_nand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The TX53 board was the last user of this function. This board was
converted to device tree based boot by commit 971366078893
("i.MX53/TX53: rework to dts based boot") so we can remove this
legacy helper.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-2-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/mach-imx/include/mach/devices-imx53.h | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index e5c257a40b..3d1e8a27a8 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -77,33 +77,6 @@ static inline struct device_d *imx53_add_mmc3(struct esdhc_platform_data *pdata)
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
-static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pdata)
-{
-	struct resource res[] = {
-		{
-			.start = MX53_NFC_BASE_ADDR,
-			.end = MX53_NFC_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		}, {
-			.start = MX53_NFC_AXI_BASE_ADDR,
-			.end = MX53_NFC_AXI_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		},
-	};
-	struct device_d *dev = xzalloc(sizeof(*dev));
-
-	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
-	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
-	dev->num_resources = ARRAY_SIZE(res);
-	dev_set_name(dev, "imx_nand");
-	dev->id = DEVICE_ID_DYNAMIC;
-	dev->platform_data = pdata;
-
-	platform_device_register(dev);
-
-	return dev;
-}
-
 static inline struct device_d *imx53_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

