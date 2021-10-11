Delivery-date: Mon, 11 Oct 2021 10:05:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJf-0007SL-Bv
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJe-0006wU-7S
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS47/98m707CXE5PvY1vJ7NFIlTqvqSmbt9v5L002GE=; b=bBMoHTVJkXlHhl
	lXvasLGtuFO5Gp3KMhc4LVRF5k4x/Hjo3wWspeOEpTmilWaNq9ZZILmWskq8CbBMUcovkyk8qffED
	ast8G7l1jERqsz9OLV11an59z920Cm2EDMKZoUidtY24tj8Yow3GHt2aNYS8rQO9fCPInyvjV45iD
	r96hJXBUnvc75xWJv/IHe2+9PLfOm8RbeVJsGYYsdL2t7D0vjVSqeK2bX2PN50F56lFh150sfrK6w
	60JwcxZsqxSFEghLHDqCUh/usXnS7e4XJUhP5Ts+XD/tjZIjr+JWvhV09WJ37MndRw/P/Q7msxkYJ
	TGd99C0s2rq2pr4r6VaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqIN-008Ddh-Oe; Mon, 11 Oct 2021 08:04:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqI1-008DR5-Au
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:04:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHk-0006Dp-2L; Mon, 11 Oct 2021 10:03:48 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009i2-8w; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:42 +0200
Message-Id: <20211011080346.37197-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010405_419219_3DB9F4C3 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] usb: dwc3: reset controller before using it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some dwc3 controllers have a reset assigned to them. Request it and
reset the device before using it.
Linux upstream driver uses an array of resets here, but in barebox we
currently do have this functionality, so for now use the first reset
only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 11 +++++++++++
 drivers/usb/dwc3/core.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 04b700d12d..f618435cb6 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -14,6 +14,7 @@
 #include <dma.h>
 #include <driver.h>
 #include <init.h>
+#include <linux/reset.h>
 
 #include "gadget.h"
 #include "core.h"
@@ -1125,6 +1126,16 @@ static int dwc3_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	dwc->reset = reset_control_get(dev, NULL);
+	if (IS_ERR(dwc->reset)) {
+		dev_err(dev, "Failed to get reset control: %pe\n", dwc->reset);
+		return PTR_ERR(dwc->reset);
+	}
+
+	reset_control_assert(dwc->reset);
+	mdelay(1);
+	reset_control_deassert(dwc->reset);
+
 	dwc3_coresoft_reset(dwc);
 
 	dwc3_cache_hwparams(dwc);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index f2f7a311d1..94cc594920 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -1003,6 +1003,8 @@ struct dwc3 {
 	struct clk_bulk_data	*clks;
 	int			num_clks;
 
+	struct reset_control	*reset;
+
 	struct phy		*usb2_generic_phy;
 	struct phy		*usb3_generic_phy;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

