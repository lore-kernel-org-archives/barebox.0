Delivery-date: Wed, 04 May 2022 11:41:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVZ-001W9V-5V
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:41:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVW-0001dZ-U9
	for lore@pengutronix.de; Wed, 04 May 2022 11:41:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPnu/FOyHh6U+0SKQnOOb3KfnwQxsJX8RG1uAV/I3ow=; b=TvsLxqzRd6x772
	ur9vZXjcTuWoxq0jQME0TlkMjawMOmVCD54fwsBEcGkb5hvZV3lGztr2JbTMTTmQg/GOg9kbGL5a4
	taBRinWC8LjdFjykQgzKI4QOWnGwyDxkH7lMxM23f5z+LuM1Sf6NGDKZW7f0mBrucZiJjxwjfH9Hj
	lZYU8BlVbR+CiIsJkfAVdZevnkqvhAKtC7b8Jt2M5+ZLgUY/wQc9+OSBj46QJw8XThYoWGqqIu73g
	QUnJ/ABu+YOaDyoBtENTkI+8X5Ivv+EhEyjmQTnZwXkmzltjEX9doXMlF3KC9RY4DgSElGyYF/QBC
	YpmZQV3e9M7yW4uQ0CIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBTx-009xlu-S5; Wed, 04 May 2022 09:39:42 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHP-009qJS-0l
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:26:44 +0000
Received: by mail-lf1-x136.google.com with SMTP id i10so1283975lfg.13
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jmaa0huSXomiRTDnaBl/M1VUtT7OLaFWVM66YtgY35Y=;
 b=VaFWx1r2FyTfOVTvUdbacs8mT9dsqA8s0sftkZualVsiaOM7GIrUPKitUDrH4zfCmr
 ALljdAjZz1/tayzGyj2RZ0MdrIFj6TPf2cSihC42K0EjbgbCHpn8RcmWUk8lpz3sl7Sx
 ibff/4/+ANC6Kg9olSfxgLW5ElS23A6KhLomQmTmsibye7yBn5LWQzZOecgxkwF9DSh9
 mxx/KkOjzA217KuJbZ/vLNQZUcvwuDFwBDt3qf8lL0uhM2awuHR2UBcjSTWFg1AZbAhp
 qYWRyvawu5A4iiXQBqMwrzyk2PPnv01Qb7zhqP7ICx8F4NN3EbQMbk3bi8Zkh4SDtYch
 7HXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jmaa0huSXomiRTDnaBl/M1VUtT7OLaFWVM66YtgY35Y=;
 b=mIFCdlF/wyB/wB/59znp7/repng6zRkWcShQ+tHmN7Q6N0KDK1Qb1h2howSBKRErcH
 JF0SpwOSvJwl6qHZKWJ9hM9rS8r5ia40XywZzg5Ehok6I562UgBOIUj9+LytmKIJMHsd
 5ajHCNRCIqPJhrYIxWt4gOZIzLiTrZWjc/LpwwQYGgtEOi9gTSJ0D7DHGlHq4/83A+9Y
 xCu/uoa7OlUA30yWaN4wRBW0OjZIdcEJer0OUQaqzQzwOmQgG35anuVD2bZQMp1Av/Eb
 KwHWvLbScOdotB1vmpNSs1pWHKZ5k/siD2U+KFXQbqq8GAbGE1NkuMVLmRQQpclRplrQ
 N7Cg==
X-Gm-Message-State: AOAM530l5abVNyctTbtwdbJaPbFr/Lu818UsCdmJqBlEfOOls1+R0EMq
 //H6C7T4uUeUhkvRZQ7eBS8ILC8J4yYYRrmV
X-Google-Smtp-Source: ABdhPJzFcQQEaE213TBhvme1NvTE4csIwbt3lZ2DRxI+rEgpbo30o0cFMhJzBWqd9UnajRW+SjqRMw==
X-Received: by 2002:a05:6512:3b87:b0:473:9e36:5f0d with SMTP id
 g7-20020a0565123b8700b004739e365f0dmr7855670lfv.424.1651656398702; 
 Wed, 04 May 2022 02:26:38 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.26.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:26:38 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:39 +0300
