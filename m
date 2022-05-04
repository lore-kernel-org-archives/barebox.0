Delivery-date: Wed, 04 May 2022 11:41:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVX-001W99-V3
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:41:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBVV-0001dN-Sh
	for lore@pengutronix.de; Wed, 04 May 2022 11:41:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3HcWmArf/mtLJ00jir3X6r7sSGZPz1IHIliNX3nhDd4=; b=DDqLrHxjFS9Ly6
	cBqI124/mSaxqHDYoy9dZ+sp+Lwv3JAGamz+e0O5z8LDlTGJX7IVszSpNMNi2bQJhE1uHBwxDAeDU
	7DW7sbhDFV1cYiSsw/DPlsUzThQfwEe1w5gJdYsUFYMwwFFyoQKm5aJwuKPxafXufsid+EmhTC2CE
	u8ecjSD6+IBGp5oIgXmTICvPdtCjr/9N4azAiFGSWhy3999hQmj0RdQl2HmWDZ8gYYKGYckwO95Cd
	RUMAnPR72OcVs1Cfvbl/GqYl2L3wHuULpYCoL2nbkKQ+yQXtHlkB5wwAePioZA3EhwbqBSL0Fb6xZ
	t5IB5KEBaqBE6RpbuAvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBTb-009xdd-Pd; Wed, 04 May 2022 09:39:19 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHF-009qEK-4D
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:26:34 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y32so1312545lfa.6
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5uuG9aUefeA/ut466I8sje7oDhYKw8dCgUJsR9LkX2c=;
 b=M7g7eb53Qdly2Ydcgw/MgnU58Au5qCjE3nVDf8Xhgq1HIUVH67t/KAqNq7oezdWQJc
 4rAKUMmSJf2MP0Wvi3HGygqyZ/LDX/JVrxgFkoAteIZfztpHLFMr4nB6lkNZ+99blFob
 mP4bHTMXr3KQOyrPcLPjLdK6Rp8+rXDLm4psCcl+EZQZXA4Zfo3U3utoCl+mnpk7zIsn
 cr3OYAc41APwPYcaULQ5GM6aoWBHocQCEud/nqILOKI5F9rLAhScg376JftGmiEuCJXv
 yXOP6+nzzaOMXdwA8R3Xb1g/zPyaVUCy4s1C4u4Vm7/t3PBDA+dCe6eS1l2B6eEcEVhO
 mzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5uuG9aUefeA/ut466I8sje7oDhYKw8dCgUJsR9LkX2c=;
 b=rd8tn73ffrOWlBdiJcrHg/lXZHAOTeoviL2vz6iIyfUfYi2Kw075pGFsi/V6ktxnj3
 Oz52wbIodtSHrS2hVmkPV6gVmy9BXglBFCwpBdITl3YNAh5DfO+6Mxmvjp1tDJrLgBa3
 IQQBE/DGG682VN4QGDkH2WXkaT4+FIVm2FNWjpKbvKc57RCsrodFuvcHY5mSJEueyOUR
 YV4lRZ3mg+iBN3IWBsnb0KjM9c8b04OVXqfqeBp295K3YEFdSUrg87TSxT7ZwC/WwXGH
 UUpgKa+9lLgRH4N2/8MzBOChpk2ixjtsJzx6/lUtnQjMzVkrfCxbzaev+pXfltVsvs0V
 nbig==
X-Gm-Message-State: AOAM533mJlj8FMesdxGL2pbxYeUEwNMAYfsLtSulK73aqc/zbr4TlEbC
 hIeJQ5uJ/t257chblZs/lXP4z8vxnOYa+cWU
X-Google-Smtp-Source: ABdhPJwkpbXyy9nmEX1S4NjJOOsng/vj9piaLp0qqae5OKx4SzFD6Uw+OvJ6j6Erh8JGDiYQ3bng0Q==
X-Received: by 2002:a05:6512:33c9:b0:473:a418:2da7 with SMTP id
 d9-20020a05651233c900b00473a4182da7mr5978937lfg.356.1651656388397; 
 Wed, 04 May 2022 02:26:28 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:26:27 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:38 +0300
