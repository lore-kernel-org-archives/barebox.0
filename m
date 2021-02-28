Delivery-date: Sun, 28 Feb 2021 20:09:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRI-0003SZ-4N
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:09:12 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRE-0000jf-Op
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PlJ4mkexRJQMS4KGrT349i6uA9K/hcR1cmrNdIkdVDQ=; b=MF25q3AnbMpXgjuu5nS3DZa+1x
	4opRtdwIiUpORiT/kfB/Q0l5+7TINKWZxY9rIpD9NRxH0KYW9ne5gSy3BmfbfByfaBBYaoZ1syT0T
	YYX4Wp+te+JMEmDOgN9TN3UThSrLHfcAredmsWJflBGX/hX5hitLnSnPlfWBibn7d5q+ToRgtfMgG
	wnRFVLfsIyVttS63qeliNvLlRSbl5MIu+gvGDC32+ItxHPHtCtk9RI6tc7P/lBD7kuPn4+NVbP7dS
	80bUDRFZGkd1F0K3mGcOp2bj+g7oik/fyX7dWbfCUN3lRYg1kYVacupK8+P5i+Du+6Egu+aMLGokg
	rOrnP0GA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRPd-0005vf-8d; Sun, 28 Feb 2021 19:07:29 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRPX-0005uM-M7
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:07:24 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 35EE5E0005
 for <barebox@lists.infradead.org>; Sun, 28 Feb 2021 19:07:17 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:07:05 +0100
Message-Id: <20210228190707.1451161-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140723_896850_6E1A6FAF 
X-CRM114-Status: GOOD (  10.69  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mtd: cfi-flash: fail gracefully instead of crashing on
 NULL page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Until this is fixed, add a comment and have the driver return with an
error instead of crashing on null pointer dereference if it's mapped to
zero.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 225b03ec3d23..ba0bd1b4ebdd 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -969,6 +969,10 @@ static int cfi_probe_one(struct flash_info *info, int num)
 		return PTR_ERR(iores);
 	info->base = IOMEM(iores->start);
 
+	/* TODO: either remap memory region or disable NULL pointer page */
+	if (IS_ENABLED(CONFIG_MMU) && iores->start == 0)
+		return -EPERM;
+
 	ret = flash_detect_size(info);
 	if (ret) {
 		dev_warn(info->dev, "## Unknown FLASH on Bank at 0x%p - Size = 0x%08lx = %ld MB\n",
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

