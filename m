Delivery-date: Thu, 25 Nov 2021 17:09:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJV-0001ZI-0v
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:09:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHJT-0000IF-ST
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:09:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FXlwZLuYErrPSi4Xjwh7paR9RPebT3lSqGwf9OQCwQs=; b=2OMl1zStdNOps6
	hrjgJFsq9sztW1Ood2X1EGf7dDf1J7obTGzADl6gpvRk/G+d1rU1x4IHggsfL0nh6kFbu/ji/RmjN
	yyfIa4s/TONWBGyvT0ZsQa9PbLK7pFWCxUcWpVm+b5pUmSx5l6/jhcvWSIudHwQC7kVQa7+6qCyc2
	SRrmUoiPPDMmCGKZRktrEJyyN+79qnFbq0V1urbsfrPUV9mrWmnL4J8Z2HefO7iKKXFje1iA9B0Fp
	vUqzTgw2L4b7eJ1wtPJDNUZBoBu2ONhudBtLKVfzidwBI//DmTSjh5VlsBf9yHQODlIBWLcu3gt+Y
	oDKiH1W4duW/GFRcN1EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHGm-008C1C-TK; Thu, 25 Nov 2021 16:06:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHGh-008C0L-Jf
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:06:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHGg-0008Qm-Bv; Thu, 25 Nov 2021 17:06:38 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHGf-00G3ys-RR; Thu, 25 Nov 2021 17:06:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:06:36 +0100
Message-Id: <20211125160637.3828394-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_080639_681697_047D3C3E 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] of: skip machine device creation on subsequent of_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_probe may be called more than once, e.g. after oftree -p or by board
code after fixing up device tree. This currently leads to a harmless,
but annoying error message about machine already being registered.

Avoid this by creating the device only once.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 910348fb81b9..ec4f9327036c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2333,9 +2333,12 @@ mem_initcall(of_probe_memory);
 
 static void of_platform_device_create_root(struct device_node *np)
 {
-	struct device_d *dev;
+	static struct device_d *dev;
 	int ret;
 
+	if (dev)
+		return;
+
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
 	dev->device_node = np;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

