Delivery-date: Mon, 18 Jul 2022 13:50:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPGd-00D3H1-19
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 13:50:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPGb-0000xr-33
	for lore@pengutronix.de; Mon, 18 Jul 2022 13:50:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/Q2rtkOHfBz4vtF5uh8EwqlRu3mBdy94UR2hWS8F7ug=; b=PZBrsFnBRPLFB1l697GjQQI3dL
	6pv5RCYaS/H6h9iBTVNE4nF+FGfOcGI4422lwpw0u6v1c1WG5jC5xg9Ti0+0G7DoKmnK1kC6vAUbm
	N3B4ct/alnzKxJLpzmL876U9uMniyOoABTVQW0WI5QWxLpNCM7PG+Q6o4etuKH1sNVQw20ygA9pY1
	wroUQu3hZEZ3igGuhDDL2DvK16FLmJ5EIbYQBZE6dMn6w3e4AzKUr8dHGlOjNPxSt9D+UlJU2Rxcz
	gw9VAiQy+FOsYKvdylC471vsj/+Fw+arze1GlaKw0fKyCLoBJv6d7L2L/ELc44axkeoUp9vt3TkBa
	N/ixqiAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPEw-00CyUS-9g; Mon, 18 Jul 2022 11:48:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPEr-00CyQ1-TW
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 11:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEg-0000lm-OA; Mon, 18 Jul 2022 13:48:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEg-001hcw-1y; Mon, 18 Jul 2022 13:48:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oDPEf-00B2oK-9t; Mon, 18 Jul 2022 13:48:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Jul 2022 13:48:23 +0200
Message-Id: <20220718114824.2632364-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_044837_985899_2C9993B6 
X-CRM114-Status: GOOD (  10.88  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] regulator: handle regulator_get_voltage(NULL) gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike recent versions of Linux, barebox represents the dummy regulator
as a NULL pointer and regulator API is supposed to anticipate operation
on a NULL pointer. When regulator_get_voltage was ported from Linux,
this was not taken into consideration, which leads to
regulator_get_voltage(NULL) crashing with a NULL pointer dereference.

Fix this by returning -EINVAL for dummy regulators. This aligns us with
how Linux would behave in this situation.

Fixes: 6ee83ce08b24 ("regulator: add regulator_get_voltage() to API")
Reported-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 1fb344656f38..472b26f3a0ac 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -574,9 +574,14 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
 
 int regulator_get_voltage(struct regulator *regulator)
 {
-	struct regulator_dev *rdev = regulator->ri->rdev;
+	struct regulator_dev *rdev;
 	int sel, ret;
 
+	if (!regulator)
+		return -EINVAL;
+
+	rdev = regulator->ri->rdev;
+
 	if (rdev->desc->ops->get_voltage_sel) {
 		sel = rdev->desc->ops->get_voltage_sel(rdev);
 		if (sel < 0)
-- 
2.30.2



