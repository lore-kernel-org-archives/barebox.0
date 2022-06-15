Delivery-date: Wed, 15 Jun 2022 10:05:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1O1O-002qSO-RG
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 10:05:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1O1O-0003DQ-Tb
	for lore@pengutronix.de; Wed, 15 Jun 2022 10:05:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u0E40ZAPXJ64rL4d89Ov3etUPCDQek0+F3QZaGz/mJk=; b=dlBVj3/puSriL0dsnC9fc+PuZ+
	n33bFttl/X93Y3KfhdQjzNhODwwO4YEyio45er6kfZVNGZ2l0cx+mX/AlG7af9JKQq4FxzqGU2ccp
	WGFCKzBns7fSGgfC/Ksrsg5OLV202QKpkv3ZWyKEghZf5RZ8KBhahSOmr2fMIk1eJIe9kVSXFVNnR
	5VPYzA3TgwR+mZDgQbVzSBlabQFm1nq+ye3CKZloUxerwhEUyEszepL9vdxv3D7cAu3B2CnERP2I9
	+XziDntbvHpv3BbMoEOSRkB2IHTIDATsr4WwoVRrfd9qe4+dee23o3geMgs0qgGWZEMg+x6afQMdK
	CWNRmDjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Nzi-00D9MS-BL; Wed, 15 Jun 2022 08:03:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Nzd-00D9KJ-6X
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 08:03:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o1NzZ-0002df-4w; Wed, 15 Jun 2022 10:03:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o1NzX-000dka-1l; Wed, 15 Jun 2022 10:03:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o1NzX-0040Q7-Ia; Wed, 15 Jun 2022 10:03:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Jun 2022 10:03:05 +0200
Message-Id: <20220615080305.954879-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_010313_282474_48B7CCA5 
X-CRM114-Status: GOOD (  13.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: designware: rockchip: future-proof driver for more SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux driver has a struct rk_gmac_ops::regs_valid member to mark
whether regs is populated or not. Population happens via a GCC
extension that allows static initialization of flexible array
members. Replace that with a pointer that is checked, so future
SoC support just initializes it to NULL by default and avoid
the OOB access.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index dcf65c9ad4cc..a3859dce0c62 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -21,7 +21,7 @@ struct rk_gmac_ops {
 	void (*set_rmii_speed)(struct eqos *eqos, int speed);
 	void (*set_rgmii_speed)(struct eqos *eqos, int speed);
 	void (*integrated_phy_powerup)(struct eqos *eqos);
-	u32 regs[];
+	const u32 *regs;
 };
 
 struct eqos_rk_gmac {
@@ -175,7 +175,7 @@ static const struct rk_gmac_ops rk3568_ops = {
 	.set_to_rmii = rk3568_set_to_rmii,
 	.set_rmii_speed = rk3568_set_gmac_speed,
 	.set_rgmii_speed = rk3568_set_gmac_speed,
-	.regs = {
+	.regs = (u32 []) {
 		0xfe2a0000, /* gmac0 */
 		0xfe010000, /* gmac1 */
 		0x0, /* sentinel */
@@ -253,7 +253,7 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 
 	priv->ops = device_get_match_data(dev);
 
-	if (dev->num_resources > 0) {
+	if (dev->num_resources > 0 && priv->ops->regs) {
 		while (priv->ops->regs[i]) {
 			if (priv->ops->regs[i] == dev->resource[0].start) {
 				priv->bus_id = i;
-- 
2.30.2



