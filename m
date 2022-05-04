Delivery-date: Wed, 04 May 2022 11:42:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBX0-001WDa-Bt
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:42:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBWx-0002FB-0E
	for lore@pengutronix.de; Wed, 04 May 2022 11:42:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO+EB3vvm0NkRBMSmMzjpIsuZ1pr41fFxgj4MwFWn2s=; b=pAuEWAT6Mnv4Rh
	/Zj2H1khMZT1RHIGwOeRcOh9Xzrle8Z7C04jo+qXKJ1n7A+x9nJ8TsyXrZpyMVI4vU3a+VKa1Mzj7
	td8brzpdrBNNSP0J3to6CxDGerLJO5GCY2gfLCg+EWYlkQhHwuLH/eh0P5XTsG4Mhn+BImTuuZrwc
	p1TPA0p8rWULBCaydDfaXTIiRMmuEHKhRf2wiI2k+bPIaANNlVYoeJely+Al8EAOv6pHXLO9nHjDk
	ATf35Bs5ydOjIn0XHTrqqGIr8T8FIei/xIh+3sCwYQk5L1Ot9AfLfkfINI8Fmk4njrLb6x1kdZfUP
	jCfksBfKDWeJOWMcWmzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBVL-009ycc-DG; Wed, 04 May 2022 09:41:08 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHv-009qba-D1
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:17 +0000
Received: by mail-lf1-x12e.google.com with SMTP id p10so1286862lfa.12
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KI7hdeNnnwqxHd8xdeWpZserz7TojoXCaBiaR6FdZuQ=;
 b=DwGnO/jp/3UCy+m0zDm5aWlMNq2gYvMTJUH5vvulkOSXvMqUNjeV7Z6qVo0xvZkwX+
 V0k6dhxopsuFEenorLeIhblx4dAA0CKt+GtPjo3A5SoTBosE6dJpU9bys5HsEaPasue0
 XI7eG2ks3jdmvaiVjeT4XFjMnOLb5hGPp+g50bO3ldbRWoQRvkklsDEE8WsxPDa5bCaT
 ud2o0F3Ii/p+wgb6VuCUzpuOYp7xnpaxXBWiAL7XHEpg+YBR1z4J0eP+1EfwxZOGxs/5
 1AJcTz54ST4KspMSzxqT6iscrlzUVCaM3Yh43gRzujTFAD4WGONNAy014oRGCgOIt0IZ
 um/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KI7hdeNnnwqxHd8xdeWpZserz7TojoXCaBiaR6FdZuQ=;
 b=nUJ0uioQKxkHcHufJObdc+fodpICPqEtIqyK4NesFuJwJlNRrI0FgtkZKLIh37JW9v
 OlmJ0wzTW7bE+TwOl3PoVUZG9c7nc6MopniSXG2qJLacLy5WJhEIycVMwlhinptuQ720
 ywxXJjucL8hwVgfnYTftQbFZ48wQeKZ1bVJ7u/Fdr3QkrMrP2PjFUK+1qrBHDxO32fyC
 N5jE8GvT8jtz7p+1kfTfjLVZS5K/ne7WkgNh/ziPOOvCxpp0K1MNfnBaD74viILmcJsw
 jztOog5Ex715ZqnetywaDmU6IuwV2LbznWKXDNnWRiEFEnHIWQ0NT9j41h7O4qByp5NE
 q+9Q==
X-Gm-Message-State: AOAM5302+cM6kWXD/9IroGfvQh/BsfDnluz4w9/THy10bPbZ7lvxMCZk
 cYoYWTsH11t2nJNGbnURfNk5o4er4EKQKeCi
X-Google-Smtp-Source: ABdhPJxvrHu4nkycZe0A+TGzQNGipuVg0u4BF5gv7e2eKNJLhklKVVTgel+mNBlgGQ+RQaER0PMSuw==
X-Received: by 2002:a05:6512:3c99:b0:473:b720:3eed with SMTP id
 h25-20020a0565123c9900b00473b7203eedmr2702293lfv.355.1651656433702; 
 Wed, 04 May 2022 02:27:13 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:13 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:46 +0300
