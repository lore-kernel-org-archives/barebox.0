Delivery-date: Wed, 04 May 2022 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVw-001WAj-03
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVu-0001mI-Iz
	for lore@pengutronix.de; Wed, 04 May 2022 11:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UQvIoHrhblHS+Bb79IbRIw+lg+1KHTDFmddbYBRL9g=; b=cX2dJJgD+JlewQ
	FEHvdSP8PVWqM+NoBuJ0NsBsRp83ulnSeLEm4S7JAZbucib54sedJZ9PSPHtJBAXI+eJ1JxHAcK+l
	fHdq8UGJSBR4+1K3x1uf8LZxCjrAFfNqXU82uhOtz9dqiBqWB+ruLAx0an4FZ++bqE84pwMbFME4L
	WyNOPJ1ZTtjybEnr12mwEG9dqqkH0JZetihgtqMUivruX8KPqBp3pKtOdf3f8RdcTb9V+atU9weCN
	tbWOVzatLHg5Hs/6T+yBk1SSCDjhsfBMSwwWART0N714vDKvazlUFK2IV04y2ex28rOscacLNLttG
	iysT0pzbSShw8zka2hdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBUS-009y6C-WC; Wed, 04 May 2022 09:40:13 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHk-009qTa-GF
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:06 +0000
Received: by mail-lj1-x22d.google.com with SMTP id q14so903654ljc.12
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=traZ9qAELJtsDKoGNqCnYxWsJicbqFqFFBBWiyibTio=;
 b=THS42W7X5PjoEd2Vh/wgevRX7ZArWCbjy1Pyo8TUcFa4MBR8nxwAjPedxprONc76Di
 BS4UEHS7ZQXUGwKozkSi3gIZx7dVJbFs0z/j6u+fRNrowFteS5WidOBH0rM9Hhq/YYmB
 pmhR0kkNS5V4wZtKSzxGTog4xHphlEKA3RkBXDsWRRXPUPPmJIpcGho+q2BuKnaT7yrR
 +Tdw3tDa2Ol0Duk8SnhNgAxFgvu8kIHnjSQxlIzphkg1zvrRrQNV5Wj8AHq5KKelgI+X
 5TGXWVH94Ki3Z7MVXoWgeZzApWzYKcFyb82lMWXWA6KXEVMGuweOuBj5yP0195HfnmsT
 HeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=traZ9qAELJtsDKoGNqCnYxWsJicbqFqFFBBWiyibTio=;
 b=ROulQ89epdeSDjzG/K/UUpX7BWoiIsZzXUWlA03oIHKmUGdi/mwqJwjhX8AVmddjpc
 g1eI1DXJsRx9Z97/4VaWNh3x4Xr4tlo1O5dMti2VyNt7V5wrFdMgPTNI1HM1DpwnOxCH
 y9/tFmdnqXSjLMLK+VG6oOrtF33NSBCxjoM+y4/KD/ITXikItyIoZqr8o42WoB08eaJ7
 PK5BP+P/J1HQ/EKQWAhrdOREWKxQ1nmZStbK4/cWa+QZipG5+vs+MFwRbhJXZ1DxWN5x
 e+HHaqKXBdy04fnpr5kSHAqmTgQMxU4Uz7J63/zV/LI2LSivqS9F3vCxbwfwLaqHZXAh
 6xgg==
X-Gm-Message-State: AOAM531V8BU1DRxAaiL2vg0e3S6q2ETP75FaXwjabHlhwCSrqkv/7Riv
 r45ws+yuFjKC2xWHRlkk0Ekw4TWBrJcJkyM1
X-Google-Smtp-Source: ABdhPJwj85BRqrCQJyYCAxnxqojNfR2Hrjyh9TIJpudMOQJvIELQATfG9YNwUwD5e/DFZm95Qa8UcQ==
X-Received: by 2002:a2e:9019:0:b0:250:8205:dfb4 with SMTP id
 h25-20020a2e9019000000b002508205dfb4mr895058ljg.396.1651656420255; 
 Wed, 04 May 2022 02:27:00 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:26:59 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:41 +0300
Message-Id: <20220504092553.27961-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022704_589267_864209CA 
X-CRM114-Status: GOOD (  10.66  )
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
Subject: [PATCH 04/16] ata: ahci: simplify fis structure creation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 5aab81fcef..026f83046c 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -192,14 +192,12 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 static int ahci_read_id(struct ata_port *ata, void *buf)
 {
 	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
-	u8 fis[20];
-
-	memset(fis, 0, sizeof(fis));
 
-	/* Construct the FIS */
-	fis[0] = 0x27;			/* Host to device FIS. */
-	fis[1] = 1 << 7;		/* Command FIS. */
-	fis[2] = ATA_CMD_ID_ATA;	/* Command byte. */
+	u8 fis[20] = {
+		0x27,			/* Host to device FIS. */
+		1 << 7,			/* Command FIS. */
+		ATA_CMD_ID_ATA		/* Command byte. */
+	};
 
 	return ahci_io(ahci, fis, sizeof(fis), buf, NULL, SECTOR_SIZE);
 }
@@ -208,16 +206,13 @@ static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
 		sector_t block, blkcnt_t num_blocks)
 {
 	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
-	u8 fis[20];
+	u8 fis[20] = {
+		0x27,			/* Host to device FIS. */
+		1 << 7			/* Command FIS. */
+	};
 	int ret;
 	int lba48 = ata_id_has_lba48(ata->id);
 
-	memset(fis, 0, sizeof(fis));
-
-	/* Construct the FIS */
-	fis[0] = 0x27;			/* Host to device FIS. */
-	fis[1] = 1 << 7;		/* Command FIS. */
-
 	/* Command byte. */
 	if (lba48)
 		fis[2] = wbuf ? ATA_CMD_WRITE_EXT : ATA_CMD_READ_EXT;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

