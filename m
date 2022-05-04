Delivery-date: Wed, 04 May 2022 11:43:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBY6-001WFn-67
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:43:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBY4-0002TS-7R
	for lore@pengutronix.de; Wed, 04 May 2022 11:43:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5yaNqsFnBZxJaThlecXOzI5FSXUKBrIHrbqqxDXDRU=; b=RnnFxOnFAVwhA4
	BV5IJXAvwYuGvEp7ZjXZgha1q/ohjqf0JIW9hoGjHMQEW4oG0L6MIUu8cOx4A1rvuXvRnY07CaUa6
	apjLr/rZlt2ebgR2c+KPDkojmq1yfYNp8NbJ6r0TTVxMoPCXeODhV4EYKKZ++hRwPVLDQKSUchYDG
	WOkMRGu/nyzbdNE4gqh8HEgyhvlRw4hROf9shjDVXQvUsZ3cB2MmHUDlYXIlBENGhBi+SzojkLawn
	xsq5l8F9ey2lc9Yh0WdcxrBKYgWq2uOtfeNB/i1APc7v5D1tAWtKBs+JFfqXuAYPmfgEljTPXrTa2
	A26QpN12ctTKU8+IfpVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBWL-009zAq-GK; Wed, 04 May 2022 09:42:11 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBI9-009qjh-KL
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:32 +0000
Received: by mail-lf1-x12b.google.com with SMTP id w19so1297052lfu.11
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P61o70A9aLvJQBpTi5xIOw4UF2k11yWLCp1tBV5nMoM=;
 b=Ic+dsGkP6teZH0VvPfxhbdhq9lXFOxdZxokjp+dm5nmPIAX9+7KmwWm7ynRwonhRoq
 LpwnnbYGjbMTBU1aCQb4fLMZ8fxH+bb/4eEQPlKrUT8YQitjtJao6a01rDpLMvTIKs4R
 HqPnAArd8CR+r6tfrlCVwg3PVHfh4VAU2VzS0q1SG1V94wofX0r3JBoWSQ4FQxp7+K4d
 AQubvvAZr/LksSKNcWM3t7XSYyxz/8he1YZl225r1SQgZnIQW4EGX6z9a7+WYz4cjRYC
 MCTtsqXQMROQtGyzCrpeQUtvKQ4SGYNGfngvHMzdrbzvXRmlbmLHJkHciekzGp0/YjM3
 G8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P61o70A9aLvJQBpTi5xIOw4UF2k11yWLCp1tBV5nMoM=;
 b=mPlDlakYopks2KFYUZMV1Xi5Bk5u2yvs1ebft0bYZs+1y8B+d7Rd68ijbFYKBf7L7l
 ZtCadca6TguZgPPCli+mcZv/Lukr0DhbOLr/fY03ITb8CEMhPbKOSJ4a8BHUObyWVl70
 2Y9YcygpTmkYAJsEK6Zb3O9nODWv8YrFEViytbWr6kWu7e+XUtN3fJWPdUTvT6pCyu7N
 oNkkhefCC5JuAuybM5vT4hdwXbC5FEzLwkNGa5rw1ieTd+CmhaOs+iY8eGuK5Vv/lJz9
 3F6/eB1WiKbIktIV7xDjkaW/DHZlernhb6NItAyW5082rX1JO6RFoJEtTvvR7o2iTXIg
 tVTQ==
X-Gm-Message-State: AOAM531V3PdeOZmtEY/L+ayljfhA1UtXtUv2oUQljzOzBfzcZ4MxrZY5
 V1qaaC40yV0HlOUQiX3sEIbvm/lY8iiX7cSB
X-Google-Smtp-Source: ABdhPJxWsOIzJVSQ51g0/o5aqvkEiAWMrhE6lu5ZDU55NPqgPR6pqFdaV/2AWtuvZxBSEG8Aj3070w==
X-Received: by 2002:a05:6512:3e1b:b0:472:5f64:e1d9 with SMTP id
 i27-20020a0565123e1b00b004725f64e1d9mr10228564lfv.489.1651656447773; 
 Wed, 04 May 2022 02:27:27 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:27 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:48 +0300
Message-Id: <20220504092553.27961-11-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022729_724531_44C85A8F 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH 11/16] ata: ahci: use 64-bit addressing if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index ff9093c7b7..d423da3a48 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -117,8 +117,10 @@ static void ahci_fill_cmd_slot(struct ahci_port *ahci_port, u32 opts)
 	ahci_port->cmd_slot->opts = cpu_to_le32(opts);
 	ahci_port->cmd_slot->status = 0;
 	ahci_port->cmd_slot->tbl_addr =
-		cpu_to_le32(ahci_port->cmd_tbl_dma & 0xffffffff);
-	ahci_port->cmd_slot->tbl_addr_hi = 0;
+		cpu_to_le32(lower_32_bits(ahci_port->cmd_tbl_dma));
+	if (ahci_port->ahci->cap & HOST_CAP_64)
+		ahci_port->cmd_slot->tbl_addr_hi =
+			cpu_to_le32(upper_32_bits(ahci_port->cmd_tbl_dma));
 }
 
 static int ahci_fill_sg(struct ahci_port *ahci_port, dma_addr_t buf_dma, int buf_len)
@@ -133,8 +135,9 @@ static int ahci_fill_sg(struct ahci_port *ahci_port, dma_addr_t buf_dma, int buf
 	while (buf_len) {
 		unsigned int now = min(AHCI_MAX_DATA_BYTE_COUNT, buf_len);
 
-		ahci_sg->addr = cpu_to_le32(buf_dma);
-		ahci_sg->addr_hi = 0;
+		ahci_sg->addr = cpu_to_le32(lower_32_bits(buf_dma));
+		if (ahci_port->ahci->cap & HOST_CAP_64)
+			ahci_sg->addr_hi = cpu_to_le32(upper_32_bits(buf_dma));
 		ahci_sg->flags_size = cpu_to_le32(now - 1);
 
 		buf_len -= now;
@@ -327,8 +330,12 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
 
-	ahci_port_write_f(ahci_port, PORT_LST_ADDR, ahci_port->cmd_slot_dma);
-	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, ahci_port->rx_fis_dma);
+	ahci_port_write_f(ahci_port, PORT_LST_ADDR, lower_32_bits(ahci_port->cmd_slot_dma));
+	if (ahci_port->ahci->cap & HOST_CAP_64)
+		ahci_port_write_f(ahci_port, PORT_LST_ADDR_HI, upper_32_bits(ahci_port->cmd_slot_dma));
+	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, lower_32_bits(ahci_port->rx_fis_dma));
+	if (ahci_port->ahci->cap & HOST_CAP_64)
+		ahci_port_write_f(ahci_port, PORT_FIS_ADDR_HI, upper_32_bits(ahci_port->rx_fis_dma));
 
 	/*
 	 * Add the spinup command to whatever mode bits may
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