Message-Id: <20220504092553.27961-9-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022715_503943_B641D604 
X-CRM114-Status: GOOD (  11.36  )
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
Subject: [PATCH 09/16] ata: ahci: use named constants for capabilities bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 51 +++++++++++++++++++++++-----------------------
 drivers/ata/ahci.h | 30 +++++++++++++++++++++++----
 2 files changed, 52 insertions(+), 29 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 2d7b527755..1d8099c2ee 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -500,7 +500,7 @@ void ahci_print_info(struct ahci_device *ahci)
 	cap2 = ahci_ioread(ahci, HOST_CAP2);
 	impl = ahci->port_map;
 
-	speed = (cap >> 20) & 0xf;
+	speed = (cap & HOST_CAP_ISS) >> 20;
 	if (speed == 1)
 		speed_s = "1.5";
 	else if (speed == 2)
@@ -518,32 +518,33 @@ void ahci_print_info(struct ahci_device *ahci)
 	       (vers >> 16) & 0xff,
 	       (vers >> 8) & 0xff,
 	       vers & 0xff,
-	       ((cap >> 8) & 0x1f) + 1, (cap & 0x1f) + 1, speed_s, impl, scc_s);
+	       ((cap & HOST_CAP_NCS) >> 8) + 1,
+	       (cap & HOST_CAP_NP) + 1, speed_s, impl, scc_s);
 
 	printf("flags: "
 	       "%s%s%s%s%s%s%s"
 	       "%s%s%s%s%s%s%s"
 	       "%s%s%s%s%s%s\n",
-	       cap & (1 << 31) ? "64bit " : "",
-	       cap & (1 << 30) ? "ncq " : "",
-	       cap & (1 << 28) ? "ilck " : "",
-	       cap & (1 << 27) ? "stag " : "",
-	       cap & (1 << 26) ? "pm " : "",
-	       cap & (1 << 25) ? "led " : "",
-	       cap & (1 << 24) ? "clo " : "",
-	       cap & (1 << 19) ? "nz " : "",
-	       cap & (1 << 18) ? "only " : "",
-	       cap & (1 << 17) ? "pmp " : "",
-	       cap & (1 << 16) ? "fbss " : "",
-	       cap & (1 << 15) ? "pio " : "",
-	       cap & (1 << 14) ? "slum " : "",
-	       cap & (1 << 13) ? "part " : "",
-	       cap & (1 << 7) ? "ccc " : "",
-	       cap & (1 << 6) ? "ems " : "",
-	       cap & (1 << 5) ? "sxs " : "",
-	       cap2 & (1 << 2) ? "apst " : "",
-	       cap2 & (1 << 1) ? "nvmp " : "",
-	       cap2 & (1 << 0) ? "boh " : "");
+	       cap & HOST_CAP_64 ? "64bit " : "",
+	       cap & HOST_CAP_NCQ ? "ncq " : "",
+	       cap & HOST_CAP_SMPS ? "ilck " : "",
+	       cap & HOST_CAP_SSS ? "stag " : "",
+	       cap & HOST_CAP_ALPM ? "pm " : "",
+	       cap & HOST_CAP_LED ? "led " : "",
+	       cap & HOST_CAP_CLO ? "clo " : "",
+	       cap & HOST_CAP_RESERVED ? "nz " : "",
+	       cap & HOST_CAP_ONLY ? "only " : "",
+	       cap & HOST_CAP_SPM ? "pmp " : "",
+	       cap & HOST_CAP_FBS ? "fbss " : "",
+	       cap & HOST_CAP_PIO_MULTI ? "pio " : "",
+	       cap & HOST_CAP_SSC ? "slum " : "",
+	       cap & HOST_CAP_PART ? "part " : "",
+	       cap & HOST_CAP_CCC ? "ccc " : "",
+	       cap & HOST_CAP_EMS ? "ems " : "",
+	       cap & HOST_CAP_SXS ? "sxs " : "",
+	       cap2 & HOST_CAP2_APST ? "apst " : "",
+	       cap2 & HOST_CAP2_NVMHCI ? "nvmp " : "",
+	       cap2 & HOST_CAP2_BOH ? "boh " : "");
 }
 
 void ahci_info(struct device_d *dev)
