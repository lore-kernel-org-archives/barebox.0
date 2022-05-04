Delivery-date: Wed, 04 May 2022 11:46:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBaQ-001WKd-P5
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:46:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBaO-0003AW-Bo
	for lore@pengutronix.de; Wed, 04 May 2022 11:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nuOZKE/F5pSMAk1pz6vA8+5mc1qr3mcBQ9ooRUIQzc=; b=jtmCJ1fSVagjYZ
	pBg8eH2udpQ/IyHO4LwOF2Sc8uN2VRi8ywP9dNc7VwzjYphLyoS//OobAJBF4hrwVchMSBKKV6gCm
	jaPC2rRUMvQxuH8YpJD7AFXH+roUM08qK4My7mnyJsyVcFvxQmgbL3+v6CyvnjXCO5Hf2rBAjonp2
	bUKyXrRGGPDgirkIuhMGYh4QrnfglWMxu7ODcRHtzAcGtYXGokpoTy24/PmIt4alN+HdBIOODgtKC
	GTKETBd6GZMaozR0kNX9d3NysQkj3ifI6aovD1Kdp+E2s4LfoyKVV1bT3E1gyqnJGFe5OPQJhVYoc
	30vbbwfTi+MqAgaJrTIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBYc-00A0Jn-UD; Wed, 04 May 2022 09:44:32 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBIN-009qqC-MM
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:45 +0000
Received: by mail-lj1-x22a.google.com with SMTP id v4so909295ljd.10
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g491OwEx+mxjyLq8qI+y3PYsqonySIvDI31Ogly+0rI=;
 b=V6CC7q3oXhN3yjfKrSph9hkNJD6FQcP2op4yhrNbAVPAvE8x98OKek4da1pSKkiAwd
 qSkgra5TL6Au4/Pp3CnuizwMhA/lWo5tu260lNbpWCXka2uFwYLlTGAIpFKbiaPDBdJB
 V2itHvpNjlVzrfEB544Ysh6p07aYwEBW278SiqY7EZh4WkJ8/slzcBqew5fgl5ORpLbi
 y2B/HXymCcpfQwlYv0xKpZEKLUKqypkQ5bkCa9KOSUD3tkn2Q9h62Yw71Dq31UCP4+pK
 UCczzxA90w3jInrz6x0+66gjrBHA5VOBCz33Y9uljNWONr8Q8XCqLTePAJQZtHQVt+2T
 dbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g491OwEx+mxjyLq8qI+y3PYsqonySIvDI31Ogly+0rI=;
 b=LdxsBZB3JknPNhWmdp55G0oCwCEXF6s9curODYBQEMDIx3mASRB6EZX/YoXghytW5O
 cydWYqpngjffU7uptVQ9Wr00dUjJePDZCaxM0RyPgVaTpqht3FclfcrGThJrPbALIq63
 JZ4LuahjM+Uo6hkPHWswGJraFXfmSG1Gzfr0kgjRZch7vqagV9gKrYfUGe6HcBU51bqy
 whOeW0HcwNK8bvUAuyelpOunAWVOI4L4hMQhjNr21+Ek9+U9OE4kCVr+EPC/62c6CKQN
 TUZsUKfObb3tAq7LE4mT+CZNEHnYs2QKC5d9WxRG21C5FYb2l2xgjnV+JbXQ92cOzuUr
 LscA==
X-Gm-Message-State: AOAM530Almrj4eHabSX1bta48t/DfO//BAlaztM58p2v0DT/9RPoA4yS
 JrCLmIvAVZmV4Xg5iQjoqmjX7oWX1hLiX63C
X-Google-Smtp-Source: ABdhPJzZalLOCl23+ibyy69knibqFD2Pdb2B0ZdvQplNJgdAXFLDPoKzr62pto4E7m0MWeo15QGZuQ==
X-Received: by 2002:a2e:9801:0:b0:24f:983:b17f with SMTP id
 a1-20020a2e9801000000b0024f0983b17fmr12176569ljj.88.1651656458591; 
 Wed, 04 May 2022 02:27:38 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:38 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:52 +0300
Message-Id: <20220504092553.27961-15-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022743_771113_FA888B85 
X-CRM114-Status: GOOD (  12.85  )
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
Subject: [PATCH 15/16] ata: ahci: register only implemented ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The value from the "ports implemented" register should be kept in mind
when registering ports or detecting devices on them.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f9056ff418..24098ada08 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -563,11 +563,15 @@ void ahci_info(struct device_d *dev)
 static int ahci_detect(struct device_d *dev)
 {
 	struct ahci_device *ahci = dev->priv;
+	int n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
 	int i;
 
-	for (i = 0; i < ahci->n_ports; i++) {
+	for (i = 0; i < n_ports; i++) {
 		struct ahci_port *ahci_port = &ahci->ports[i];
 
+		if (!(ahci->port_map & (1 << i)))
+			continue;
+
 		ata_port_detect(&ahci_port->ata);
 	}
 
@@ -577,7 +581,7 @@ static int ahci_detect(struct device_d *dev)
 int ahci_add_host(struct ahci_device *ahci)
 {
 	u32 tmp, cap_save;
-	int i, ret;
+	int n_ports, i, ret;
 
 	ahci->host_flags = ATA_FLAG_SATA
 				| ATA_FLAG_NO_LEGACY
@@ -619,9 +623,14 @@ int ahci_add_host(struct ahci_device *ahci)
 	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
 	      ahci->cap, ahci->port_map, ahci->n_ports);
 
-	for (i = 0; i < ahci->n_ports; i++) {
+	n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
+
+	for (i = 0; i < n_ports; i++) {
 		struct ahci_port *ahci_port = &ahci->ports[i];
 
+		if (!(ahci->port_map & (1 << i)))
+			continue;
+
 		ahci_port->num = i;
 		ahci_port->ahci = ahci;
 		ahci_port->ata.dev = ahci->dev;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

