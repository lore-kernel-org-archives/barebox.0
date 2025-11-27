Delivery-date: Thu, 27 Nov 2025 04:41:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOSsf-005IIb-27
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 04:41:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOSsf-00055F-3Q
	for lore@pengutronix.de; Thu, 27 Nov 2025 04:41:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IaLhHYw4UNsIWxf4XqsP5xtIXsoYb3nYl9D94vUOO70=; b=Y2FDGO3yflEEIdbzFjV/wiIJEL
	dprRm0MXBD7al7iMyPGwjncxqwF90FSJ1KYSbuEvnI900nDe9TzIgckGG/9Mez4K1Wk40LrW7Js1b
	55KctHmqQ6PrS9E9rOaQRTs+zfJhGNb0WpWYOu6Ar41DoRtVdtm3SQ5+5+2RQ0t4oNgoayj+bveBC
	Da+JBCf+saKCMlPNN1cIonE0F/axPISnDd+jZbzFhL4s1tJreFhkWojUfWbRqFkmnualOQqoxcbXG
	IQn1hfEbMOJdK6xefK/hm2wpFLemjmzTZa0Aykq0chNrdX1R3u2jXbWq1fbDp87Ecx4ofRF36EICq
	cLIHRuiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOSry-0000000FwAy-17ir;
	Thu, 27 Nov 2025 03:40:34 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOSru-0000000FwAe-1nVd
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 03:40:31 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-8823e39c581so6446596d6.3
        for <barebox@lists.infradead.org>; Wed, 26 Nov 2025 19:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764214829; x=1764819629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IaLhHYw4UNsIWxf4XqsP5xtIXsoYb3nYl9D94vUOO70=;
        b=eK2jcr8KuUV80KwULnozb/d7dqSnR2fcsSnbvV9i8BG7bURWsxKBG0hMvotO2Icg8Q
         XrvV/8QUfehuJQhRFlZ5MqPWSChakqyhQTMP5UkHh7SjCIzuaZ/kFsbB+i+ARPoNLIGF
         59ET8vfEPv1VnGc+i2vBeLQSThryCKpHqZY6omsOBk+Klhdwqfej8/COsY2VzV4+PNHr
         fKKZcBGc2cdYWi2PAbQfhBNZCTN4ktUYfxSu1DnHDeN3q2cL3FqQZQTVE2Wc6+NG18tR
         XD4bMlsDW/b+/w2NMZqn/ZO6G3LLhm0ZpELF72zvHqOcw8xDNHnCO/dM4eCSBXJKJ+Tj
         dVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764214829; x=1764819629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IaLhHYw4UNsIWxf4XqsP5xtIXsoYb3nYl9D94vUOO70=;
        b=U+B3oshcxdlfC+Fb8sxbsKDu0lwVxlF0r1oJ+Fprm30ElAErUBpreQRSa2bZsQt/Lg
         jYsyubdofv8Cnp7ig0sou1X4foWKEhn8R9TqS7EwdGwHig/ebxgdIlSLJDwGD9zWtFq4
         XRQPX5uZG5qVeSlfb5pWdUzZ9xxa2TdgRQ2ST8vxOvJnxOyyMeESfV8ZYA9w/88KfabZ
         v05SIph6lt17vlzXIvgKVdNSfsIky6w7Ptgz8buWIxt/qvnZRZgkaCTBjdNf/G/HAA4M
         idfp1JCt2rxbgLgV2XXaSG4uImPYDImbtwsrRWP4ac2MQbBQA4O1345LHfwmwkPxFWG5
         nX4Q==
X-Gm-Message-State: AOJu0Yz0WW5WmUwXYvaMzV33PKhouotc6aQ1rWbTwU+d+84LyGp5dg5f
	0F4mqnI+15l21stHwRHRiT6bMS/MDIMLQmMThkjjJoUnywqMtJH2uvPg
X-Gm-Gg: ASbGncs5HhonAMzX8gLKSxez3rUerHGIsc1KmsbMsyyDXNZkW388oLm1tcYV0q8ze/L
	Q8X7aYb0ELr7Y8ADEwZdlM+mvfqIlxWx1ux9lA5/R4XfAFOxGLZHrGkEV9obcEsze+A8VerhR6I
	YJyu9mN2ZzTwuW2S5KO+LbmYAn5lZzsm6OH6E1+d9JV7W3+1+S0+21/BNgZrkqTjdcclWOdjlDV
	Fx4FzltWLT1dZ8uIPlioTGmptV/OVafdudGxI/3S03YEd6szM1CPa/a/doGI/ROi8KnaAeynzLl
	ZBPRqb15E9LxJGkRv7pVwF00ODffJt0IGZzNJg7QXCSTS0pTZdKrfkfCIRFCaDYaTnQ6PHC5QW1
	3hJMBRRcK0MhTD5P2ejXko4aTXEswa9LAoSHv7lYqNLepmfCXIrQ8GGpaPXD4BAeUJinM4pyJDV
	J1BteJ7+wI9A==
X-Google-Smtp-Source: AGHT+IFP5GP8wYP4b3okqccrkVXZNwd74PIFzc7pH/T+BOClU/wk3HKtH0fg/K1HDTJKBUIqCMJTfg==
X-Received: by 2002:a05:6214:2a82:b0:851:746c:e6c9 with SMTP id 6a1803df08f44-8847c527b6emr351124106d6.31.1764214828788;
        Wed, 26 Nov 2025 19:40:28 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::d61])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-886524fd635sm2261196d6.23.2025.11.26.19.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 19:40:28 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 26 Nov 2025 22:40:24 -0500
Message-ID: <20251127034024.3381739-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_194030_507537_D6CE2835 
X-CRM114-Status: GOOD (  10.40  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pci: pci-tegra: fix null pointer assignation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

the dev might be null, to be sure we move the dev assignation before
the pci parent assignation.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/pci/pci-tegra.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index b7f8297d153e..dabe63500a4a 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1240,13 +1240,13 @@ static int tegra_pcie_probe(struct device *dev)
 	if (!pcie)
 		return -ENOMEM;
 
+	pcie->dev = dev;
 	pcie->pci.parent = pcie->dev;
 	pci_controller_init(&pcie->pci);
 
 	INIT_LIST_HEAD(&pcie->buses);
 	INIT_LIST_HEAD(&pcie->ports);
 	pcie->soc_data = device_get_match_data(dev);
-	pcie->dev = dev;
 
 	err = tegra_pcie_parse_dt(pcie);
 	if (err < 0) {


