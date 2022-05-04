Delivery-date: Wed, 04 May 2022 11:44:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBYf-001WGs-4Q
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:44:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBYc-0002Zw-MS
	for lore@pengutronix.de; Wed, 04 May 2022 11:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+W92hGB3jq9LouZPRodMti9SpHGf/pgd1N5DpaJwHo=; b=giBMPNRCwpDwbD
	tQ9wMQmRiB4Cw/jgowbsACNidfd6R74z+qpya8xjkOS+UCkEKiA/YzKTVlF9ZK7cE1fKKsRMaQ4CF
	LvdIj8nOoSNA8bvspKmwtOVSxeH5bf9qxtpb3EQdrWVBL7mMxPVSIGaoAICqw3BYvfsIFaansjBQD
	5mlww7HDrgJxRzVMLw16JFaG6TkGZKXBukZ15gviwiZ8ecWAPqx6TjYbJyO5bse0V7C94rSLCm9gC
	tptEBoPzAiyb9v/dSvVz3e5W6V9Pd3UdmR2kvWx5eqZznom3mhKIKOqKvwenLUk3K2h8B5Cpeo0Dh
	Ik7kiymMiStmdAiQDNDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBWr-009zOC-46; Wed, 04 May 2022 09:42:44 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBIA-009qTa-TQ
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:34 +0000
Received: by mail-lj1-x22d.google.com with SMTP id q14so903654ljc.12
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6DrobGg/wVvMh1GgpyeP0BE8T6DI7HFOQYOy9DntUKg=;
 b=ZDKkzlI/JJ85LSeXd/TEwm0+22DeV77P5ERqa6M4k8Noei6+n8ir9guQIkSoyOKxBw
 QzaKVJx2SQ4AXJhlAcJm96qJw6EZBAfDmqo7Yuw33vm7TFj1d6GY2ULcnwEM+Wi4KxZE
 JVXoAL45hUln+0dFCfrguULEjt91lue6MsM+Q71Nws/P8HJvNT8d5Z2w/d7+DEUDiQCP
 gcSyxlAaTGP1pWYxEVbE2oV3uE11XDi6Y3GtclnJLJNUb/FJN1Gt4gxdRLDnKoFikmLY
 p/dsjlGjj5598jVBFTV0RSzldO3lxWp+fpca1Hlhz2cpFZ+mJXWqrhGqPrGT5PxSGWz5
 76mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6DrobGg/wVvMh1GgpyeP0BE8T6DI7HFOQYOy9DntUKg=;
 b=3ZxrGaGi/zAxi2QIVTruIWy7Cbu1wZdCp2IhA/WhG195gH/b0H2/LGYyw6vdJWtV0U
 omj/SUP1GXkadwbDqNp8b34XMvjkwiKevKnG4jazJVD6TwGbOZicmW/XpFvIUaKg4bLh
 B6pIJAF4MLT+DN7k88nb40KvDkBZoT3AE+nr/ls1DPQz6piSafkRiXLUSbHY8HpoM0ZT
 Zv9BS6q4OFJoYINH8+X1wLDNtsmaIcorcuuitbwt0quEJyvhp9eNao4N8LpfReHbB9Z/
 smV7w2ggr38qoWSdLzSamkiN2eVpraM/JVvp8z6c/O7NWDrPolyva8P3gjeDnIMyHuxF
 xtjw==
X-Gm-Message-State: AOAM532pe73TRadNnPLN1tTURR7miGh8E4ExfSiWkKFy+tC5K2hkNJHu
 lTRa4hJ1zafRcBrwJbwPR1V2Gd2mwkbrXLZI
X-Google-Smtp-Source: ABdhPJzDXA/ib4I3ez7DrwIwnpLEc6yeLAP9wfp9RtwYB+7U9a35zyf0iJgJSycuWquQQ6WnVQEM9Q==
X-Received: by 2002:a2e:a30a:0:b0:24f:8e8:76a1 with SMTP id
 l10-20020a2ea30a000000b0024f08e876a1mr11943473lje.14.1651656450065; 
 Wed, 04 May 2022 02:27:30 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:29 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:49 +0300
Message-Id: <20220504092553.27961-12-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022731_014179_42376015 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/16] ata: ahci: make rx_fis field in ahci_port of type void*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is supposed to represent a pointer so make it actually be one.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 5 ++---
 drivers/ata/ahci.h | 2 +-
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index d423da3a48..23085ebe09 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -307,8 +307,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	/*
 	 * Second item: Received-FIS area
 	 */
-	ahci_port->rx_fis = (unsigned long)dma_alloc_coherent(AHCI_RX_FIS_SZ,
-						&ahci_port->rx_fis_dma);
+	ahci_port->rx_fis = dma_alloc_coherent(AHCI_RX_FIS_SZ, &ahci_port->rx_fis_dma);
 	if (!ahci_port->rx_fis) {
 		ret = -ENOMEM;
 		goto err_alloc1;
@@ -422,7 +421,7 @@ err_init:
 	dma_free_coherent(ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma,
 			  AHCI_CMD_TBL_SZ);
 err_alloc2:
-	dma_free_coherent((void *)ahci_port->rx_fis, ahci_port->rx_fis_dma,
+	dma_free_coherent(ahci_port->rx_fis, ahci_port->rx_fis_dma,
 			  AHCI_RX_FIS_SZ);
 err_alloc1:
 	dma_free_coherent(ahci_port->cmd_slot, ahci_port->cmd_slot_dma,
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index de404e2e16..77196592ed 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -179,7 +179,7 @@ struct ahci_port {
 	struct ahci_sg		*cmd_tbl_sg;
 	void			*cmd_tbl;
 	dma_addr_t		cmd_tbl_dma;
-	u32			rx_fis;
+	void			*rx_fis;
 	dma_addr_t		rx_fis_dma;
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

