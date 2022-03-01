Delivery-date: Tue, 01 Mar 2022 10:18:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyek-00EDxh-CG
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 10:18:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyej-0002xA-4v
	for lore@pengutronix.de; Tue, 01 Mar 2022 10:18:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fS+E0Xg65lrvfgYi95XFZTTL8Ru7gls2iLwW/0Nn86g=; b=c+ugBBPEvfC6yy
	uYcgXW54TPyTi/TKfij0xj+cIk+3gonXkdb/o9cMFmoDWPxLEh8czyfOh5Bvm1IzTLGU12NVIPR7f
	UgrpXyn9u05yM9G3Zxpwa9ML8GxzNQu9f43ZHA8lnFlR71BFnuLidZsgUSF7FnfqB9RLU6blO0fN+
	uToMTXHux8zx/P33tt2ADlzJw2QpCqdG/ezvZfAr4qft4TXefaapbIFqPUnTHdSL5gsb9IaNuyKd4
	HakWHbtDe8ouOU0OZio4G4Cij3E1i4/kEoA3OwFLY5jdUXGzaD40sm4utcpla+SZAYwyrV7v5tF3u
	0HeOafrpoHeheboerPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOydY-00Fo1Z-NB; Tue, 01 Mar 2022 09:17:40 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOydT-00Fnzw-2F
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:17:36 +0000
Received: by mail-lj1-x230.google.com with SMTP id bn33so21004461ljb.6
 for <barebox@lists.infradead.org>; Tue, 01 Mar 2022 01:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JVccisUTub4bnZwA1Mg1+QkQIabBhpbif5IZ4V/1r5E=;
 b=gsqqg2jEuPvhxLVdcww5ZEUks3Tse33pe8oU3OOG2Bjfhg/2Z46G2kOHiCECNaOaTx
 7hiJCww1gX6kvZpkwV03fEs7f/sxWH2W6b6k3PTJGodcHco9FD5A0riLpUooKX63W3aG
 TXJ0L+XiwOM4e13ok0849eKFhS78w8CQUcYXA9BUCjVHnlUPIG3dmW/o+vHu8flGxFMw
 Te2yBNEWNYM6ns25I8S+sAAjomC+wLzomPHlbyCajnvsGtO3JCogKx2Dw9I/ML2Ikq7S
 GXH/Q4KZXRN/UY1rsPPL7Aq9d3rU1NV567Q+qujcdfBl1tNYNeV/Pm85BfV6Z+3U9bhL
 MRrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JVccisUTub4bnZwA1Mg1+QkQIabBhpbif5IZ4V/1r5E=;
 b=R1L6D/Xocx7aVKMnVQ7RX2taHm2CW4JRgWKBmJayVMgEx0UFYdrJB8Dyvb7jxQ4YlY
 3Qko8lHj+qAOxY7AK0+FfT8FNhk/nP2n65sYiaJgdkn171ndRQELVrlXmkcjB9i79a+C
 RytFCH6UxnUSRGCGa4uW7eLuGLIGPvpTJk9YDe6mZlcCGd2ZIFW04xmnexOMEyc5j/dC
 oOYgxgBB6pOsRl25w1Ss/ksHDc1hIphtFfpOZysWU16fjYMLTVZPUzTBrQ/OryOR2KnY
 UedEPQor3uYYTkRX2MQNmTeOfKa2A9W5BDTXsi96LNYArJIKS9gmh9ZewwH4qP0Jwqk0
 e1ew==
X-Gm-Message-State: AOAM532oR0rQJMHux0npWogaT19JTdcC6pFPoCmRZwB58kgw6dJsGuQD
 VGi/8bc5RJ6rynP8Om/rcs5Iw1TN0Wv/001d
X-Google-Smtp-Source: ABdhPJx0nXt4jF3KjPugN72JiM2EN6oRNbxRNnIQpKzDowRSdxB1jEDp0jQbmEHs6fhU5LM/XPdP+g==
X-Received: by 2002:a2e:2e0e:0:b0:246:1570:f001 with SMTP id
 u14-20020a2e2e0e000000b002461570f001mr16708405lju.217.1646126251920; 
 Tue, 01 Mar 2022 01:17:31 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t18-20020a2e9d12000000b00244b7b5d9b6sm1868865lji.8.2022.03.01.01.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 01:17:31 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue,  1 Mar 2022 12:14:23 +0300
Message-Id: <20220301091423.19871-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220301091423.19871-1-denorl2009@gmail.com>
References: <20220301091423.19871-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_011735_132317_A223CD5A 
X-CRM114-Status: GOOD (  12.32  )
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
Subject: [PATCH 2/2] usb: host: ehci: reorder code in ehci_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, after successful memory region requests the driver
initialization could still fail, leaving those regions allocated. By
reordering the code those requests can be placed later, after the
possibly failing calls.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index facfb3a95b..068504557b 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1421,20 +1421,6 @@ static int ehci_probe(struct device_d *dev)
 		 */
 		data.flags = EHCI_HAS_TT;
 
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	data.hccr = IOMEM(iores->start);
-
-	if (dev->num_resources > 1) {
-		iores = dev_request_mem_resource(dev, 1);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		data.hcor = IOMEM(iores->start);
-	}
-	else
-		data.hcor = NULL;
-
 	usb2_generic_phy = phy_optional_get(dev, "usb");
 	if (IS_ERR(usb2_generic_phy))
 		return PTR_ERR(usb2_generic_phy);
@@ -1456,6 +1442,20 @@ static int ehci_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	data.hccr = IOMEM(iores->start);
+
+	if (dev->num_resources > 1) {
+		iores = dev_request_mem_resource(dev, 1);
+		if (IS_ERR(iores))
+			return PTR_ERR(iores);
+		data.hcor = IOMEM(iores->start);
+	}
+	else
+		data.hcor = NULL;
+
 	ehci = ehci_register(dev, &data);
 	if (IS_ERR(ehci))
 		return PTR_ERR(ehci);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