Message-Id: <20220504092553.27961-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022643_093827_8B104C84 
X-CRM114-Status: GOOD (  14.93  )
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
Subject: [PATCH 02/16] ata: ahci: replace magic numbers with named constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 21 +++++++++++----------
 drivers/ata/ahci.h | 12 ++++++++++++
 2 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index ad9e2f950f..c64c856f94 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -101,7 +101,7 @@ static inline void __iomem *ahci_port_base(void __iomem *base, int port)
 
 static int ahci_link_ok(struct ahci_port *ahci_port, int verbose)
 {
-	u32 val = ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf;
+	u32 val = ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET;
 
 	if (val == 0x3)
 		return true;
@@ -166,7 +166,7 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	sg_count = ahci_fill_sg(ahci_port, rbuf ? rbuf : wbuf, buf_len);
 	opts = (fis_len >> 2) | (sg_count << 16);
 	if (wbuf)
-		opts |= 1 << 6;
+		opts |= CMD_LIST_OPTS_WRITE;
 	ahci_fill_cmd_slot(ahci_port, opts);
 
 	ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
@@ -355,7 +355,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 * rarely has it taken between 1-2 ms. Never seen it above 2 ms.
 	 */
 	ret = wait_on_timeout(WAIT_LINKUP,
-			(ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 0x3);
+			(ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) == 0x3);
 	if (ret) {
 		ahci_port_info(ahci_port, "SATA link timeout\n");
 		ret = -ETIMEDOUT;
@@ -373,15 +373,16 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 
 	ret = wait_on_timeout(WAIT_SPINUP,
 			((ahci_port_read(ahci_port, PORT_TFDATA) &
-			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0)
-			|| ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1));
+			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0) ||
+			((ahci_port_read(ahci_port, PORT_SCR_STAT) &
+			 PORT_SCR_STAT_DET) == 1));
 	if (ret) {
 		ahci_port_info(ahci_port, "timeout.\n");
 		ret = -ENODEV;
 		goto err_init;
 	}
 
-	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1) {
+	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) == 1) {
 		ahci_port_info(ahci_port, "down.\n");
 		ret = -ENODEV;
 		goto err_init;
@@ -408,7 +409,7 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 
 	ahci_port_debug(ahci_port, "status: 0x%08x\n", val);
 
-	if ((val & 0xf) == 0x03)
+	if ((val & PORT_SCR_STAT_DET) == 0x3)
 		return 0;
 
 	ret = -ENODEV;
@@ -581,8 +582,8 @@ int ahci_add_host(struct ahci_device *ahci)
 	ahci_debug(ahci, "ahci_host_init: start\n");
 
 	cap_save = ahci_ioread(ahci, HOST_CAP);
-	cap_save &= ((1 << 28) | (1 << 17));
-	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
+	cap_save &= (HOST_SMPS | HOST_SPM);
+	cap_save |= HOST_SSS;  /* Staggered Spin-up. Not needed. */
 
 	/* global controller reset */
 	tmp = ahci_ioread(ahci, HOST_CTL);
@@ -605,7 +606,7 @@ int ahci_add_host(struct ahci_device *ahci)
 
 	ahci->cap = ahci_ioread(ahci, HOST_CAP);
 	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
-	ahci->n_ports = (ahci->cap & 0x1f) + 1;
+	ahci->n_ports = (ahci->cap & HOST_NP) + 1;
 
 	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
 	      ahci->cap, ahci->port_map, ahci->n_ports);
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 7fed43045a..5a187fd2e1 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -33,6 +33,12 @@
 #define HOST_VERSION		0x10 /* AHCI spec. version compliancy */
 #define HOST_CAP2		0x24 /* host capabilities, extended */
 
+/* HOST_CAP bits */
+#define HOST_SMPS		(1 << 28)   /* supports mechanical presence switch */
+#define HOST_SSS		(1 << 27)   /* supports staggered spin-up */
+#define HOST_SPM		(1 << 17)   /* supports port multiplier */
+#define HOST_NP			(0x1f << 0) /* number of ports */
+
 /* HOST_CTL bits */
 #define HOST_RESET		(1 << 0)  /* reset controller; self-clear */
 #define HOST_IRQ_EN		(1 << 1)  /* global IRQ enable */
@@ -98,6 +104,9 @@
 #define PORT_CMD_ICC_PARTIAL	(0x2 << 28) /* Put i/f in partial state */
 #define PORT_CMD_ICC_SLUMBER	(0x6 << 28) /* Put i/f in slumber state */
 
+/* PORT_SCR_STAT bits */
+#define PORT_SCR_STAT_DET	(0xf << 0) /* device detection */
+
 #define AHCI_MAX_PORTS		32
 
 /* SETFEATURES stuff */
@@ -130,6 +139,9 @@
 #define ATA_FLAG_PIO_DMA	(1 << 8) /* PIO cmds via DMA */
 #define ATA_FLAG_NO_ATAPI	(1 << 11) /* No ATAPI support */
 
+/* Command list entry DW0 bits */
+#define CMD_LIST_OPTS_WRITE	(1 << 6) /* the direction is a device write */
+
 struct ahci_device;
 
 struct ahci_port {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

