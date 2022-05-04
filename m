Delivery-date: Wed, 04 May 2022 11:45:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBa0-001WJa-94
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:45:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBZw-0002xi-Mr
	for lore@pengutronix.de; Wed, 04 May 2022 11:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DctlvzlXfOzu/FMkL1hcQaYdUiyx3US71RqsiFNhQdA=; b=vkgLb75HubrwMb
	OiRtb9bYX+JFcwc2yj10DmtYvRKqHlcl4M5zLhp39UFD+tMc3cLCxIT02uqZPiaJYNrQ2Fd7pVCT2
	zeuk3kdx468QkWZqk5x31ZM7VlZCn1NOo8wBEAxgnb5IQeol26usszldn4RZ6FiYslBYyFeMrhtnD
	9voop/eR4EdlQ5gdnQ79Ad0InfIDb1WKwbOm5iW8Fp+dRkuBRbS7D6/UKZ7YAt3atZpSJcWs+l1i2
	nzAMrahm8puUUh4XxO8ar9DAJxIXsqQbnP2vjwxhPHHMPWzQKaqgJ0ZdG8PUjQ4lO0FAl/MO5mfX7
	1XmLvvBt5fopkBnF5COQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBYK-00A08z-Cj; Wed, 04 May 2022 09:44:12 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBIL-009qaY-La
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:43 +0000
Received: by mail-lf1-x134.google.com with SMTP id bq30so1330263lfb.3
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TaEV8WGWWsBHJ0v21KQ1YOUFfJjwsKGrBznoD7RBreM=;
 b=Qlw5Q2FsD6sDHEyZGATLtleU41TpYkHbEmev7tdJBDPmT9uxrKIgZjxoripuyA8DJM
 1W6B9TnFFUZfGBEdAkv5+XqNWNnVySGDYOmRDFR5jrczodGK9+83EAVPqSAp+UNdNt25
 IzxC9M/qTnTKBfQ2g9D6iF4WTR9jJcEEe0mX7o1QmF5yp71qcOYEmIa2/WBzNPgpWC6V
 kOKfhyQHubzV62OYDl+sKZSOvxlLJcGpsL0eg2kewNVXdkmnAE3Tm4Vx/x8JB3C7kCoB
 jHloo8ADSI9NzYa5aRN6Z4OrMqLV3DCtT43qstlwJ9eR9JSp8Qmp13K+biQC67XmAkSX
 DiMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TaEV8WGWWsBHJ0v21KQ1YOUFfJjwsKGrBznoD7RBreM=;
 b=4oa1qB+YGICxJ4gPD7VC3DQWfN3rllG8C3DRBg/vJuTgYAv035qPSnu5OPamZvFcLr
 yzYUiS0zH/KeXeUvMtW5fDm5ANR9WlCfRS2b8pUmNT9RArJRi1xgsqNFYv6BD3oOX2yk
 Gk3QMsSZA/3F+zhmEXXVcSeJg57weqnKTlYAUwyciz6yinVR0CzGwiNy1rCmdp6M1AI0
 tNRlhfdB54mKJfRvlL7dzsithwwmilO4jbvni91SDmyVZNceYJ2rFWOK9C6fw14CgLjh
 tUohMRe1E/nguSpO6EVaCZfa9ezqhyrXcPPDqJrAlSuT3VqegAjlghw8WqNDnEpxX8Od
 eFxQ==
X-Gm-Message-State: AOAM532XeVgFikVg9Ins16cUL3qK4og9c9Z2kBX2+fBprb7vBJe52NLA
 UVaLcdhpBLpgfJXFl/3ZbGoeIChSMV4AY5rH
X-Google-Smtp-Source: ABdhPJyFZ9iRLavHkZrRaNzXEjuE9BNEFg+R67Plmh9PKCabirf6PYWjABWJ2SJTosuF3kohs4i5cg==
X-Received: by 2002:ac2:4202:0:b0:444:14bf:86dc with SMTP id
 y2-20020ac24202000000b0044414bf86dcmr13523464lfh.126.1651656460844; 
 Wed, 04 May 2022 02:27:40 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:40 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:53 +0300
Message-Id: <20220504092553.27961-16-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022741_745970_A01C8F59 
X-CRM114-Status: GOOD (  12.84  )
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
Subject: [PATCH 16/16] ata: ahci: allocate memory in one call in
 ahci_init_port()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Memory allocated with dma_alloc_coherent() is aligned by page size.
Calling it multiple times leads to unnecessary fragmentation and
overhead considering that we are actually able to allocate all the
memory that we need at once by issuing only one call.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 40 ++++++++++++++--------------------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 24098ada08..f707efb50f 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -273,6 +273,8 @@ static int ahci_write(struct ata_port *ata, const void *buf, sector_t block,
 static int ahci_init_port(struct ahci_port *ahci_port)
 {
 	u32 val, cmd;
+	void *mem;
+	dma_addr_t mem_dma;
 	int ret;
 
 	/* make sure port is not active */
@@ -290,16 +292,17 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 		mdelay(500);
 	}
 
+	mem = dma_alloc_coherent(AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
+	if (!mem) {
+		return -ENOMEM;
+	}
+
 	/*
 	 * First item in chunk of DMA memory: 32-slot command list,
 	 * 32 bytes each in size
 	 */
-	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_LIST_SZ,
-						  &ahci_port->cmd_slot_dma);
-	if (!ahci_port->cmd_slot) {
-		ret = -ENOMEM;
-		goto err_alloc;
-	}
+	ahci_port->cmd_slot = mem;
+	ahci_port->cmd_slot_dma = mem_dma;
 
 	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pa)\n",
 			ahci_port->cmd_slot, ahci_port->cmd_slot_dma);
@@ -307,22 +310,15 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	/*
 	 * Second item: Received-FIS area
 	 */
-	ahci_port->rx_fis = dma_alloc_coherent(AHCI_RX_FIS_SZ, &ahci_port->rx_fis_dma);
-	if (!ahci_port->rx_fis) {
-		ret = -ENOMEM;
-		goto err_alloc1;
-	}
+	ahci_port->rx_fis = mem + AHCI_CMD_SLOT_SZ;
+	ahci_port->rx_fis_dma = mem_dma + AHCI_CMD_SLOT_SZ;
 
 	/*
 	 * Third item: data area for storing a single command
 	 * and its scatter-gather table
 	 */
-	ahci_port->cmd_tbl = dma_alloc_coherent(AHCI_CMD_TBL_SZ,
-						 &ahci_port->cmd_tbl_dma);
-	if (!ahci_port->cmd_tbl) {
-		ret = -ENOMEM;
-		goto err_alloc2;
-	}
+	ahci_port->cmd_tbl = mem + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
+	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
 
 	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pa)\n",
 			ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma);
@@ -418,15 +414,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = -ENODEV;
 
 err_init:
-	dma_free_coherent(ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma,
-			  AHCI_CMD_TBL_SZ);
-err_alloc2:
-	dma_free_coherent(ahci_port->rx_fis, ahci_port->rx_fis_dma,
-			  AHCI_RX_FIS_SZ);
-err_alloc1:
-	dma_free_coherent(ahci_port->cmd_slot, ahci_port->cmd_slot_dma,
-			  AHCI_CMD_LIST_SZ);
-err_alloc:
+	dma_free_coherent(mem, mem_dma, AHCI_PORT_PRIV_DMA_SZ);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

