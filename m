Delivery-date: Fri, 05 Dec 2025 13:20:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUnm-008CUI-1c
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 13:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUnl-00030O-UM
	for lore@pengutronix.de; Fri, 05 Dec 2025 13:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OH8oTuYPhzb1MafmgAlP6IA5kupRP6AH1Y451GP2X5k=; b=beBXYgcWehhsIswbODU8wRJJeY
	4ygxsjcUggrDTcMvDFlG3aDhLhH9UGSbhNbUhKwTJzHqZ88lhWsdAcL1Nm+FpIEpCYi8NxWVGcJ3H
	16zxqUtNTbrJxFP/UpYzXKXZlqISdAI8Y1nHfIHF7pT5ZH8I3CLnWfofSBne/bN01A9FhFxm3TonK
	y5YSHq0W1gDaSSVyIPVQeGZeme67jI6VW4z/UloWc3pftD64YZRcDd7zpNU5auXhpMDahWonB88LT
	ZBQYjCoX5zkq4XOcxBj5zU33gBFP64ps3OMFy3cXY1rCA9J4ZfBfrjkZUL3NWhz27ork6lD99CDSx
	e9S56Mzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUnJ-00000009SuJ-3M1r;
	Fri, 05 Dec 2025 12:20:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUnG-00000009StM-3YrS
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 12:20:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0002pD-Cb; Fri, 05 Dec 2025 13:19:57 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0047af-0Y;
	Fri, 05 Dec 2025 13:19:57 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0000000GVZd-0Pyx;
	Fri, 05 Dec 2025 13:19:57 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 05 Dec 2025 13:19:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-gppll-v1-2-bcd7b0f0408a@pengutronix.de>
References: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
In-Reply-To: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=eLyBDBGX3USv4X1oz7K8uDzPpdXnn1VbzPxP1RNjGsU=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpMs3sJlhYCQqXdakUhQtBmlRPhYIKoWZ3JJhP5
 FX6mI/QKF+JAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaTLN7AAKCRC/aVhE+XH0
 qxLED/9u5axYbZA3lf+1migSlaBpM+JZ3y/GvsMDa1Hg44GfnIjSTJdymLRoCLg7YxXtOv2h7dZ
 zeH+BpAiRxXX1nVtqzVaWGXT6zfpl4pdVRQZD87tkWX0JbIhNf5VHNdarXDQaUEZ9ihGl/6OQvi
 UPEHv9dteRNtu+ZZXvRVJmyV+/mGuQqCQa+T1NoU4sci+Cv5uR7bVXIbJ10vzPBy90I5zp3ktUi
 c929azypBUVexGSMvKhCWdSkq0FrFtHWVT1ATLUJe/w1DqQAEt1JEz8tqMGdYYUVPWD+YERmxoJ
 JiLyyoWk9qFKwq9Y10yeT5KUWJNVJFvTMO67DvibBLBcjjeiE+DVrdeN05KlEso/C+sEzKgZKMP
 XfWE4ERFe6BbXMUIo5jy87ks1hAplwx50OvG7Q4QF06mmtbuUjK458/d1hBYrj9JhSGdjOvkRt8
 p7IsVJNjthSLDOVmAysayCqFLyWFLX8OPc9cBc5EMBNicTkz5kMyJc2veC7xW9KLRQdjIKP1gV8
 hgKlstC+tT3WP0RlpEkPZJltL64ak2K5jHppi5fUzAMqT8mJOe8+F3lw1DesfhnJrOIoQ5b1MEw
 g9inVYuM4x+5S97cZbrh5pyKCW4HHyLdPonjb8+e1TN4dlOvQ5V4Jh/9WL+SJx9vnYOcLzGStNe
 wrq2RI7qW+SOLdQ==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_042014_895598_F745D339 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] clk: imx: clk-fracn-gppll: Add 135MHz config for video
 pll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the 135MHz frequency support that will be used by video subsystem
on imx93.

The 135MHz can be used to drive the pixclock of 9MHz.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/clk/imx/clk-fracn-gppll.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-fracn-gppll.c b/drivers/clk/imx/clk-fracn-gppll.c
index 39a9ed06965248d49f41a908b82dc13dbb8017fc..339ffaf54b7b87ebed6b07ceb945ae0c09f32747 100644
--- a/drivers/clk/imx/clk-fracn-gppll.c
+++ b/drivers/clk/imx/clk-fracn-gppll.c
@@ -59,7 +59,8 @@ static const struct imx_fracn_gppll_rate_table fracn_tbl[] = {
 	PLL_FRACN_GP(400000000U, 200, 0, 1, 0, 12),
 	PLL_FRACN_GP(393216000U, 163, 84, 100, 0, 10),
 	PLL_FRACN_GP(355600000U, 177, 80, 100, 0, 12),
-	PLL_FRACN_GP(300000000U, 150, 0, 1, 0, 12)
+	PLL_FRACN_GP(300000000U, 150, 0, 1, 0, 12),
+	PLL_FRACN_GP(135000000U, 44, 1, 1, 0, 8)
 };
 
 struct imx_fracn_gppll_clk imx_fracn_gppll = {

-- 
2.47.3