Message-Id: <20220504092553.27961-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022633_248978_B5C1A46B 
X-CRM114-Status: GOOD (  13.15  )
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
Subject: [PATCH 01/16] ata: ahci: use abstract read/write functions uniformly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently those are used in some routines side by side with underlying
functions with no apparent reason for it. Make their usage uniform, this
cleans up code a bit and allows to remove unneeded variables.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 3c0b0a5450..ad9e2f950f 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -172,7 +172,7 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
 
 	ret = wait_on_timeout(WAIT_DATAIO,
-			(readl(ahci_port->port_mmio + PORT_CMD_ISSUE) & 0x1) == 0);
+			(ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) == 0);
 	if (ret)
 		return -ETIMEDOUT;
 
@@ -274,12 +274,9 @@ static int ahci_write(struct ata_port *ata, const void *buf, sector_t block,
 
 static int ahci_init_port(struct ahci_port *ahci_port)
 {
-	void __iomem *port_mmio;
 	u32 val, cmd;
 	int ret;
 
-	port_mmio = ahci_port->port_mmio;
-
 	/* make sure port is not active */
 	val = ahci_port_read(ahci_port, PORT_CMD);
 	if (val & (PORT_CMD_LIST_ON | PORT_CMD_FIS_ON | PORT_CMD_FIS_RX | PORT_CMD_START)) {
@@ -375,16 +372,16 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port_info(ahci_port, "Spinning up device...\n");
 
 	ret = wait_on_timeout(WAIT_SPINUP,
-			((readl(port_mmio + PORT_TFDATA) &
+			((ahci_port_read(ahci_port, PORT_TFDATA) &
 			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0)
-			|| ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1));
+			|| ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1));
 	if (ret) {
 		ahci_port_info(ahci_port, "timeout.\n");
 		ret = -ENODEV;
 		goto err_init;
 	}
 
-	if ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1) {
+	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1) {
 		ahci_port_info(ahci_port, "down.\n");
 		ret = -ENODEV;
 		goto err_init;
@@ -570,7 +567,6 @@ static int ahci_detect(struct device_d *dev)
 
 int ahci_add_host(struct ahci_device *ahci)
 {
-	u8 *mmio = (u8 *)ahci->mmio_base;
 	u32 tmp, cap_save;
 	int i, ret;
 
@@ -584,7 +580,7 @@ int ahci_add_host(struct ahci_device *ahci)
 
 	ahci_debug(ahci, "ahci_host_init: start\n");
 
-	cap_save = readl(mmio + HOST_CAP);
+	cap_save = ahci_ioread(ahci, HOST_CAP);
 	cap_save &= ((1 << 28) | (1 << 17));
 	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
 
@@ -597,7 +593,7 @@ int ahci_add_host(struct ahci_device *ahci)
 	 * reset must complete within 1 second, or
 	 * the hardware should be considered fried.
 	 */
-	ret = wait_on_timeout(SECOND, (readl(mmio + HOST_CTL) & HOST_RESET) == 0);
+	ret = wait_on_timeout(SECOND, (ahci_ioread(ahci, HOST_CTL) & HOST_RESET) == 0);
 	if (ret) {
 		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
 		return -ENODEV;
@@ -620,7 +616,7 @@ int ahci_add_host(struct ahci_device *ahci)
 		ahci_port->num = i;
 		ahci_port->ahci = ahci;
 		ahci_port->ata.dev = ahci->dev;
-		ahci_port->port_mmio = ahci_port_base(mmio, i);
+		ahci_port->port_mmio = ahci_port_base(ahci->mmio_base, i);
 		ahci_port->ata.ops = &ahci_ops;
 		ata_port_register(&ahci_port->ata);
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

