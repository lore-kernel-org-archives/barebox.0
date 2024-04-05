Delivery-date: Fri, 05 Apr 2024 12:13:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsgZZ-00Ccho-0F
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 12:13:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsgZY-0007Qb-GW
	for lore@pengutronix.de; Fri, 05 Apr 2024 12:13:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rUaOnMrvxs3uTR2FxzRVK0u1sjNSrPWJRN0Yk2Wg+Jc=; b=ufk1YOor0vno2KDUyjMSNMJKz6
	3fcdTZl+9RCFocYevu8gX8DLQgep9fxjrvBCdJsaL7IOeSMZpNo5pGoOhmJ5uTjmhMmgexWEpSpME
	2Xu+9nVevPiLIACVjETqI0/Z4N/C+wdlzVMYGczAbKlsUtlqhkAtr/jFcA2CXONRa+tnjdaiYK1Rl
	OVzq0ZfKk8Trc2ULSSbvK9TV6QKegJomDG35zYnSj5Ydj2vdKu3EKQstzNi0vJkdgJiPxB/oF7RzA
	Ty9dA9pow/FFr/SI0HogerRLis3BHw6SjPXcAYyrCIZz9+TbKBn1kNyAq1cY08diA4eWBYeEwLxiC
	cCgXGipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgZ5-00000006NCE-3dr6;
	Fri, 05 Apr 2024 10:12:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgZ2-00000006NBA-3S6l
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 10:12:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgZ1-0006sA-Ff; Fri, 05 Apr 2024 12:12:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgZ1-00AY50-3J; Fri, 05 Apr 2024 12:12:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgZ0-00AaZ2-3C;
	Fri, 05 Apr 2024 12:12:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Apr 2024 12:12:50 +0200
Message-Id: <20240405101250.2523616-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_031252_991060_0ACA9659 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: mecsbc: fixup /regulator-sd device tree node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MECSBC prototype board has a bug which makes the 1.8V SD mode
unusable. Add a fixup which sets the regulator-min-microvolt property of
the SD regulator to 3.3V to prevent the Kernel from going into 1.8V.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/protonic-mecsbc/board.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boards/protonic-mecsbc/board.c b/arch/arm/boards/protonic-mecsbc/board.c
index 3ba8fb8d1c..56f7ca393a 100644
--- a/arch/arm/boards/protonic-mecsbc/board.c
+++ b/arch/arm/boards/protonic-mecsbc/board.c
@@ -90,6 +90,24 @@ static void mecsbc_process_adc(struct device *dev)
 	pr_info("VIN = %d V\n", mecsbc_get_vin_mv() / 1000);
 }
 
+static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
+{
+	struct device *dev = context;
+	struct device_node *np;
+
+	dev_info(dev, "Fixing up /regulator-sd\n");
+
+	np = of_find_node_by_path_from(root, "/regulator-sd");
+	if (!np) {
+		dev_err(dev, "Cannot find /regulator-sd node\n");
+		return 0;
+	}
+
+	of_property_write_u32(np, "regulator-min-microvolt", 3300000);
+
+	return 0;
+}
+
 static int mecsbc_of_fixup_hwrev(struct device *dev)
 {
 	const char *compat;
@@ -103,6 +121,9 @@ static int mecsbc_of_fixup_hwrev(struct device *dev)
 
 	free(buf);
 
+	if (mecsbc_data.hw_id == 0 && mecsbc_data.hw_rev == 0)
+		of_register_fixup(mecsbc_sd_of_fixup, dev);
+
 	return 0;
 }
 
-- 
2.39.2



