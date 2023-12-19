Delivery-date: Tue, 19 Dec 2023 14:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0D-004Ztq-2k
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0D-00089A-BU
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qoD1XUEkE0BDCCfWdAZBQsyw1uH4hYg3iT+eYMmx3+E=; b=yfbLI20eGMV7RDg8xocC9siRwW
	7L/VOQLLiECxPXQceQEnEQJziGjWc5BAr6rspQUHug3ow7LZ/mSo7SbiDb7dk8jrgv+qAC1N4QOrw
	VTFs0+NZc8Z3dwgvJVxhcUsbECdj2oK1NFItBLpZIKR+1QJlMHONFbEv1gwfyGmAhHmhi+7WwYXDY
	xXukwOlOjtkWB8C3cnxfo8yidc2lzycoRn9t/IUIwqVLYmvtXmxZWd0X8SKGAak1Zm8epyiLKTOnL
	QRiQ0YIV5nM4BKanU4mIBAce6FjudaMSShc9XqGWtCWkxGsdHVHb7M48Lrh1yED8TqMJBv19sVp+b
	iYpyNqDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZz6-00EAUU-2x;
	Tue, 19 Dec 2023 13:18:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZz2-00EATq-2e
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:18:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0007bi-Ku; Tue, 19 Dec 2023 14:18:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz0-0001nf-5J; Tue, 19 Dec 2023 14:18:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0001xF-0e;
	Tue, 19 Dec 2023 14:18:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:18:01 +0100
Message-Id: <20231219131802.7475-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219131802.7475-1-s.hauer@pengutronix.de>
References: <20231219131802.7475-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_051804_877150_C812E4A4 
X-CRM114-Status: UNSURE (   8.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] fsl-ddr: remove duplicate prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/fsl/fsl_ddr.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ddr/fsl/fsl_ddr.h b/drivers/ddr/fsl/fsl_ddr.h
index e95cea1657..0c1a30a236 100644
--- a/drivers/ddr/fsl/fsl_ddr.h
+++ b/drivers/ddr/fsl/fsl_ddr.h
@@ -189,7 +189,6 @@ static inline int is_ddr3_4(const memctl_options_t *popts)
 
 struct fsl_ddr_info;
 
-phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo);
 u32 fsl_ddr_get_intl3r(void);
 
 void board_mem_sleep_setup(void);
-- 
2.39.2



