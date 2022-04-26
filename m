Delivery-date: Tue, 26 Apr 2022 14:37:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njKRE-00FtVB-10
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 14:37:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njKRB-0004n9-Go
	for lore@pengutronix.de; Tue, 26 Apr 2022 14:37:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kRgaq1ulHP7ysFjLmEJARRHuhyhjYJ/DkNpIPQPjSeY=; b=lP04+rNCOq3rhf
	hUrLDoeKI/tz+7pwRgm0XoXcZMpJOjocQcDbBQKXbN6sFrbvzCnwnln3IoiOLe3PsZR/JixAQ64MQ
	lzJBm7/cLax0FY0TuVefd/8Ouy+uso+I20T4fhjbrFkoqtrgL/b9+CtIZ02uKpBj3aAhjinDsSfci
	jwS6E5DNrRV+c+T8mPMTPtiXGkXMZ7Q7J+p3JiFl54gmCKOYbevAe58To8/B4r6jcSzJNaUouS45M
	fk2snK5O3uT5vFBCw7oIXZtn5s5xdnabGpQhXHRaezVjKES6csfb9jyrf6SC8qbDUnKGBG4d+9T94
	7/esmqW1MufBCi8xMcnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKPV-00EHib-FE; Tue, 26 Apr 2022 12:35:17 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKPP-00EHg3-RD
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 12:35:13 +0000
Received: by mail-lj1-x232.google.com with SMTP id s27so6044142ljd.2
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2022 05:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FpDvR9eiX+rUZYuAaF2i8e2mdzmitVJHM2OpLTtLexo=;
 b=InT4SMP+3CickfQTSOPXwcNUXFjfvCUeUHw2M6l8MiO60TD6zZznRgVcqhKLtFio62
 fZxNs3iVCJi3oyqmRtNi2aHwOPaW7WYzvIKlhXv1o/U1eXsV5JUEkGe7+75ETbzBVF+a
 qbsYFZTQ3l+cUEmrUgssExXFYdvskzjEqEbcGhvnLl3zWkCdSrMpBo5X2XSadkcUGXAE
 A+c3vsbRG0xr3ycoWgKYq7MO2Pf+pPPE1R/LyL0OIDoBKwBX6M/LwUKk0xc5H0Q0i600
 ZpujN+CIn6J+99TiHrYj56briZ00UIgrWiivvnTeMV5qMS0FhlGJRW+7EJq8a/1t/Dak
 MQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FpDvR9eiX+rUZYuAaF2i8e2mdzmitVJHM2OpLTtLexo=;
 b=gPPA/Srsow4O0en/MT6eh2sHqK472ybUouo6uob3bXu+AbTH7P3ok55NFYRd/XO4J1
 iyxQe2PGqFFAbJxbZHeEUZebrq5mMVJ7/dCk+mvTIVEGMSv+xF7ov3vV7kWJT7sLoLM8
 b0v0JEGYpX/tczie84IBOADP4/pZAlT5sd/uWsUo6vCisXwm2KMMyLYSmPebA7HtVsdr
 zFc3+wbRqgJduOYUYsXhImHfcfCfv1UioAgqPvoDZ/jtCaHMnw6B6hx/LeygN3PmcgMl
 sIoszlUeHit9CsTeYOeY4M/qpR1+Cf9nA5rnCvqmNyu+11qHJtKPuv8ZVV5v7uDhe6Iq
 jR/Q==
X-Gm-Message-State: AOAM533Q8o2ACApvdJF9RdzTwpRFy6eAnzx/bexj3QfFNM2OyqZkXNmq
 AQ8i+2aMLIPK97TaOmAOB9wZO00MPJGlnFsS
X-Google-Smtp-Source: ABdhPJyQ1DHm9HOI7RfC24JYyOK4d0uKk5eoqv+UzZSaen4KbbKHqw2iDtXdlI6aypwLbz/8OSXK4A==
X-Received: by 2002:a2e:b8ca:0:b0:24f:2dc:d56d with SMTP id
 s10-20020a2eb8ca000000b0024f02dcd56dmr11171128ljp.82.1650976507977; 
 Tue, 26 Apr 2022 05:35:07 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 z4-20020a19e204000000b00472125590efsm307249lfg.149.2022.04.26.05.35.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 05:35:07 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 26 Apr 2022 15:34:34 +0300
