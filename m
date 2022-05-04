Delivery-date: Wed, 04 May 2022 11:42:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWF-001WBN-SU
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWD-0001tJ-0i
	for lore@pengutronix.de; Wed, 04 May 2022 11:42:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRZV5pXaApzeNbPfNlbLc2Nm2nLiHVg9zr7co85tMpo=; b=jsHE7ErHjxciE7
	7G6a3UHRrhqpmWrLn/uazjIlPqF6xvcOFadpkACFg+OK8kpFxkhH0VmUvhntn6CVkLaVJkWoPs1yu
	Uhm3v8Ii/3RM40PyvMyuT6SPWAcRDpBYeILNzqdqiGS05yXZupD4WIQl8Qww0zCc0Ew0EOnbISK74
	jOPS6yGpxk1RmpktqKN5fWuE4OafT/fXSMfmEa9+4QXriw4edrGkIkkDWLCoRt2c1Su8yKdw9zxyr
	btWZigQyG8Y4Nw7ul3FTZI9+DSo3z/3o/0ujiP9tji68wOFWDmaLvZtbG05lQ/XPz3SX+QAlIktD/
	JzWsRNJKDhxtRBuW1W5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBUf-009yFG-RB; Wed, 04 May 2022 09:40:27 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHm-009qVH-Rh
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:08 +0000
Received: by mail-lj1-x231.google.com with SMTP id q14so903764ljc.12
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bS3zh/YRatDts6HZZQ/BqQ6r5k3XtspdhmiUR27kybw=;
 b=ZsgMvMGhQsbCOOaiK7mfvGl/YBKNHlQlHVKP0JrVuVjYEGOe2HqR3WHdgJ/NPDzRQ9
 zKwm1xTiAU7iHIDu3j96o2gq8woWA26wNJTTf1je9SeqSTMOjo7RyJAt5fLzw1zUakyv
 GipHbhIzF64J/hwZwYCHdkiDIKsR8maRlopkJOk88G0d1HSZmQ+OOxSkPaK/pbqAHpKy
 27qQCuknfN2O7tvCK6ccFqZ76+XZ2a0qbg4oNQEvTEpjGEjkpclDSMNu6XI5w+KhVSs4
 inSyZ70Blv/oNild99VLlSuJ/sPEPbNruLjnBg7Jn6dWXpbpcN/ymUI/YPsXiydlK3sn
 lIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bS3zh/YRatDts6HZZQ/BqQ6r5k3XtspdhmiUR27kybw=;
 b=QLGcZfso83imMmp2GfpUZ0Tf3jTqOLjvwS7tEdDtuhZSFTW1iupoGbZMa7fRTTRc0x
 Jc8TLtaMWVg80MQnXDBvD49Heokgxqms+zFTKwBZkH3sUfOOguhnX7gMFP9f3NrVKhGs
 AxAwFvC8sjSLg+MNIL/MDG/iy4XmxD/lkmNggI363DMitWpNWu5O6sOsjdxrmk+vETco
 HbRTKuyl7yMa2CSkWRC/WSeMX7t3uVpYJQZNaYGQsqUkrtSo4DDsmk0Y3+JejTOWEMMa
 jGXT/t33zBV+P9ttIfgI7zMWBtKEMe5tJdmYUZ3B7K5F+9nHVlT9g/8Qu9+nC4AG7UDX
 u2Lg==
X-Gm-Message-State: AOAM5326VWjTw7PBt3c5ZnISSY/292KRIkVu6iD7XaP1gtAuvMjNvvOo
 lrqENi33NIJYp/motDhEsbLAIslVHSWFmSbf
X-Google-Smtp-Source: ABdhPJy9/hA4nWKoLybIO82Ffa/aOrBXXq61K/0Du1Hs84CYf1vAoAZR4XH0kmMuti2wZ3Rdwu/AWg==
X-Received: by 2002:a05:651c:4cf:b0:250:655a:1c8c with SMTP id
 e15-20020a05651c04cf00b00250655a1c8cmr4931920lji.267.1651656422514; 
 Wed, 04 May 2022 02:27:02 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:02 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:42 +0300
