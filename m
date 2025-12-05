Delivery-date: Fri, 05 Dec 2025 13:20:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUnm-008CU7-0o
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 13:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRUnl-00030D-No
	for lore@pengutronix.de; Fri, 05 Dec 2025 13:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XbHfKmnz2C8hw7qULMrX3Q9C/p+MUVaWE4ToKbDhPUI=; b=csHlxK1VcbIncNQp3JrhhW3mgM
	eo92svVC5Os6fk2F0JU+fmZLFXVhsZPgY9phVZybtao4ZdPqvPfTmFw354YGwOQ+RV7s9d2YWBl2e
	MqWmCFPCRRK6UtYIAiYeAOdRlpWEGAdzqciBhH7YcW1MGJwZ3xRvkjJMIATqBuR4Ad4k+6u3zkp0y
	S0hHz/FdVPC5b0QWLl8V83VOPNWMZi26Vao771NqTzeX69GfSoDNCoexnkOaZl5NJyRfPmBajLz8C
	1cDpesTuDfEkHwSWLHk0Jdn+wmF5LCKhHSOH8ehRMZ5ui1b9/+c2yZUX/nCXfwB69EqHP/oS9hZvB
	9kv04zcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUn6-00000009SrT-0u4A;
	Fri, 05 Dec 2025 12:20:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUn3-00000009Sqo-1gud
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 12:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0002pC-C1; Fri, 05 Dec 2025 13:19:57 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0047ag-0X;
	Fri, 05 Dec 2025 13:19:57 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vRUmz-0000000GVZd-0PS3;
	Fri, 05 Dec 2025 13:19:57 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 05 Dec 2025 13:19:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-gppll-v1-1-bcd7b0f0408a@pengutronix.de>
References: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
In-Reply-To: <20251205-gppll-v1-0-bcd7b0f0408a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=928;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=2RoHqCUu00ZCSHq0BnuIEe5By634z8BFrT55aGHYAZ0=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpMs3s+6Cqnxptkq0EGjAZ7ZAe66SKSMTWSSc+E
 eNJreUyCYiJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaTLN7AAKCRC/aVhE+XH0
 q/KmD/4nspPtRHCw7h70O3SWcuE61EX+XUfMjAhqC0c9C0Fem4zI1PLRxP/GZishSrfwZCdKq3V
 Ay26gIzBuiC7vg19YA9726cFASiDj2swqGre9UWFJiRHM25CG7GbYH5dZG/cwJeLLLvrqtRF58k
 3tQknNU0V+kiz2m+8pwZqimxUqC57B+1nK/qAuoYp15Puo2Y+R34GGivtHbzpIVwGZ7k6n0/6U/
 t5nwKFELtQKTFezxDEkQ5Wf93gS8b0cy7Bl68ZuG/kuVusGD/qYy5i5q+aminuK4xKJokZNjn8N
 /8SSAy6fzOhJCP7C7TgU6CpEIvqssyDHpylgYxiZjH5OGLCaMouALOEMopxE1DSabmplTXNfJii
 88JOBUzimpLqRS/dGohMH0UPj5Cb+Y78aIexWeWIZ5VWci/0CwtX9auQVNExlCtnLYGTsCoQMmb
 4JeXZ13CrbdN1Kcvs5dwCc5jgb9+AdSf2V4pKiYWcIdmArg7F31E5E0LHzO6aysP975MWqCpB8h
 OK/5oIIUPuHRrXoe5RCGLltpWwkngce8sbHGO6V+IU40dRMN04wiuhakceMQdaVyyYm5ZPPabCA
 ky3Ls51ZvVvdLN1dG99HkJ3a8uJd5YgRsivkxfkKQp5nZFZx1F4gqT5sE+rkYYYa6VdUX4fj6N8
 JPHHjqMmjYw4O5g==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_042001_447080_47531AE7 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] clk: imx: clk-fracn-gppll: Add 355.6MHz config for
 video pll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the 355.6MHz frequency support that will be used by video subsystem
on imx93.

The 355.6MHz can be used to drive the pixclock of 25.4MHz and LVDS Clock of
177.8MHz.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/clk/imx/clk-fracn-gppll.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-fracn-gppll.c b/drivers/clk/imx/clk-fracn-gppll.c
index 24e66fd65fbd822b91a7b8975a1b88de20243df1..39a9ed06965248d49f41a908b82dc13dbb8017fc 100644
--- a/drivers/clk/imx/clk-fracn-gppll.c
+++ b/drivers/clk/imx/clk-fracn-gppll.c
@@ -58,6 +58,7 @@ static const struct imx_fracn_gppll_rate_table fracn_tbl[] = {
 	PLL_FRACN_GP(445333333U, 167, 0, 1, 0, 9),
 	PLL_FRACN_GP(400000000U, 200, 0, 1, 0, 12),
 	PLL_FRACN_GP(393216000U, 163, 84, 100, 0, 10),
+	PLL_FRACN_GP(355600000U, 177, 80, 100, 0, 12),
 	PLL_FRACN_GP(300000000U, 150, 0, 1, 0, 12)
 };
 

-- 
2.47.3



