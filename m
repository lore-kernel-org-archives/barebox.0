Delivery-date: Fri, 19 Dec 2025 11:39:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsy-00DAj9-2B
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsd-0006ni-Ip
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnzwjEZnVqQqKJX7wl3I992c5MJRhT7PP7n4P7n1Nt0=; b=EYjcZdZn801F9d2EgpWzdaUcAn
	RS/UM/qJ+d+h1LenhrisPOXYz5uvFLh2PEbNMubBdUoOo0wXhV/mO3VG6yvLYy8Xyv3XOUsNmfYri
	7A3/UKlSeSkaq+z8ae08Y+1LY0F2s79hARbpwkAkjaPNEh59rj+vlSA/Zz7yP518Ig6leGoVEBTw2
	DMMhr5QvKjtcERBpBRitogMwC4hgwAmqht1u5YSndtOiuOjV4EQf1n+6/8/+M0GgVZ3Zy57Kuifk1
	Oxl9TUrkJS9MDJPY4TL78VhVoza40THWbuZQnwtKpo+se6idWt/WzhR6k3z0tSJLgrlsW6e4FWisY
	RhluvAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrS-0000000A6iL-1kvZ;
	Fri, 19 Dec 2025 10:37:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-0000000A673-1rNe
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MnzwjEZnVqQqKJX7wl3I992c5MJRhT7PP7n4P7n1Nt0=; b=kYsifaF96ZDvdz6adbHwGBce1O
	VGfvBg/TD/H/bW3RIdCsfmO2PrEu9PcbnJytvsE6VOEDSI+vb/3BCqcDYcVsG5AlREZGGJe1ICwbp
	h7qzOYTY7t4eww1tO3puAaZpKlxrLw3cRiim8JI9gK7WGJSEX3ASHaLE3api7q//arvShGmyO8RcD
	zHtJUNLcBbj4NXU/9wBXvr8p7DYj3uFUW0H0aq18h5sLgC/HFv5qNTjLxtRc7rTWP5Jxc7ilgCs5K
	2J7dRS/NmaVaI34U1Psh59/5VGM4+qZR+Qj44MErvQB0dSPNUxWqzMlUYXPhEdkF0Ki3n2YiCoFGs
	8Sgxgy5A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbDs-295k
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004fC-Ud; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVZ-2R;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-2QqP;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:21 +0100
Message-ID: <20251219101453.2806980-46-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_605459_B307D848 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [PATCH v2025.09.y 45/49] i2c: omap: fix probe on am335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM335x uses ti,omap4-i2c as compatible for the I2C device tree
nodes, but that compatible unlike its brethern has no driver data as
it's determined using the machine compatible in the probe function
instead.

device_get_match_data() returning NULL is thus expected and should not
lead to an immediate error.

Fixes: 20d87123a638 ("treewide: replace dev_get_drvdata with device_get_match_data")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251212153649.365215-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit b3c4f9a12b8c127f0ae48a5eab082090a60dfdf2)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-omap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 29378a96d722..c45483579250 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1076,14 +1076,15 @@ i2c_omap_probe(struct device *pdev)
 	}
 
 	i2c_data = device_get_match_data(pdev);
-	if (!i2c_data)
-		return -ENODEV;
 
 	if (of_machine_is_compatible("ti,am33xx"))
 		i2c_data = &am33xx_data;
 	if (of_machine_is_compatible("ti,omap4"))
 		i2c_data = &omap4_data;
 
+	if (!i2c_data)
+		return -EINVAL;
+
 	i2c_omap->data = i2c_data;
 	i2c_omap->reg_shift = (i2c_data->flags >>
 					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
-- 
2.47.3



