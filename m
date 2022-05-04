Delivery-date: Wed, 04 May 2022 11:43:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBXg-001WF0-MT
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:43:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBXd-0002Ns-Dx
	for lore@pengutronix.de; Wed, 04 May 2022 11:43:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fd0vN70fLk+kLIGQqml31laH027DoPvZiV154Y1pDUc=; b=h749sLRHG3wzVV
	muVCY2saJUiWXjc7OxTGsofEeBb+vA37/oMFtWbb+DJuNEeLVx9eWOf4zIPAtAjhC73Z1kc+tcYp9
	RDQOndlneVzsFdrkhR+8U7vR35UBXgmF6FnpgiSwLDgBq39mGJIExrbjkfa7LrV6l7rWSLN3xShsa
	zGoHdiybqjC5/FOkI4YUfNrBr5KVVZTKmCzLUbmL7+6d2AbdYGT1qRfPwVOuLeRA8htYGTNKb605g
	W7/mIT5xpEi2ztj4RHTuQVXWbhSzRHlo8D2QK6F6Ezqpx5xCcEmQQaWpO9WcnKo/UkAKwWb6YuwpN
	nF+OUeY6SfAgCN4LWvtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBVy-009z0A-MI; Wed, 04 May 2022 09:41:47 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBI1-009qdR-DG
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id i10so1286515lfg.13
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ci9Lj3A//7EvtZ3Galk/52Ggwsoh81hRnyK+jb5mtNY=;
 b=T4vNH4Y87P3tIRaW3vhZogRcJvvXmLF1gpIGeDDRrfq9ngy2cZki2f6YWf1oXOce6e
 ebr9uNY9FzKGJT8SBvNb0Uf2cgKF7WJwgEV0Wh/lvqqsNsRjbJbk0NlkhpBhRktDz8Pn
 2NtsvcLZAyUj/1ZpiFdxAkC5g16KoCpcNOuwFchtY8yJ//LVeuM8tfqjuzykmGZH9yNR
 MaajlKjiWnCUkWtvRBDHjT+EtOOIwkcoVtxOkqXk/7tn9pA94F+MUMwGVD8LXzhy2JWI
 pu9+jW9OSqqwrISRZ9QQky1aJ2J70nv/bS+xOQl6oAHroFtLVo0At3M103t2EALkceoY
 O/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ci9Lj3A//7EvtZ3Galk/52Ggwsoh81hRnyK+jb5mtNY=;
 b=f4f2my2+uGpTiSpp7GSpMBdT6QmSINVrQb1oQ5foHcOm7lspufbwt0aMAW8V00Cd0N
 3WMuqfT2jLoK4k80msST0bcqYr+ees0p2xB8OC4ERiQdlmKFsFW6tORYXAKMDtJx8Jqh
 oAG3IxLC8SY0sMC9j+A3NNFlqXOVFl98K17ivB52kh2W4WGPQDl6+ndgrmeb5vMnogeh
 U0XX9kJhlOZ+FjN7sdR6mmEIKc4RJcWUIAGfbPVGu4VmSnU8mL8AtTdDkP0QayRbW1S5
 1Zd3SD5l7wYlkNbnmupsJLwGcynu2KCn/CJbjrN01nnAmTSJoZprYzIt0P+H0zJ5UOK7
 1ltA==
X-Gm-Message-State: AOAM5302g/lcR0+8yB60VC5sQ2juGc5+EQmEAIQ9yvBnMXkd1Qw0Qu5X
 Q6/bXWSAMiM+0FaJri25MvVz70JIvx8fYXWL
X-Google-Smtp-Source: ABdhPJy3ddpWyPg7bm2I9a7wcYmyJ1HUkKsx0t2Qt4SqpoP7tlocZyM6LK9tIK4UzWokcs1IQooJKQ==
X-Received: by 2002:a05:6512:118b:b0:46b:a9ae:3a3b with SMTP id
 g11-20020a056512118b00b0046ba9ae3a3bmr13853122lfr.188.1651656437561; 
 Wed, 04 May 2022 02:27:17 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:17 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:47 +0300
Message-Id: <20220504092553.27961-10-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022721_572433_3058F2ED 
X-CRM114-Status: GOOD (  13.96  )
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
Subject: [PATCH 10/16] ata: ahci: map buffers properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using dma_sync_single_for_*() does not make sense in there - we are
given a cpu side address of a buffer and need to actually map it for
the device.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 37 ++++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 1d8099c2ee..ff9093c7b7 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -121,7 +121,7 @@ static void ahci_fill_cmd_slot(struct ahci_port *ahci_port, u32 opts)
 	ahci_port->cmd_slot->tbl_addr_hi = 0;
 }
 
-static int ahci_fill_sg(struct ahci_port *ahci_port, const void *buf, int buf_len)
+static int ahci_fill_sg(struct ahci_port *ahci_port, dma_addr_t buf_dma, int buf_len)
 {
 	struct ahci_sg *ahci_sg = ahci_port->cmd_tbl_sg;
 	u32 sg_count;
@@ -133,12 +133,12 @@ static int ahci_fill_sg(struct ahci_port *ahci_port, const void *buf, int buf_le
 	while (buf_len) {
 		unsigned int now = min(AHCI_MAX_DATA_BYTE_COUNT, buf_len);
 
-		ahci_sg->addr = cpu_to_le32((u32)buf);
+		ahci_sg->addr = cpu_to_le32(buf_dma);
 		ahci_sg->addr_hi = 0;
 		ahci_sg->flags_size = cpu_to_le32(now - 1);
 
 		buf_len -= now;
-		buf += now;
+		buf_dma += now;
 		ahci_sg++;
 	}
 
@@ -151,20 +151,26 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	u32 opts;
 	int sg_count;
 	int ret;
+	void *buf;
+	dma_addr_t buf_dma;
+	enum dma_data_direction dma_dir;
 
 	if (!ahci_link_ok(ahci_port, 1))
 		return -EIO;
 
-	if (wbuf)
-		dma_sync_single_for_device((unsigned long)wbuf, buf_len,
-					   DMA_TO_DEVICE);
-	if (rbuf)
-		dma_sync_single_for_device((unsigned long)rbuf, buf_len,
-					   DMA_FROM_DEVICE);
+	if (wbuf) {
+		buf = (void *)wbuf;
+		dma_dir = DMA_TO_DEVICE;
+	} else {
+		buf = rbuf;
+		dma_dir = DMA_FROM_DEVICE;
+	}
+
+	buf_dma = dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir);
 
 	memcpy((unsigned char *)ahci_port->cmd_tbl, fis, fis_len);
 
-	sg_count = ahci_fill_sg(ahci_port, rbuf ? rbuf : wbuf, buf_len);
+	sg_count = ahci_fill_sg(ahci_port, buf_dma, buf_len);
 	opts = (fis_len >> 2) | (sg_count << 16);
 	if (wbuf)
 		opts |= CMD_LIST_OPTS_WRITE;
@@ -174,17 +180,10 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 
 	ret = wait_on_timeout(WAIT_DATAIO,
 			(ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) == 0);
-	if (ret)
-		return -ETIMEDOUT;
 
-	if (wbuf)
-		dma_sync_single_for_cpu((unsigned long)wbuf, buf_len,
-					DMA_TO_DEVICE);
-	if (rbuf)
-		dma_sync_single_for_cpu((unsigned long)rbuf, buf_len,
-					DMA_FROM_DEVICE);
+	dma_unmap_single(ahci_port->ahci->dev, buf_dma, buf_len, dma_dir);
 
-	return 0;
+	return ret;
 }
 
 /*
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

