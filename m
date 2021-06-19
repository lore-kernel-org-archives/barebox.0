Delivery-date: Sat, 19 Jun 2021 06:56:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1X-0004cs-DQ
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:56:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT1V-0001sv-Oh
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:56:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsTM0n2cj99e87Wa12mrxJGcJ0w6rBzTVCNH0n+c96c=; b=heAMEBcwNKSu8Y
	gAut1p95vpSldU1CZh3MhKmQwHDasUQKRDImfAKyJ+ghLdG4tHaJQHSOvKQNLyqMhtmeBZCGZTFa4
	VBprA2WgWMa+rusDqcp0bYsyxSFzXUM6EfY3NaJTAwP0GK9AVcqeuAF+gnAWLTQHXXWMkfgkVhh10
	MkvNUb2YrAc0nIPi34piCATuBVPhaJLEtG8SSZ1kHWB7rES+KYC3vok9xTr6r6ifQGABljR0G+4g9
	XscpI3JJVsBc1pB7P6L4olr1itndead+V4+kqtO3CmuPyXmw2WYROv9HvVxrpNlz5OvkaNSXk+iBz
	YPC0E5gqUEhLyKoCcV4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT03-00GJgb-B6; Sat, 19 Jun 2021 04:54:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwy-00GHoV-Oz
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008ME-Cl; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LG-Sr; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:43 +0200
Message-Id: <20210619045055.779-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215120_864825_A29BCDF0 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/29] mci: allocate DMA-able memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Doesn't yet make a difference, but in a future commit, RISC-V will use a
64-bit alignment for the sector buffers by defining a custom dma_alloc.

Prepare for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a094f3cbf522..b174067a7fbc 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -21,6 +21,7 @@
 #include <of.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
+#include <dma.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
@@ -1852,7 +1853,7 @@ static int mci_set_probe(struct param_d *param, void *priv)
 
 static int mci_init(void)
 {
-	sector_buf = xmemalign(32, SECTOR_SIZE);
+	sector_buf = dma_alloc(SECTOR_SIZE);
 
 	return 0;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

