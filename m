Delivery-date: Wed, 04 May 2022 11:42:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWi-001WCg-AT
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:42:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWf-00022f-85
	for lore@pengutronix.de; Wed, 04 May 2022 11:42:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhtTEFn58dJaaAqckGMaghYeKBhi9ld1Dw/1X/xurBk=; b=o/9ZoaFvRuIkpK
	/NvVfOR+46wOgkChRQ/cduzCeIX+8vylTjojBsp4CShww8wR/cTje3nPlo0MlaBuDPeA+yckJNIK9
	DsgnQRVaHb51PQ2q/m8e3gmO8fgj2WPoAxA0ux5GUkSIw0y4QoyNW/UTCYt+qS5MyCLI5haFvqX81
	hDqStcrnywHW80PgcIeub182IU14D5CdaTx+GAOYDUHzRQdd5Db6p/ZrkI8kCfuWgkw8iVdlaJloI
	sV1H2DTQIS5Sy9RDwzcyXlXUOETflOe5nxu0eV00OTAeT8WPGPJ60tyacwevX/Ht/tzHWmlRJiLyw
	CZ+U0uFW2R2JcMBwWipg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBV5-009yV8-IE; Wed, 04 May 2022 09:40:52 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHr-009qZs-II
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:13 +0000
Received: by mail-lf1-x12e.google.com with SMTP id x33so1335896lfu.1
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uDjc1RQnUVkx7USl41YXeRlgUPmFbQ1ccdZPjPtUM1Y=;
 b=d5Mau5mP7ixbSzKJHeNJ3C1Bs/fKeoh0taParN+ioRDFAu0QCc36YDGcuEk7wplxn0
 6ZjzT82NzuTi0bjbcCKvAmGdGeYKdUdPqprSFThsETloPAeO6YeWZECayfZUgO3YPCyx
 tSLznUJgBABiN72nSc9Q0cZFYvC+ZNqCF1pKj/W4mtETHZbphAys+8fMGYTRxCciR/MN
 R/LqBtEJrj5fD8oKhCxswuNrLPuQXQqk2MdGTSsKihKLOjsJ4rHuApmaIzbqrVYwhIsq
 aYvHiRiHxXFldcUIEu04Sdek26dVu7dUe8lZlXfeJQObhpXuGLXwmPmzaVDYcSnh+zWH
 CW6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uDjc1RQnUVkx7USl41YXeRlgUPmFbQ1ccdZPjPtUM1Y=;
 b=Foxm8OdIX8FXQgzuANLaBzPfABj2QKiZOCD50wjGck+6riZQJE5fNzh8PPzxRTlkk5
 OejIH4QELMSmlUvMifK1DSJlmQWNIwuhw4UqpTGkSpmql9GCm4NsV42Rd5zL84NAYzE9
 8kKGMJ1di6Gq74RTcOcdpeIy5M8G+OEjTRhLjPsTE6qXLQsU2r6rK2JkjtvAscPbYJMp
 AIhKTmWGOi35vTIj2tG71TfXpv+DbFyFFAZoFPlgqB3vLNbNPDfodkZKwvgGzP2rAoyu
 hGx4HA68FXId5asAkYdBtlkihrUfcyPtmUej3rAmo3AdGrnO0TJ16nKyy0u9kG0cLaLD
 ZwbQ==
X-Gm-Message-State: AOAM533b0DIN5yxE2k9o5/gFSXMGgL9Y9C9AGthDn5jbCFMtLZD2im4N
 3flUIYodNOp2j1R530J9twVB2mAHSRBjNY2h
X-Google-Smtp-Source: ABdhPJzksWR69zDJaNoMIgRcGLFwTX4VNQ+OlNBhNmNtpB1ttzROm7E/Z08X3zJZ/zvh64mQgNEV5A==
X-Received: by 2002:a05:6512:32c5:b0:473:aefd:e68e with SMTP id
 f5-20020a05651232c500b00473aefde68emr3379013lfg.208.1651656429876; 
 Wed, 04 May 2022 02:27:09 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:09 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:44 +0300
Message-Id: <20220504092553.27961-7-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022711_659065_03862090 
X-CRM114-Status: GOOD (  14.07  )
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
Subject: [PATCH 07/16] ata: ahci: correct named constants values and names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This gives more clear names to some of the macros that designate the
sizes of various memory structures and fixes a mistake in one of them.
The command table item was regarded as taking 32 bytes in size while
it is actually supposed to only take 16 bytes according to the spec.
This also changes a somewhat misleading comment that calls the command
list a command table. There is a cmt_tbl field that actually holds a
pointer to a different structure that is called a command table in the
specification, so it seems better to more clearly disambiguate them.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c |  6 +++---
 drivers/ata/ahci.h | 10 ++++++----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index c02f499ac1..f7eb35c09d 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -288,10 +288,10 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	}
 
 	/*
-	 * First item in chunk of DMA memory: 32-slot command table,
+	 * First item in chunk of DMA memory: 32-slot command list,
 	 * 32 bytes each in size
 	 */
-	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_SLOT_SZ * 32,
+	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_LIST_SZ,
 						  &ahci_port->cmd_slot_dma);
 	if (!ahci_port->cmd_slot) {
 		ret = -ENOMEM;
@@ -419,7 +419,7 @@ err_alloc2:
 			  AHCI_RX_FIS_SZ);
 err_alloc1:
 	dma_free_coherent(ahci_port->cmd_slot, ahci_port->cmd_slot_dma,
-			  AHCI_CMD_SLOT_SZ * 32);
+			  AHCI_CMD_LIST_SZ);
 err_alloc:
 	return ret;
 }
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 3ca64c3d70..99c45f30fc 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -10,13 +10,15 @@
 #define AHCI_PCI_BAR		0x24
 #define AHCI_MAX_SG		56 /* hardware max is 64K */
 #define AHCI_CMD_SLOT_SZ	32
-#define AHCI_MAX_CMD_SLOT	32
+#define AHCI_MAX_CMDS		32
+#define AHCI_CMD_LIST_SZ	(AHCI_CMD_SLOT_SZ * AHCI_MAX_CMDS)
 #define AHCI_RX_FIS_SZ		256
 #define AHCI_CMD_TBL_HDR_SZ	0x80
 #define AHCI_CMD_TBL_CDB	0x40
-#define AHCI_CMD_TBL_SZ		AHCI_CMD_TBL_HDR_SZ + (AHCI_MAX_SG * 32)
-#define AHCI_PORT_PRIV_DMA_SZ	(AHCI_CMD_SLOT_SZ * AHCI_MAX_CMD_SLOT + \
-				AHCI_CMD_TBL_SZ	+ AHCI_RX_FIS_SZ)
+#define AHCI_CMD_TBL_ITM_SZ	16
+#define AHCI_CMD_TBL_SZ		(AHCI_CMD_TBL_HDR_SZ + (AHCI_MAX_SG * AHCI_CMD_TBL_ITM_SZ))
+#define AHCI_PORT_PRIV_DMA_SZ	(AHCI_CMD_LIST_SZ + AHCI_CMD_TBL_SZ + AHCI_RX_FIS_SZ)
+
 #define AHCI_CMD_ATAPI		(1 << 5)
 #define AHCI_CMD_WRITE		(1 << 6)
 #define AHCI_CMD_PREFETCH	(1 << 7)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

