Delivery-date: Thu, 05 May 2022 16:47:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmclF-002nOh-8i
	for lore@lore.pengutronix.de; Thu, 05 May 2022 16:47:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmclE-0007Uk-1m
	for lore@pengutronix.de; Thu, 05 May 2022 16:47:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gmTFVz2HstGTBEU2tzEg4v78wQK0eWlHELc7u3atnjg=; b=pdhKIZEL0q44UZ
	CSt9xKNPoOHc1VNWUEn537yJIr9EYIsK3lpvYCluiuVGPFkCHFc+FheHQEmamdzKOqcAccTEkNQTc
	lN6sNINIGOq/JQFN9wCjYq7DJfhqxyPKiG6OG7LL2bOwmaMxLDWBO8BRnJynpnKzKf7qgNe0FRgcK
	YBNQi+RJZJWYO0/O+W8QtgN++2wUNhZu+bx5bdFSMQ+ijPT2K1eTnacgjfAJp2Db1aYuTrZ8iAaUY
	+7cidG+QPgWROf5ZRf+n7WRQfOFcqS6t8eVCZPczASb/q1kx8qRUjXQge3awx+laywUnjkMRcn2si
	Focpw2VNyvCK3xntQD7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmcjU-00GRbz-1D; Thu, 05 May 2022 14:45:32 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmcjO-00GRar-2y
 for barebox@lists.infradead.org; Thu, 05 May 2022 14:45:27 +0000
Received: by mail-lf1-x129.google.com with SMTP id bu29so7912566lfb.0
 for <barebox@lists.infradead.org>; Thu, 05 May 2022 07:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=urECws8MKN3HDMweY/E2BTkQL1zWnTgFwAagT0jaXI8=;
 b=pikcVU/3OkLODXV+RXyop/c3vjUsjXCAxWcosjeSvnonl8JxEGw/GHOELd+iOAVWrN
 o/SQN8VgTjqvEyQo/peR7TUZpdzDpzuf4NQazRdGNvuh8sBC9RZRs0Cecg6tDywP0Fna
 dOGQ60Y9ESCGjZDb434TtrshY4Fv6egMGiWtmGQAtC+0S8ArZpnK9V/aFqUVl6kGL8DU
 c2o1puUas0MuBe8kB5NLtUe4OPZZ1o+jy844ZNLllF4Gat3BeOAVn2pWPFYOmUc2hJqh
 kytEX5kieF5QsrLr7lgy9ffe95LJkPCC3AfKYX8AMJ547d9/t4A7SQIcqdy1jgWDEf6t
 ckzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=urECws8MKN3HDMweY/E2BTkQL1zWnTgFwAagT0jaXI8=;
 b=5hQIVtN6inxUb4f0GpGh2mho/v1I8RnLSOtnsXPM+pofQ2hindghQdgIqpl5HTvYn/
 K/a/PQEZP+2Jg1y13p2cmeGtUW7qRI5IOv4At5M/57conH3PJ8yqS+NnHYXSCO78sZdE
 Qfk8gvUKOdAWe5V3E5tQlADkKcEmADsna73odrljGy+29TJO/w6N1cjcDZiNYrsfZ+/D
 46oTWibGGLAuM6ZHQODenj5WeuPZEd7uhDQyXN7kHRzOvIm7R9F7rkljBVAT/BN7MlUw
 hKM2iqZOtLc/5uvfVzpvSmX33pXFmtXukJ010yIeQfdlq6DLIlGgtE5lIKjfy2iBgiBQ
 90Yg==
X-Gm-Message-State: AOAM531JRhrPPV6J2yA8n8I4LPzPFhm1Dc7yTMnOP/xjqLiKkQg4nsB1
 pZj81ux1z4XldtF+cY8IGFCacYlFBRpm4vQqTzo=
X-Google-Smtp-Source: ABdhPJz1qbX1bVcTeAtARXeioNNnPmXNXNcBIem0X5uEv7TAgJJ5Bz6bL8DPblNklfQ0O5NAu6XBpg==
X-Received: by 2002:a05:6512:230a:b0:473:c2ae:a5e1 with SMTP id
 o10-20020a056512230a00b00473c2aea5e1mr5192809lfu.569.1651761921771; 
 Thu, 05 May 2022 07:45:21 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 p4-20020a2e8044000000b0024f3d1dae8asm229747ljg.18.2022.05.05.07.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 07:45:21 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  5 May 2022 17:44:40 +0300
Message-Id: <20220505144440.29188-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_074526_163558_08F5CB20 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: [PATCH] ata: ahci: use correct macro when calculating offsets in dma
 memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The macro that indicates the size of a single element in the command
list was incorrectly used instead of the macro that stands for the size
of the whole list.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f707efb50f..eb9e1bd133 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -310,15 +310,15 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	/*
 	 * Second item: Received-FIS area
 	 */
-	ahci_port->rx_fis = mem + AHCI_CMD_SLOT_SZ;
-	ahci_port->rx_fis_dma = mem_dma + AHCI_CMD_SLOT_SZ;
+	ahci_port->rx_fis = mem + AHCI_CMD_LIST_SZ;
+	ahci_port->rx_fis_dma = mem_dma + AHCI_CMD_LIST_SZ;
 
 	/*
 	 * Third item: data area for storing a single command
 	 * and its scatter-gather table
 	 */
-	ahci_port->cmd_tbl = mem + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
-	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_SLOT_SZ + AHCI_RX_FIS_SZ;
+	ahci_port->cmd_tbl = mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
+	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
 
 	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pa)\n",
 			ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

