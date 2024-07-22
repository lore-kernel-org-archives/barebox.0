Delivery-date: Mon, 22 Jul 2024 19:07:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwV9-001sJ3-2h
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:07:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwV9-0002yD-92
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:07:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=boRl6tdkzX0unDr8oRt/AwEQ/yFhUMcfvutcx4GH1xc=; b=Zcv+0ejGK5//OaJS6XQJFcr11X
	p3ZrOf2/mhPIPcrCGW/99Wx+fDFznQl1b8EHmoNLo20Umes2qXsie9strLvmkQjYA5uf1pi2ZBTdp
	irvY7/AiV5bKUV3P+rvBmYOqzIGZPeAbloH/UeFSdCP1E1ECNQu90CE8htKtUaJsGxDCs4et7oMT9
	jTD/q3rchPr8CVhSr/gck64L7xD9nqAz9Cc3H4XP5bopQp6yMS+mCPct50iMJ2NxgZboS6ezrZVil
	WChiCItGNoT/Q4bsI93Q7f1L1/QRQxSE6EgSsFrVcLYn3FZi/YrVL7Z+IoN1uqiEsqKNujYLbUIWi
	/iKiD3Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUj-0000000A9HE-1eoF;
	Mon, 22 Jul 2024 17:06:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUg-0000000A9G6-31Ar
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUf-0002iT-DZ; Mon, 22 Jul 2024 19:06:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUf-001Qkr-0g; Mon, 22 Jul 2024 19:06:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUe-00GEMS-2z;
	Mon, 22 Jul 2024 19:06:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:35 +0200
Message-Id: <20240722170635.3868432-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100638_779282_1462FFC8 
X-CRM114-Status: UNSURE (   9.84  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pstore: implement devinfo callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The layout and memory region used for ramoops is normally described in
the device tree, but for barebox, it's instead specified via Kconfig
options.

To make it easy to check what parameters ramoops was initialized with,
add a devinfo callback and a resource mapping the region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 4cdeca904fad..a2b11a02eeff 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -517,6 +517,18 @@ static int ramoops_of_fixup(struct device_node *root, void *data)
 	return 0;
 }
 
+static void ramoops_devinfo(struct device *dev)
+{
+	struct ramoops_context *cxt = &oops_cxt;
+
+	printf("ramoops layout:\n");
+	printf("  record-size = %zu\n", cxt->record_size);
+	printf("  console-size = %zu\n", cxt->console_size);
+	printf("  ftrace-size = %zu\n", cxt->ftrace_size);
+	printf("  pmsg-size = %zu\n", cxt->pmsg_size);
+	printf("  ecc-size = %u\n", cxt->ecc_info.ecc_size);
+}
+
 static int ramoops_probe(struct device *dev)
 {
 	struct ramoops_platform_data *pdata = dummy_data;
@@ -629,6 +641,10 @@ static int ramoops_probe(struct device *dev)
 		of_register_fixup(ramoops_of_fixup, pdata);
 	}
 
+	device_add_resource(dev, "mem", pdata->mem_address, pdata->mem_size,
+			    IORESOURCE_MEM);
+	dev->info = ramoops_devinfo;
+
 	return 0;
 
 fail_buf:
-- 
2.39.2