Message-Id: <20220504092553.27961-5-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022706_928511_7506528D 
X-CRM114-Status: GOOD (  14.08  )
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
Subject: [PATCH 05/16] ata: ahci: do not ignore dma handles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

They represent addresses from the device side and should be used instead
of cpu side ones when populating device registers than hold addresses.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 21 ++++++++++++---------
 drivers/ata/ahci.h |  3 +++
 2 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 026f83046c..095eb93a08 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -117,7 +117,7 @@ static void ahci_fill_cmd_slot(struct ahci_port *ahci_port, u32 opts)
 	ahci_port->cmd_slot->opts = cpu_to_le32(opts);
 	ahci_port->cmd_slot->status = 0;
 	ahci_port->cmd_slot->tbl_addr =
-		cpu_to_le32((unsigned long)ahci_port->cmd_tbl & 0xffffffff);
+		cpu_to_le32(ahci_port->cmd_tbl_dma & 0xffffffff);
 	ahci_port->cmd_slot->tbl_addr_hi = 0;
 }
 
@@ -292,7 +292,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * 32 bytes each in size
 	 */
 	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_SLOT_SZ * 32,
-						 DMA_ADDRESS_BROKEN);
+						  &ahci_port->cmd_slot_dma);
 	if (!ahci_port->cmd_slot) {
 		ret = -ENOMEM;
 		goto err_alloc;
@@ -304,7 +304,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * Second item: Received-FIS area
 	 */
 	ahci_port->rx_fis = (unsigned long)dma_alloc_coherent(AHCI_RX_FIS_SZ,
-							      DMA_ADDRESS_BROKEN);
+						&ahci_port->rx_fis_dma);
 	if (!ahci_port->rx_fis) {
 		ret = -ENOMEM;
 		goto err_alloc1;
@@ -315,7 +315,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * and its scatter-gather table
 	 */
 	ahci_port->cmd_tbl = dma_alloc_coherent(AHCI_CMD_TBL_SZ,
-						DMA_ADDRESS_BROKEN);
+						 &ahci_port->cmd_tbl_dma);
 	if (!ahci_port->cmd_tbl) {
 		ret = -ENOMEM;
 		goto err_alloc2;
@@ -325,8 +325,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
 
-	ahci_port_write_f(ahci_port, PORT_LST_ADDR, (u32)ahci_port->cmd_slot);
-	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, ahci_port->rx_fis);
+	ahci_port_write_f(ahci_port, PORT_LST_ADDR, ahci_port->cmd_slot_dma);
+	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, ahci_port->rx_fis_dma);
 
 	/*
 	 * Add the spinup command to whatever mode bits may
@@ -410,11 +410,14 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ret = -ENODEV;
 
 err_init:
-	dma_free_coherent(ahci_port->cmd_tbl, 0, AHCI_CMD_TBL_SZ);
+	dma_free_coherent(ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma,
+			  AHCI_CMD_TBL_SZ);
 err_alloc2:
-	dma_free_coherent((void *)ahci_port->rx_fis, 0, AHCI_RX_FIS_SZ);
+	dma_free_coherent((void *)ahci_port->rx_fis, ahci_port->rx_fis_dma,
+			  AHCI_RX_FIS_SZ);
 err_alloc1:
-	dma_free_coherent(ahci_port->cmd_slot, 0, AHCI_CMD_SLOT_SZ * 32);
+	dma_free_coherent(ahci_port->cmd_slot, ahci_port->cmd_slot_dma,
+			  AHCI_CMD_SLOT_SZ * 32);
 err_alloc:
 	return ret;
 }
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 5a187fd2e1..3ca64c3d70 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -151,9 +151,12 @@ struct ahci_port {
 	unsigned		flags;
 	void __iomem		*port_mmio;
 	struct ahci_cmd_hdr	*cmd_slot;
+	dma_addr_t		cmd_slot_dma;
 	struct ahci_sg		*cmd_tbl_sg;
 	void			*cmd_tbl;
+	dma_addr_t		cmd_tbl_dma;
 	u32			rx_fis;
+	dma_addr_t		rx_fis_dma;
 };
 
 struct ahci_device {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

