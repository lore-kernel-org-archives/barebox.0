Delivery-date: Fri, 10 Feb 2023 15:41:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaS-0037dr-MF
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:41:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaP-0004sg-Qj
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOj7/CIFUd/s4Wt49qBF+KvXr3RLS8UNd8V5u7nsvGQ=; b=yZYXqdcJMBLf6d
	T1BArC/4yhg1XcjAkx0DmNWibOPKqUrp9fSsfN6coqmSKv3xEQf+UU8V4qBFPgC3fIaqaNiaJ/hk8
	DRgS4ggsc5zCbXsv8I+Pz76YHluliZVaV7euu16zi7tnoCPvK/FqTnyAkID6iLsaiXx/sTBRzauQ1
	CDuex3nBRgTgeLfMEX65Mrlmdl4v6vjmTnJTfczdODYK8lVArBAh4uOWQkXJjBelBaIpA0PcEapmc
	BawNbzwgExt9mO4e1du3qFQfd1IyHpXxdO73aCC8FSNF8BAdUc0n+MNmkt24b7pSFO09gEucCwa3X
	/xi4P7JjJM8BEOeu6iuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUYz-0064PI-OV; Fri, 10 Feb 2023 14:39:45 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUYu-0064Mw-RD
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:39:42 +0000
Received: by mail-qt1-x82d.google.com with SMTP id w3so5897195qts.7
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOj7/CIFUd/s4Wt49qBF+KvXr3RLS8UNd8V5u7nsvGQ=;
        b=f23c0VfMKkkzzV34giZpPkh6uQVlZxpW0jeQLGg8KDa2DkWxEj40/rWH5gyX4YZR19
         5eCOXuyCpId772Qim6PslH1e7bCQpA5w82nYhP47fKNDOXn4UkUyCtEb+BFo89M44zeT
         8bkX6Ulv3e+NT59/FutvUfj/JIya31KkewP66I0Hl3Nuu8pWUfL/r0E1bMfVd/FMqXOB
         P5QYeSWFqo5zVzhk1WUfPp8ixG9YQ5/tqbss86QWSP/cy7Kx8IuwjHvcU/8KGsPX+hhI
         klaJOp76W1yaxZrcNeDDb68oTz2uHAsiaWzZUH2aCKJw8gNwnzEfeGjFdyyuT10JeYxM
         g19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOj7/CIFUd/s4Wt49qBF+KvXr3RLS8UNd8V5u7nsvGQ=;
        b=DOmUCJHH9KA0Co82sI9jXFONXs0idXyYVF3uSNsmgTHW+0XL2tWiZwZUszXWFvvijk
         JSmLT2E89VIUNkGYy5nr1MC666PMGYhJxnst0R+1bRIu3wFrzH4CTf7VHSFnqMuxGV96
         qY4P6Xb4vU4C4K8TOVEKwEjHWxcIT4pKXYiD7cVi2Am6GVm4JzdCHjFdvNevQlBNSFsj
         x9FKF/AC4u2btw5IMxHBTZ6sSKWwTuuDlbVXfUoy9eyMaRGlonQx8wJvse5IQdcDoAFx
         xvHkEGjKxTkgQWvrID90WLXzXPBlczs/UI8PkuMcA6ws/VvYA210YTKQm8AWDmSPG/hw
         EagA==
X-Gm-Message-State: AO0yUKVb8FeM9lgyWexvOOE3bn63cCM66caPPjMiXs/CqVO8TR2c4MBT
	t+YXgZdNluyfDY3qk9HEtNck3dJIdeEpUEItFN0=
X-Google-Smtp-Source: AK7set878TyrI/Iq4m3uJdJRxpYqQaLUpyaeOoPZE8AP97uP2A5w6N5/TPl5z1XL6vyiMXvzqpxjHA==
X-Received: by 2002:ac8:5c08:0:b0:3b9:b6c8:6d7a with SMTP id i8-20020ac85c08000000b003b9b6c86d7amr26665048qti.29.1676039977359;
        Fri, 10 Feb 2023 06:39:37 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u1-20020ac83d41000000b003b643951117sm3442155qtf.38.2023.02.10.06.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:39:36 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:39:23 +0300
Message-Id: <20230210143924.915149-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210143924.915149-1-denorl2009@gmail.com>
References: <20230210143924.915149-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_063940_910668_6F0052F7 
X-CRM114-Status: GOOD (  11.33  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: e1000: properly map dma allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/e1000.h | 2 ++
 drivers/net/e1000/main.c  | 8 ++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 558a4ac271..d440d7540a 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2183,7 +2183,9 @@ struct e1000_hw {
 	struct mii_bus miibus;
 
 	struct e1000_tx_desc *tx_base;
+	dma_addr_t tx_base_phys;
 	struct e1000_rx_desc *rx_base;
+	dma_addr_t rx_base_phys;
 	unsigned char *packet;
 	dma_addr_t packet_dma;
 
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index e00bc48417..c259d72f27 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3267,7 +3267,7 @@ static void e1000_configure_tx(struct e1000_hw *hw)
 	unsigned long tctl;
 	unsigned long tipg, tarc;
 	uint32_t ipgr1, ipgr2;
-	const unsigned long tx_base = (unsigned long)hw->tx_base;
+	const unsigned long tx_base = (unsigned long)hw->tx_base_phys;
 
 	e1000_write_reg(hw, E1000_TDBAL, lower_32_bits(tx_base));
 	e1000_write_reg(hw, E1000_TDBAH, upper_32_bits(tx_base));
@@ -3386,7 +3386,7 @@ static void e1000_setup_rctl(struct e1000_hw *hw)
 static void e1000_configure_rx(struct e1000_hw *hw)
 {
 	unsigned long rctl, ctrl_ext;
-	const unsigned long rx_base = (unsigned long)hw->rx_base;
+	const unsigned long rx_base = (unsigned long)hw->rx_base_phys;
 
 	hw->rx_tail = 0;
 	/* make sure receives are disabled while setting up the descriptors */
@@ -3595,8 +3595,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	hw = xzalloc(sizeof(*hw));
 
-	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), DMA_ADDRESS_BROKEN);
-	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), DMA_ADDRESS_BROKEN);
+	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), &hw->tx_base_phys);
+	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), &hw->rx_base_phys);
 
 	edev = &hw->edev;
 
-- 
2.30.2



