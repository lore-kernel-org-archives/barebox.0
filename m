Delivery-date: Fri, 17 Feb 2023 18:32:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ai-00AI1R-Cu
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ag-0004dg-3T
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6xhqnYeIho5fzZRIMeVSV9M0TZSdqu2sfcwqrLMQnKk=; b=rGwXicrOkXFPDRD8gGr9N4H7Nu
	0k5KYR+N4rML9TCIyBtlZ6zlufO5DXGfrxBlqCtQLx4HMo2/RCn1GSjH9N6FiepFulhdqIs7ytoMa
	ZclS25/Ja2kuYOchcqouxebQ8nM9DuyReTOuoP5gAboPLS8ywfBDHlMunfad3FwVYDwAk2l198M8Q
	a3axRg7gFCDP6HCyI06F4zH7F5Fm/RobBj2/YYuFIOETzZFP3Cl949LC61EJDVavlBFAErdaR/i0h
	u0fuAd+wV9yfpBugreG67awDoDDeTMe4Yivw8rKo4eFab0oBUl/hAYialfmcVY8GkGgMtKYPEbvbF
	aRxukXbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zl-00FFJu-Py; Fri, 17 Feb 2023 17:31:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Za-00FFFm-Oj
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-0004Af-FV; Fri, 17 Feb 2023 18:31:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZX-005dTP-Fv; Fri, 17 Feb 2023 18:31:00 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixh-14; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:44 +0100
Message-Id: <20230217173057.1839835-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093102_836685_557A2ED9 
X-CRM114-Status: GOOD (  10.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 07/20] ARM: i.MX51: ccmx51: support newer device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer device trees have renamed nodes to adhere to schema. Add the new
node names as well. Proper way would be to add aliases in barebox DT and
reference those, but given that I can't test my changes, do this small
change nad hope the new names are stable enough.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index cbf06e6cd642..4288efe2e0aa 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -189,11 +189,15 @@ static int ccxmx51_board_fixup(struct device_node *root, void *unused)
 	if (!ccxmx_id->eth0)
 		ccxmx51_disable_device(root, "ethernet@83fec000");
 
-	if (!ccxmx_id->eth1)
+	if (!ccxmx_id->eth1) {
 		ccxmx51_disable_device(root, "lan9221@5,0");
+		ccxmx51_disable_device(root, "ethernet@5,0");
+	}
 
-	if (!ccxmx_id->wless)
+	if (!ccxmx_id->wless) {
 		ccxmx51_disable_device(root, "esdhc@70008000");
+		ccxmx51_disable_device(root, "mmc@70008000");
+	}
 
 	serial = basprintf("%08x%08x", 0, boardserial);
 	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
-- 
2.30.2



