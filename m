Delivery-date: Mon, 16 Jan 2023 14:48:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPr4-00Dbz3-5A
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:48:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPr1-0000kK-3g
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:48:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CrtNyLbN1hSZa5MHtxVbcPrA6KwIOJLMLcXspDty1v4=; b=BVaqGVCWpoT5qeGxC0s1CslT+a
	VZ4TNhOrsoNxma88GCwloUtXHQLw0JFWtScUXQrg51UqG3wg4znlcG2DvavaepHZ4VHwp23jiXiGV
	qKSGcQEdVu8gfHFG9WI4GAg+A/SZdswVbp21q4cYcztgJgWLPO0pFqdgx23CH4f0V9eWshqlCO9Qa
	vXHNMwUy6EluK+Czgges6dQQ/cr3Xq3XFxPb1HC9JA/z6FNUlZL0RD8udBcDLoRYS5NnxsPFTH8eU
	bOEaUKf4EJA2YHUuQ+iu3RsiIQ0FwzypdX3tVDCUqD8OZcP83Jmgbm8VCn0LOlgUTyN8i7irXs21T
	kIYUxF1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPpb-00AZCn-4F; Mon, 16 Jan 2023 13:47:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPno-00AYJr-8j
	for barebox@bombadil.infradead.org; Mon, 16 Jan 2023 13:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CrtNyLbN1hSZa5MHtxVbcPrA6KwIOJLMLcXspDty1v4=; b=UfuNVkInAjKvh5EGTfh0AiToIm
	YViPC1nhQpSBGTlfgajb8XEoRlRFkLGeEK7RAgB9MgJ3PMjAsfIq8cS8Zrv8evf8fG0QLJQy9HppM
	xPQXTiOg4y4nHc9+1hq+8sxF/qnonjlTahJotJq+WGyLKnWbheZfTGZpCKelWMDcEGESYm57HLdJQ
	XbV0cZCtSn37XxTP7S6nDw93nYjJaA0xBnFNr2Od4DBUXhrL20uD3CqSaj5dL+7YX06M1Q+85i/aL
	MBJ/TmyGt7KPFFIygQtQ/2l+m50MKPF+ZGnqT2kWByGLsUQqcZn9IvDAUClIQjHX+l8Rn4WcSTc4M
	LNMi9Ndg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pHPnU-005c48-2K
	for barebox@lists.infradead.org;
	Mon, 16 Jan 2023 13:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnR-000822-Ax; Mon, 16 Jan 2023 14:45:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-006SKm-PA; Mon, 16 Jan 2023 14:45:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyK-Qe; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:57 +0100
Message-Id: <20230116134501.2006391-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_134514_386932_DC5371EC 
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
Subject: [PATCH 5/9] net: dsa: populate struct dsa_port::index/dev members
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike with regular user ports, the CPU port doesn't have a dev or index
member assigned, which leads to subtle breakage porting Linux drivers.
Use the new dsa_port_alloc() helper to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index ea1a6a699698..c1430a93615b 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -317,7 +317,6 @@ static int dsa_switch_register_master(struct dsa_switch *ds,
 {
 	struct device_node *phy_node;
 	struct phy_device *phydev;
-	struct dsa_port *dp;
 	int ret;
 
 	if (ds->edev_master) {
@@ -348,9 +347,7 @@ static int dsa_switch_register_master(struct dsa_switch *ds,
 
 	phydev->interface = of_get_phy_mode(np);
 
-	ds->dp[port] = xzalloc(sizeof(*dp));
-	dp = ds->dp[port];
-	dp->ds = ds;
+	dsa_port_alloc(ds, np, port);
 
 	ds->cpu_port = port;
 	ds->cpu_port_fixed_phy = phydev;
-- 
2.30.2



