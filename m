Delivery-date: Mon, 30 May 2022 09:42:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nva2o-00F5RR-0o
	for lore@lore.pengutronix.de; Mon, 30 May 2022 09:42:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nva2k-0006rS-NE
	for lore@pengutronix.de; Mon, 30 May 2022 09:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qw8wiBzExUZGipDv12kFb6EjHIjBt4bnIv6xgq6999s=; b=XlZlA3i+x7noen
	c5kI0yAmTLXwl3cpNGSBKDx2QDnqAIIkr/rPb06nEOboBIPzcS6aQkSYqmsH96Xcxa+BuoeVVYo44
	e8pNGkHy2ovPGM1Q/RL+iXKhex6TIuAxIkHUDPsu8E4ZwqhVla3qFB5+PMRS/3Y9yBwOVFCO1wORg
	eXT7fG09WpI6d8Vwzj35zrC5r4UPFJulI/dV+1pp07nZ362aHRfuAd6ocMqi4XpNMwxLSqT+QRVZ0
	eBvsigIJuW6ZWEGDj9DRDVVNyIH/WLa/AhgCkZRLpWKy/jsJKNAH9DlvRMtTiH/x/3pYioAMB5pHs
	BwlwCTGbtlcZF40Ggtrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nva1W-005iZ3-KX; Mon, 30 May 2022 07:41:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nva1S-005iXy-3j
	for barebox@lists.infradead.org; Mon, 30 May 2022 07:41:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nva1Q-0006SF-TC; Mon, 30 May 2022 09:41:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nva1R-005PRt-IN; Mon, 30 May 2022 09:41:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nva1P-002eVw-4w; Mon, 30 May 2022 09:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 May 2022 09:41:02 +0200
Message-Id: <20220530074102.632341-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_004106_199352_2B02596B 
X-CRM114-Status: GOOD (  12.48  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND master] PBL: fdt: fix /memory parsing when #address-cells != #size-cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Due to a typo, this code assumed so far ignored #size-cells and assumed
it to be equal to #address-cells. This breaks using the
barebox-dt-2nd.img with some 64-bit device trees like the Raspberry Pi's.

Fixes: ffb0344b7410 ("ARM: Add generic device tree 2nd stage support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Sent originally as part of the Raspberry Pi 4 support patch series.
Split it out, so it can go into master independently.
---
 pbl/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index 51719698f269..8e4d1295074a 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -47,7 +47,7 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
 		pr_err("Cannot find #size-cells property");
 		goto err;
 	}
-	ns = fdt32_to_cpu(*nap);
+	ns = fdt32_to_cpu(*nsp);
 
 	/* Find the memory range */
 	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

