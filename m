Delivery-date: Mon, 14 Jun 2021 16:30:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsnbq-0006H8-R9
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 16:30:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsnbp-0003AK-Sj
	for lore@pengutronix.de; Mon, 14 Jun 2021 16:30:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iuhjvagEZ4QD+ziha01UMaTYozmJ8RNuyfirsdMq9vo=; b=BuKiU+0cnBYGZa
	zfOyni6U5ujLL0hNRNT+0ctkAsFuV6/F78It9VOj1yVrRHIQY5yPISutypnO2tN29WFviDz/tJxzO
	JjIpRnAu/cZuqOQInM3zDG5cYFoJLdgY6j2ip2GGthF57tBG5ASnx9bAUK3NiurjCXRRxUz7qMKoy
	xm/eSOLAOqCkQSEyuSBDGsNl0GEQmPkLODeGvFP5XKfr91yK7r/IT7m/l0yF52NnczwT4KKXJtsSZ
	52snAkK37FISjsk/sYv8Mcsj0LeH2Cso42BBMbftKsUowz5RSsWgWkRocvuAJtXnfQQpWm4whVJ6H
	DJyyrZGdEE5mthn08ETA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsnaB-00EVqx-4G; Mon, 14 Jun 2021 14:28:55 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsna4-00EVpR-O5
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 14:28:50 +0000
Received: by mail-lj1-x232.google.com with SMTP id c11so20478216ljd.6
 for <barebox@lists.infradead.org>; Mon, 14 Jun 2021 07:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zEy712kesfBD6JaJ/KqwX6sQtlUMiQBbhJWuW9IEOsI=;
 b=CiBA4Q+Z2outE221rsMhriNIbylu7dCBkLI2Ecerdr9eXYGigJaxwpiYiUdyQ93JQ4
 sW7kX5L6dUu5Rmnmlq82M1a8mEht/LHxuet89bmXIDPewYP1FZ30e5mE/K5at2mGGUcv
 HSECjTXFu5HoFzH+iuxr4MbWy2Y+zPI9WSEsIuWwn45r4FAWxAH3LpPYelWCDiuS40iX
 aGwr80QD0xp2ZOXmMI0D76a9IrR9IdOAj9Ul9N34F3PmLH7Ug3DrPx4BsA6m6jr/S8iD
 F/At08h1s2G220/2xti7QImmMA7L6AfRLDl81nZLtaHj4tVE9984fgOegKOQxqYxw64g
 Wpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zEy712kesfBD6JaJ/KqwX6sQtlUMiQBbhJWuW9IEOsI=;
 b=lMBdtht35FVrj+9UNr1EkukH+9prp4UFUrtmD5NwgHpYV0pQ7FX2tLC8IhjqL/fo3t
 1QgE1DUoVWyZonU25x8ncP0lDYAupcUrEPhoPIkx/PSBh7UEJY8zBcGd0KUD3SUM2bE1
 KAokvHrB2zM0R8OJsuRxS6rVjOuhqAYf1TdISjPAbYTDTTjcpg4CKHZ6kC39Q0xQbvTo
 pMI0hqt1WUwFG0+Tr7VYpitP+JGS8rp+gZx7OM1MwnEo0Fku9OQ59nTDE6NPVjDNvgiM
 LrHsDapYO2FgnSxCsONnuMW1NHDwy7lBkeNmcgqj+t65B6a8lFQerAdAIomjsuqF8QrQ
 uL8Q==
X-Gm-Message-State: AOAM533w4xNANO2veO8++2BvARSNAKg4HKuUorsjsPGTikL9TJF5e1vC
 r2jXrISQmBk48YV3QSiJzzRRg9hGacU=
X-Google-Smtp-Source: ABdhPJxLAta8awy5QwfkYsZO5BjtYTWrKa3kU17eitd0X8vI5ftSTBLxGV7PRjFkAVqS66yZXl10Pg==
X-Received: by 2002:a2e:8590:: with SMTP id b16mr14007048lji.342.1623680924999; 
 Mon, 14 Jun 2021 07:28:44 -0700 (PDT)
Received: from localhost.localdomain ([176.59.54.8])
 by smtp.gmail.com with ESMTPSA id p5sm1930120ljc.117.2021.06.14.07.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 07:28:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 14 Jun 2021 17:28:33 +0300
Message-Id: <20210614142833.86544-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_072848_808190_05D3C451 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] drivers: drop unused usb_gadget_{map,unmap}_request()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no code that is dependent on
usb_gadget_{map,unmap}_request().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/gadget/udc-core.c | 55 -----------------------------------
 include/usb/gadget.h          | 10 -------
 2 files changed, 65 deletions(-)

diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index 2516676f86..bd3404f9cf 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -46,61 +46,6 @@ static LIST_HEAD(udc_list);
 
 /* ------------------------------------------------------------------------- */
 
-#ifdef	CONFIG_KERNEL_HAS_DMA
-
-int usb_gadget_map_request(struct usb_gadget *gadget,
-		struct usb_request *req, int is_in)
-{
-	if (req->length == 0)
-		return 0;
-
-	if (req->num_sgs) {
-		int     mapped;
-
-		mapped = dma_map_sg(&gadget->dev, req->sg, req->num_sgs,
-				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
-		if (mapped == 0) {
-			dev_err(&gadget->dev, "failed to map SGs\n");
-			return -EFAULT;
-		}
-
-		req->num_mapped_sgs = mapped;
-	} else {
-		req->dma = dma_map_single(&gadget->dev, req->buf, req->length,
-				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
-
-		if (dma_mapping_error(&gadget->dev, req->dma)) {
-			dev_err(&gadget->dev, "failed to map buffer\n");
-			return -EFAULT;
-		}
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(usb_gadget_map_request);
-
-void usb_gadget_unmap_request(struct usb_gadget *gadget,
-		struct usb_request *req, int is_in)
-{
-	if (req->length == 0)
-		return;
-
-	if (req->num_mapped_sgs) {
-		dma_unmap_sg(&gadget->dev, req->sg, req->num_mapped_sgs,
-				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
-
-		req->num_mapped_sgs = 0;
-	} else {
-		dma_unmap_single(&gadget->dev, req->dma, req->length,
-				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
-	}
-}
-EXPORT_SYMBOL_GPL(usb_gadget_unmap_request);
-
-#endif	/* CONFIG_HAS_DMA */
-
-/* ------------------------------------------------------------------------- */
-
 void usb_gadget_set_state(struct usb_gadget *gadget,
 		enum usb_device_state state)
 {
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 3e1d7153dc..431f316c46 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -1002,16 +1002,6 @@ void usb_free_all_descriptors(struct usb_function *f);
 
 /*-------------------------------------------------------------------------*/
 
-/* utility to simplify map/unmap of usb_requests to/from DMA */
-
-extern int usb_gadget_map_request(struct usb_gadget *gadget,
-		struct usb_request *req, int is_in);
-
-extern void usb_gadget_unmap_request(struct usb_gadget *gadget,
-		struct usb_request *req, int is_in);
-
-/*-------------------------------------------------------------------------*/
-
 /* utility to set gadget state properly */
 
 extern void usb_gadget_set_state(struct usb_gadget *gadget,
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

