Delivery-date: Tue, 18 Jan 2022 15:06:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8G-005cy0-G2
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8F-0006O0-5f
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LZQK/Rx40MXVQb5VEfz2HUMlV1x6qMhcHj8FXhZ1Gg=; b=sywgEk6ISDKfZ2
	aqpc8VWsbICQI5rOj2vlIf9tFBUXObrFBUUbhrV8Uv1qXKweXkeets58uYcYDKiaq2okwaDZTIwC1
	JNA2lrIhmKtlOtLrOHnDgm4ADPH8fzdDvVg1VaFyd5hxL65QjnvLPjHMFdI63+9gnInvXmBIryIlQ
	pmeblvDTA5GQMbOW2mnSUHnhCbeoU3vM2bIP0UBx67MMEveQloGqpC7fVGUYPIlR0zZhsyg+ES50j
	KZFJ5vgZf28fDaBBtqQmK6eAAsaedOSPlPlPhhR/DD6BV1tESlxKK+wK7p+tnrnSTnpEU+d5f0ZRK
	kVAAPuBqfXgtjUFRRJDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p75-001lJP-7X; Tue, 18 Jan 2022 14:05:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6u-Ef
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005oc-DS; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kLi-PY; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:48 +0100
Message-Id: <20220118140453.1860909-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_581120_35A6D408 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] ata: sata_mv: cleanup alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Clean up the alignment of the defines.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ata/sata_mv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index 3b55c71d67..3f77e8f2e8 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -33,15 +33,15 @@ static void ata_ioports_init(struct ata_ioports *io,
 	/* io->alt_dev_addr is unused */
 }
 
-#define REG_WINDOW_CONTROL(n)	((n) * 0x10 + 0x30)
-#define REG_WINDOW_BASE(n)	((n) * 0x10 + 0x34)
+#define REG_WINDOW_CONTROL(n)		((n) * 0x10 + 0x30)
+#define REG_WINDOW_BASE(n)		((n) * 0x10 + 0x34)
 
-#define REG_EDMA_COMMAND(n)	((n) * 0x2000 + 0x2028)
+#define REG_EDMA_COMMAND(n)		((n) * 0x2000 + 0x2028)
 #define REG_EDMA_COMMAND__EATARST	0x00000004
 
-#define REG_ATA_BASE		0x2100
-#define REG_SSTATUS(n)		((n) * 0x2000 + 0x2300)
-#define REG_SCONTROL(n)		((n) * 0x2000 + 0x2308)
+#define REG_ATA_BASE			0x2100
+#define REG_SSTATUS(n)			((n) * 0x2000 + 0x2300)
+#define REG_SCONTROL(n)			((n) * 0x2000 + 0x2308)
 #define REG_SCONTROL__DET		0x0000000f
 #define REG_SCONTROL__DET__INIT		0x00000001
 #define REG_SCONTROL__DET__PHYOK	0x00000002
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

