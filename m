Delivery-date: Fri, 19 Dec 2025 11:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsB-00DAbp-0A
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrx-0005wj-Dg
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SY4+zU/RwwiRBErEi76G2UtykrR59/NNaJW+Bkr8VQI=; b=Ui41bTqb/qSQfoW0Te6f8f9+VN
	AHgs0ZH6Cp7N194hhgWRNqvzNTzF3BBbz7DNybxIaINW1FT9eEYgfhXbFNyZBnwMufJge+sz1fJXM
	wtC9DoLaTwY50eKzEPsdv+XyobyJtYNiiIGZBzpqPYJnGnC+Vy0Q8HgtXRyqudvUTF72+yCMY9rPB
	W7pM+rq+nfs1TIKOlQaiXmcnLZZoL4Vzzcd42Fl0hbL6RuKdjZw5dGHK/KYfhH5uBFC28XKAirLIt
	hkbaRWjslU2LGHo8AZbU5G2V0bATTPPwIQgsX5zTm5HZPX7pP04fwsevI1jg34JZzDz/ZJhGBvrQU
	AcpeEAdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr6-0000000A6Gf-2PJK;
	Fri, 19 Dec 2025 10:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqt-0000000A5yZ-3dqN
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004g3-8A; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RVl-01;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-2oiI;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maudspierings@gocontroll.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:23 +0100
Message-ID: <20251219101453.2806980-48-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023651_919956_F07D7E9F 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 47/49] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

After adding the imx8m-blk-ctrl driver errors started appearing about
the genpd device already being registered.

incorperate some extra device details in the device name so this
possible collision goes away.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit e2d7e032281158b54541392b4d8108de204137a1)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index d60a00f5735e..66ad6d05e815 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -481,11 +481,11 @@ struct device *genpd_dev_pm_attach_by_id(struct device *dev,
 	if (!virt_dev)
 		return ERR_PTR(-ENOMEM);
 
-	dev_set_name(virt_dev, "genpd");
+	dev_set_name(virt_dev, "genpd:%u:%s", index, dev_name(dev));
 	virt_dev->bus = &genpd_bus_type;
 	virt_dev->parent = dev;
 	virt_dev->of_node = dev->of_node;
-	virt_dev->id = index;
+	virt_dev->id = DEVICE_ID_SINGLE;
 
 	ret = device_register(virt_dev);
 	if (ret) {
-- 
2.47.3



