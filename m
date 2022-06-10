Delivery-date: Fri, 10 Jun 2022 07:42:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPm-009fKS-Aj
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPk-0007L8-TQ
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/g2hPMYjyK77Qv09NAdCrLa1gDrIge3oowx9A5uj4Y=; b=q7lE8uOPL7YMgh
	5s+trxtScAwmechWYokRX10WE7a5XRlWSOHGPv5LtRU3uDYEKJipssBQ0PsSj0fqU4D6DGE3nc1zr
	GcbqY1QvebuQzcJIRDlQAXq89b6FUdyu9wIagNIK84MIrsDtdeyHkXQYcJ8XCDHhfULBcpo61Zezp
	H4rVdrYxmIj2/cMIHBm/lE760RP16tvfqPpXy0ar6almv904In+MDIXSvQiJIkAlDLndSIx1fxeVu
	jBDEXZ29v6ZpvJVH38qhjMUidUu22wgZAp4s3JnOiH/57UgKqSl+xDfwrtLYBYxscmdVv8BFkjj5o
	P+CTlvWKqARPHR8TJVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXON-005zul-6x; Fri, 10 Jun 2022 05:41:07 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOE-005zq6-Ia
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:40:59 +0000
Received: by mail-lf1-x133.google.com with SMTP id i29so24423611lfp.3
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TfQRdKpCnywVVE5DXQpZNXR2/GNgT8/hXSpLD1ZsviA=;
        b=Bov3vKDl82ldvIT4UOIwxVIswGmhr+9/utdcdUr7hCUZ3mcykFDKfJprU7Wyb5Xfsq
         gNlJad1gLuAeUaLgX/cGcaTwwJOHoQbopykfiQAyl37vN3/j2EKvnhs/bVf1Zw9NE5+K
         ewOS10YnoIdY9wnSSLVu/8/yV+ZqWDpy9UFXq9RRLoQFQnu7DJSiU/mWo++XDI66iHcv
         AlrKmdNEAvrq4n5R94FNI3hXXEcEcaHqTX/ydm9jwmMc+zsG0ocmDnNKxKVmFWSswEDZ
         7EfIg69AYCBazhgmFBcf9g0PtgCBAYuyfgk68NlkCXJmisjeIGri3jjDr0/MqiAp+k4f
         kQSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TfQRdKpCnywVVE5DXQpZNXR2/GNgT8/hXSpLD1ZsviA=;
        b=wpcp+D83k6XIDsdJAij/be7QsxZKd28oCeFmvDDk9L7yjAnlJ4SHsd3An3tO0fIUPc
         wuyFg3Z8L4MF0k8t45Zc5Oq+Oq6Ku7A8E5dNgBXwx6KJNrtPIhQpwtg4/Rycj8DkKBCr
         D4KKRdNcP3bUvKuIfIOmHI/tGG14o3qK1/acZ8lGntKwCysux+Ml5uLa3R2bjQptnX8r
         tHzunvxhWxof3aVGAjm4F0QChH/Hk31k90kgnyCbbjWNt5M1unUCsWm0N6KXNwoDUzl0
         +KyF8eYgtCkObg5X8S28UXfcCH+3luVXIClyEmpAzKV1QSqXFLrRvqi9FKzRVOytLgIM
         Up4w==
X-Gm-Message-State: AOAM532Y4F6K8oBRblk1sDNmfu5ILdM6jrzZI9ly6fLgdauRbX739L4Y
	W+9OQyWzvcIbel170O4X96tL/grTg/Y=
X-Google-Smtp-Source: ABdhPJzkJRtxMOjPu8Mw3jYzltP9xfnGjKq19ccskH6n+jiOSErELdgJ0GQcb/8atIJDGOAMS5Nw3g==
X-Received: by 2002:a05:6512:32b2:b0:479:b04:c0af with SMTP id q18-20020a05651232b200b004790b04c0afmr26604327lfe.384.1654839655967;
        Thu, 09 Jun 2022 22:40:55 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:55 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:44 +0300
Message-Id: <20220610054051.4911-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224058_650953_BE8C9A52 
X-CRM114-Status: GOOD (  10.58  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] ata: ahci: Fix format string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drivers/ata/ahci.c: In function 'ahci_print_info':
drivers/ata/ahci.c:517:9: warning: too many arguments for format [-Wformat-extra-args]

Fixes: b5da6970bf23 ("ata: ahci: add missing capability in ahci_print_info()")
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/ata/ahci.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index eb9e1bd133..f4b93183ce 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -304,8 +304,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port->cmd_slot = mem;
 	ahci_port->cmd_slot_dma = mem_dma;
 
-	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pa)\n",
-			ahci_port->cmd_slot, ahci_port->cmd_slot_dma);
+	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pad)\n",
+			ahci_port->cmd_slot, &ahci_port->cmd_slot_dma);
 
 	/*
 	 * Second item: Received-FIS area
@@ -320,8 +320,8 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port->cmd_tbl = mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
 	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
 
-	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pa)\n",
-			ahci_port->cmd_tbl, ahci_port->cmd_tbl_dma);
+	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pad)\n",
+			ahci_port->cmd_tbl, &ahci_port->cmd_tbl_dma);
 
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
 
@@ -517,7 +517,7 @@ void ahci_print_info(struct ahci_device *ahci)
 	printf("flags: "
 	       "%s%s%s%s%s%s%s"
 	       "%s%s%s%s%s%s%s"
-	       "%s%s%s%s%s%s\n",
+	       "%s%s%s%s%s%s%s\n",
 	       cap & HOST_CAP_64 ? "64bit " : "",
 	       cap & HOST_CAP_NCQ ? "ncq " : "",
 	       cap & HOST_CAP_SNTF ? "sntf " : "",
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

