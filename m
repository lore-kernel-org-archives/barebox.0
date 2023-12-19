Delivery-date: Tue, 19 Dec 2023 15:16:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFatJ-004eF4-0Z
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 15:16:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFatI-0003f8-KE
	for lore@pengutronix.de; Tue, 19 Dec 2023 15:16:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Zb//ie0nKoNZEIJp4YSvT7a0IJI1YoSu6j/7bp+nONo=; b=nuL2iaCwKvHEXfYh1LsGQc5h+U
	DtH3TCx81amI95bhxLu1tnsVLGP040OFQd9KrrV1sZSNrFhi7g1QSTMOIcSKw6ACJ2xlTp+lA7rlP
	Wp3YZoJEB1JX02gCd/H1lFTLINRIf8ddYjCtlg5iEbML6MGYEPIFRxHeNRcOIpLVd0l0BRzNs3OLy
	T5zTVm/7NSWEQLOEG+nDxi2U0dXQH+gZ1FtDSL144HaUZMcMFETvI9UlisTK6D+KDN9RG03vlt2z4
	14lK+DxN7OSQhuqKowVc3wO9kp+8cRNgeN4fhAEEQvvANMo6YD1eZCPrRyhJElxKZTKlEFEBdaE6E
	4PosmDyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFarz-00EJwH-0h;
	Tue, 19 Dec 2023 14:14:51 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFaru-00EJv4-31
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 14:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=Zb//ie0nKoNZEIJp4YSvT7a0IJI1YoSu6j/7bp+nONo=;
	b=szEru17yoGMgAXzZ1KM73NW6SumwGT1dI78OE3WsNsgGi0+QLCUrbdSLSFiFu0yS3OLUFA0ReZ8oK
	 1fC/tybavHIKyB7oRC3XQYukYM4CC6mulAm/2t7xSrztDeRmU8jteHWBVOUYAODTu44eN9ei2myXmz
	 4hC3yGXcMRctQUMeG30j8OL5PH5UjtQD5epD4b9FYGfyX+T6WnJHnNL8LD7gpOK8gO3z9cdws43gVG
	 95Z54sMqCoqUp2mEAr0tA5i+3CvrduLqFdV4gaoEGLJ4Qi/SqtMz08er5ZbIy5MlIH0hhfVOGNqysk
	 5DSRtS9N3o1VbzWOUBNmY+vMOFbbE3g==
X-MSG-ID: f2120d74-9e78-11ee-8d39-00505681446f
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>
Date: Tue, 19 Dec 2023 15:14:35 +0100
Message-Id: <20231219141435.163699-1-robin@protonic.nl>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_061447_407052_87DF5DF2 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should add 1 to the max_register index since counting is zero based.

i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
register 95 (last one).

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/nvmem/regmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index fa5405d7a8..ffc96a310f 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.priv = map;
 	config.stride = 1;
 	config.word_size = 1;
-	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
+	config.size = (regmap_get_max_register(map) + 1) * regmap_get_reg_stride(map);
 	config.cell_post_process = cell_post_process;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
-- 
2.40.1



