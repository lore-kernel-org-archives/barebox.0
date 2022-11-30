Delivery-date: Wed, 30 Nov 2022 15:26:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0O2W-006Fw2-3P
	for lore@lore.pengutronix.de; Wed, 30 Nov 2022 15:26:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0O2V-0008UM-Hk
	for lore@pengutronix.de; Wed, 30 Nov 2022 15:26:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OUHpj8P/6bEbTKtISVl7nUs++X7exElpqZCyjmKvy0c=; b=OgBFowe/O+CXcyPXuMpZN1EPB/
	+rmRJUQTHIkvEMOLPOJZ9Q7aLCGzpJ2BHtS4fuxvq+xXhz5KQv1CMBmF37z/D9ev+uzeA6zMiPwOf
	I10YDt7iqp+jYavITW+jUpp1efUJpqwKiIU0/21vopViVRS1261teJ112hbQ6yuiY0s65B7TjGlAh
	VLnyQsMj5pR9Tp+e/i4AIPUth8E9ZnU7QWMlZknnmSBwpYxBIRma7ujTnC5EsPqKw4mT+SdL9qIp5
	5gN0dL6zn4tRyZ1RjajwCd0Yvsh8hdgyNLLv905uAKWV8wpl1bp3DdXU70gvn6GFOGxgApNGlyKt2
	3zG/NaEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0O0c-00GrGF-ST; Wed, 30 Nov 2022 14:24:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0O0Y-00GrBc-Fk
	for barebox@lists.infradead.org; Wed, 30 Nov 2022 14:24:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0O0T-00085J-HT; Wed, 30 Nov 2022 15:24:13 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0O0S-001KPe-30; Wed, 30 Nov 2022 15:24:12 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0O0S-00BdWL-3e; Wed, 30 Nov 2022 15:24:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Nov 2022 15:24:10 +0100
Message-Id: <20221130142410.2773477-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_062418_558462_11BA6F28 
X-CRM114-Status: GOOD (  11.16  )
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
Subject: [PATCH master] regulator: rk808: fix misplaced DCDC_REG5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver was written to mimic existing stpmic1 regulator driver, which had
the implicit assumption of a 1:1 relationship between of_match_data and
regulator configuration with same indices.

Yet DCDC_REG5 was not at the same place it was in the rk_regulator_cfg
due to likely a copy-paste mistake, leading to possibly the wrong
regulators being controlled. Fix this.

Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/rk808-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 39eadbd3ebe5..57b024cef33c 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -829,6 +829,7 @@ static struct of_regulator_match rk809_reg_matches[] = {
 	MATCH(809, DCDC_REG2, DCDC2),
 	MATCH(809, DCDC_REG3, DCDC3),
 	MATCH(809, DCDC_REG4, DCDC4),
+	MATCH(809, DCDC_REG5, DCDC5),
 	MATCH(809, LDO_REG1, LDO1),
 	MATCH(809, LDO_REG2, LDO2),
 	MATCH(809, LDO_REG3, LDO3),
@@ -838,7 +839,6 @@ static struct of_regulator_match rk809_reg_matches[] = {
 	MATCH(809, LDO_REG7, LDO7),
 	MATCH(809, LDO_REG8, LDO8),
 	MATCH(809, LDO_REG9, LDO9),
-	MATCH(809, DCDC_REG5, DCDC5),
 	MATCH(809, SWITCH_REG1, SW1),
 	MATCH(809, SWITCH_REG2, SW2),
 };
-- 
2.30.2