Message-Id: <20220426123434.18865-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_053511_937089_E446EE10 
X-CRM114-Status: GOOD (  10.84  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ata: disk_ata_drive: clean up code in ata_dump_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add missing macros and fix misspellings.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/disk_ata_drive.c | 23 +++++++++++++----------
 include/ata_drive.h          |  5 +++++
 2 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index f36e06328c..7df0879b19 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -80,9 +80,9 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
 	ata_id_c_string(id, product, ATA_ID_PROD, sizeof(product));
 	printf("Product model number: %s\n\r", product);
 
-	/* Total sectors of device  */
+	/* Total sectors of device */
 	n_sectors = ata_id_n_sectors(id);
-	printf("Capablity: %lld sectors\n\r", n_sectors);
+	printf("Capacity: %lld sectors\n\r", n_sectors);
 
 	printf ("id[49]: capabilities = 0x%04x\n"
 		"id[53]: field valid = 0x%04x\n"
@@ -95,12 +95,14 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
 		id[ATA_ID_PIO_MODES],
 		id[ATA_ID_QUEUE_DEPTH]);
 
-	printf ("id[76]: sata capablity = 0x%04x\n"
+	printf ("id[76]: sata capabilities 1 = 0x%04x\n"
+		"id[77]: sata capabilities 2 = 0x%04x\n"
 		"id[78]: sata features supported = 0x%04x\n"
-		"id[79]: sata features enable = 0x%04x\n",
-		id[76], /* FIXME */
-		id[78], /* FIXME */
-		id[79]); /* FIXME */
+		"id[79]: sata features enabled = 0x%04x\n",
+		id[ATA_ID_SATA_CAPAB_1],
+		id[ATA_ID_SATA_CAPAB_2],
+		id[ATA_ID_SATA_FEAT_SUPP],
+		id[ATA_ID_SATA_FEAT_ENABLE]);
 
 	printf ("id[80]: major version = 0x%04x\n"
 		"id[81]: minor version = 0x%04x\n"
@@ -108,12 +110,13 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
 		"id[83]: command set supported 2 = 0x%04x\n"
 		"id[84]: command set extension = 0x%04x\n",
 		id[ATA_ID_MAJOR_VER],
-		id[81], /* FIXME */
+		id[ATA_ID_MINOR_VER],
 		id[ATA_ID_COMMAND_SET_1],
 		id[ATA_ID_COMMAND_SET_2],
 		id[ATA_ID_CFSSE]);
-	printf ("id[85]: command set enable 1 = 0x%04x\n"
-		"id[86]: command set enable 2 = 0x%04x\n"
+
+	printf ("id[85]: command set enabled 1 = 0x%04x\n"
+		"id[86]: command set enabled 2 = 0x%04x\n"
 		"id[87]: command set default = 0x%04x\n"
 		"id[88]: udma = 0x%04x\n"
 		"id[93]: hardware reset result = 0x%04x\n",
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 6b8915c9cb..e11172ba39 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -67,7 +67,12 @@ enum {
 	ATA_ID_MWDMA_MODES	= 63,
 	ATA_ID_PIO_MODES	= 64,
 	ATA_ID_QUEUE_DEPTH	= 75,
+	ATA_ID_SATA_CAPAB_1	= 76,
+	ATA_ID_SATA_CAPAB_2	= 77,
+	ATA_ID_SATA_FEAT_SUPP	= 78,
+	ATA_ID_SATA_FEAT_ENABLE	= 79,
 	ATA_ID_MAJOR_VER	= 80,
+	ATA_ID_MINOR_VER	= 81,
 	ATA_ID_COMMAND_SET_1	= 82,
 	ATA_ID_COMMAND_SET_2	= 83,
 	ATA_ID_CFSSE		= 84,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

