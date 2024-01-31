Delivery-date: Wed, 31 Jan 2024 17:57:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVDuP-00E3Ot-0M
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 17:57:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVDuP-0005th-R6
	for lore@pengutronix.de; Wed, 31 Jan 2024 17:57:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TmdGv96xc/7k+LadFz+GtiiOdgjgr9FiPV/QkAKhKww=; b=VB6XdCyraMJQ2b
	QdaZ77e1cLkLjFPDV3u1I8sVEIQXwkcmJkRea5EuwM4xB9MlNQZXvle07Ss5LKjX6UB16UI/+cL3n
	46Vo+TcvHZ7nnJyptCFOHSf2jZfp9WKBb0eAtoPSE6QeVLPakG+ZoGMWVX8OFKSX5Hk7I2SKaNY7S
	6Rcup4mBO+umGOBCgYi3Lkm3DYhLIn8hwZHU3uSxr6/5FFsrNgG0ryCaQT0hzWlJ++vW0TYtTL0/1
	Ug5BECwABldCoZkOC5KzDnxnkuUr5uKesvn4snIKcMEWWvP90S5HpEyaBds+JH2uXibHR2An7NTJ/
	UlfqGULzAeSViI9igprQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVDtr-00000004hO5-3h4o;
	Wed, 31 Jan 2024 16:57:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVDtm-00000004hK5-0hPr
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 16:57:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-0005jB-U2; Wed, 31 Jan 2024 17:57:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-003fm2-GW; Wed, 31 Jan 2024 17:57:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-006OFT-1U;
	Wed, 31 Jan 2024 17:57:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 31 Jan 2024 17:56:58 +0100
Message-Id: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANp7umUC/x2MQQqAIBAAvxJ7bkHLBPtKdKhcaw9qaEQR/T3pO
 DAzD2RKTBn66oFEJ2eOoYCsK1i2KayEbAtDIxolZCvR8YXOHujJx3RjnhwdN85COyO1sqZrobR
 7oiL+32F83w/yJsYuZwAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_085718_391480_83B1C068 
X-CRM114-Status: UNSURE (   7.18  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] of: fdt: fix memory leak and oob writes in
 fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I have encountered the oob write while attempting to modify a large FIT
image with of_property. While hunting for the root cause I noticed that
there is a potential memory leak in fdt_ensure_space as well. Both is
fixed in this series.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (2):
      of: fdt: fix memory leak in fdt_ensure_space
      of: fdt: fix oob writes with large ftd properties

 drivers/of/fdt.c | 31 ++++++++++++++++++++++++-------
 1 file changed, 24 insertions(+), 7 deletions(-)
---
base-commit: cecd3fbea3550532d2175bc13aa479a45e605da0
change-id: 20240131-fix-fdt-memory-safety-b06f9164d953

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



