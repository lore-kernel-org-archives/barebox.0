Delivery-date: Fri, 13 Mar 2026 14:35:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fj-000Db0-2Y
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:23 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fS-0001P4-Hp
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZYcmPR76MfITQNFuiGTS6dvz2UZTOOt5EXKHbhuX2WA=; b=Ogwl3tyYwAob8FnBAiUW2ORb9r
	81IK3Blf8PTITCvoy+iMBcYfGzG02IcP/Uh25KVRYj/Adx8sqA1PS3a5FxyoegyXPVzHIuMin6DxZ
	g2coW2R9kvb/cKaGOfWHDFBPZkP4JGSrCWriK8uteDa8Q3F7aA2FudXh7Z67VrEuzX+h6+wPaP0zW
	Io+hRl2a1eMKExB1w0dtaJQsjEbWr15Qafs+Ff9jnZpHqHFCzea3TYzL+5OZh/hRdpn2jUHV7R3W6
	ca6/VbihCSvw1Kay/Xi/SEZA8c5e3HzJPcS19or+2TvG/a6sqoJnX8+Ct4iQKCFDhd4G+G4Mts1G1
	jj9yoNlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dp-00000000GlY-40qS;
	Fri, 13 Mar 2026 13:33:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000FoD-24rg
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZYcmPR76MfITQNFuiGTS6dvz2UZTOOt5EXKHbhuX2WA=; b=GP5Jl9MqWM/3kRQ5vnPngQtzHq
	TXtlTzUY2QQZLAlANPye3bYhZTElpO+aTtZhqGdb0H1CHgEfm043deW6ncT1AWyB89iEVOJbABAdS
	esRMbDLJETQDXldu6LZsODQaJq0Z1KRoGrw73d5SbZ6jNTWYB4PPDqMMe16IMSi8atjKOgkV+guLQ
	K5a+Vdwnyr641baAeggLlyalm7Ci/9uQlDhz9KQ9MO/kQsmHX0Y9a6tH+SZGN6zxIwvO+QENIB5le
	3F8kqTANySqLoo/Y7NMADMaROlq6ab+2ZDG34TsVxurVP7gmL6nwZeq3jq6r9rpBTBz6ZJKedXdaH
	Lx1oNkDA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-00000003OSh-1TgS
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006xf-Gg; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005VI-11;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-1AIy;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:07 +0100
Message-ID: <20260313132631.2257573-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_555400_86808820 
X-CRM114-Status: GOOD (  11.14  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 23/58] net: phy: mdio_bus: fix freeing of cdev name before devfs_remove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devfs_remove acces struct cdev::name to do an unlink on the path in
/dev. This leads to a use-after-free inside mdio_bus_remove.

Reorder the free after devfs_remove to fix this. This is the way that
other drivers in tree that have /free.*cdev(\.|->)name/ do it.

Issue was detected by KASAN being active during kernel boot.

(cherry picked from commit 0a67f4f35d64aa25318640ec2858c75f46d9a986)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260126104153.547505-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index a7eda3f84a11..1381f70f1cf8 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -610,8 +610,8 @@ static void mdio_bus_remove(struct device *_dev)
 	if (drv->remove)
 		drv->remove(dev);
 
-	free(dev->cdev.name);
 	devfs_remove(&dev->cdev);
+	free(dev->cdev.name);
 	bus->phy_map[dev->addr] = NULL;
 }
 
-- 
2.47.3



