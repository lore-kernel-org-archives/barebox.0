Delivery-date: Wed, 16 Jun 2021 09:41:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB4-00010P-6f
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB3-00008Y-Ch
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQcLhYkEslgro5fz864g418ixJ7+8hki3Q6GszMbDz4=; b=YVtxRAOuyIoOPG
	W5RUe0qLgLdFel4uUiChSXGtzK4ovjveR8mNCNxJqAuBFtYK2lfVYgpCW9VnYzXOuOYrSDk49oq3F
	ST7DHRlQS0VwyTLAp4HvfMNgJmVtSaVaetk/UB20YJ+1oHi3zcpNgL94a6NM9/o+rSjRbfVz6aRG9
	y4PrSQrwwV16xveg3USBezi/fUDmKzwrz5ObSAREVFhtPHUzI5nWaPFEkC5Lc3An+BIk0o776HS04
	SPjHMhz7Ec7/ITHzwcZyjJSE+uXquPp2NXN8hsP4DEcKLIJ3Z4ubwQxlQt+y6AD4gVVmx+G/eELto
	MOBt5BbkVsR3wgPNop2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9f-005EOm-9P; Wed, 16 Jun 2021 07:40:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9a-005EMi-0t
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0007zD-EV; Wed, 16 Jun 2021 09:39:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-0001qI-St; Wed, 16 Jun 2021 09:39:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rG3-SB; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:56 +0200
Message-Id: <20210616073957.1872965-5-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_107123_91F8530A 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] mci: arasan: wait for XFER_COMPLETE for busy response
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I observed errors on the ZynqMP during reading the EXT_CSD registers
using CMD8. The Zynq UltraScale+ Device TRM UG1085 (v2.2) p. 777 states
that the driver shall wait 2 ms after sending CMD6 for setting a EXT_CSD
register.

The JEDEC Standard No. 84-A43 p. 35 does not specify the delay but
states that CMD6 expects an R1b response and that the host has to wait
until the busy signal is de-asserted. This is signaled via the
SDHCI_INT_XFER_COMPLETE interrupt.

Wait for the XFER_COMPLETE interrupt after sending a command that
expects an R1b response.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 732f838d8395..d45f9184cd1d 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -193,6 +193,8 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	mask = SDHCI_INT_CMD_COMPLETE;
 	if (data && data->flags == MMC_DATA_READ)
 		mask |= SDHCI_INT_DATA_AVAIL;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		mask |= SDHCI_INT_XFER_COMPLETE;
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci,
 				cmd, data, false, &command, &xfer);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