@@ -583,8 +584,8 @@ int ahci_add_host(struct ahci_device *ahci)
 	ahci_debug(ahci, "ahci_host_init: start\n");
 
 	cap_save = ahci_ioread(ahci, HOST_CAP);
-	cap_save &= (HOST_SMPS | HOST_SPM);
-	cap_save |= HOST_SSS;  /* Staggered Spin-up. Not needed. */
+	cap_save &= (HOST_CAP_SMPS | HOST_CAP_SPM);
+	cap_save |= HOST_CAP_SSS;  /* Staggered Spin-up. Not needed. */
 
 	/* global controller reset */
 	tmp = ahci_ioread(ahci, HOST_CTL);
@@ -607,7 +608,7 @@ int ahci_add_host(struct ahci_device *ahci)
 
 	ahci->cap = ahci_ioread(ahci, HOST_CAP);
 	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
-	ahci->n_ports = (ahci->cap & HOST_NP) + 1;
+	ahci->n_ports = (ahci->cap & HOST_CAP_NP) + 1;
 
 	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
 	      ahci->cap, ahci->port_map, ahci->n_ports);
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 99c45f30fc..de404e2e16 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -36,10 +36,32 @@
 #define HOST_CAP2		0x24 /* host capabilities, extended */
 
 /* HOST_CAP bits */
-#define HOST_SMPS		(1 << 28)   /* supports mechanical presence switch */
-#define HOST_SSS		(1 << 27)   /* supports staggered spin-up */
-#define HOST_SPM		(1 << 17)   /* supports port multiplier */
-#define HOST_NP			(0x1f << 0) /* number of ports */
+#define HOST_CAP_64		(1 << 31)   /* PCI DAC (64-bit DMA) support */
+#define HOST_CAP_NCQ		(1 << 30)   /* Native Command Queueing */
+#define HOST_CAP_SNTF		(1 << 29)   /* SNotification register */
+#define HOST_CAP_SMPS		(1 << 28)   /* Supports mechanical presence switch */
+#define HOST_CAP_SSS		(1 << 27)   /* Supports staggered spin-up */
+#define HOST_CAP_ALPM		(1 << 26)   /* Aggressive Link PM support */
+#define HOST_CAP_LED		(1 << 25)   /* Supports activity LED */
+#define HOST_CAP_CLO		(1 << 24)   /* Command List Override support */
+#define HOST_CAP_ISS		(0xf << 20) /* Interface Speed Support */
+#define HOST_CAP_RESERVED	(1 << 19)   /* Reserved bit */
+#define HOST_CAP_ONLY		(1 << 18)   /* Supports AHCI mode only */
+#define HOST_CAP_SPM		(1 << 17)   /* Supports port multiplier */
+#define HOST_CAP_FBS		(1 << 16)   /* FIS-based switching support */
+#define HOST_CAP_PIO_MULTI	(1 << 15)   /* PIO multiple DRQ support */
+#define HOST_CAP_SSC		(1 << 14)   /* Slumber state capable */
+#define HOST_CAP_PART		(1 << 13)   /* Partial state capable */
+#define HOST_CAP_NCS		(0x1f << 8) /* Number of Command Slots */
+#define HOST_CAP_CCC		(1 << 7)    /* Command Completion Coalescing */
+#define HOST_CAP_EMS		(1 << 6)    /* Enclosure Management support */
+#define HOST_CAP_SXS		(1 << 5)    /* Supports External SATA */
+#define HOST_CAP_NP		(0x1f << 0) /* Number of ports */
+
+/* HOST_CAP2 bits */
+#define HOST_CAP2_APST		(1 << 2)    /* Automatic partial to slumber */
+#define HOST_CAP2_NVMHCI	(1 << 1)    /* NVMHCI supported */
+#define HOST_CAP2_BOH		(1 << 0)    /* BIOS/OS handoff supported */
 
 /* HOST_CTL bits */
 #define HOST_RESET		(1 << 0)  /* reset controller; self-clear */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

