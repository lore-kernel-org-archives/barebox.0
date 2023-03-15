Delivery-date: Wed, 15 Mar 2023 15:37:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcSFg-001fEC-Qd
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 15:37:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcSFg-0001lS-RT
	for lore@pengutronix.de; Wed, 15 Mar 2023 15:37:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YqHohdZ/vsCsOfeU93QgTyAa3Zp0Skuhw8+clRI+h4I=; b=CTfm318CKbodtRA/nIkIK06ha6
	5j1N8VyhfySmlxzVtFixCIjqOnpK/u+Ehr5z4Dg7h9UK6VnGsJgmTs+1JZAHxgzd3uHLr8wnsq1Sx
	UbigScMMeGwNqTNA71BlJJmv5YCHfAH6IPNv/VfKIwx2f7LzFRVn5nV9tNwLoY4X3GJzcHrA3Xu8b
	Cai8EpK1q8IT0C5zMiQrKSgVE4aCslFT3kZmTdoM6Zx/rtuYGpysg4ZlbBKWz0lT7s5fixoLEqDHx
	M8fo6LdDHuPhdMuyLy/d8lhuAC9XTEkbovkWWueC3tKpJF45LeeeYOZ8HoyhFQsbGvFyLeqTdLPeR
	3PXt4mJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSE3-00Dd46-2p;
	Wed, 15 Mar 2023 14:35:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSE0-00Dd2P-0P
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 14:35:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pcSDt-0001Z5-Lo; Wed, 15 Mar 2023 15:35:25 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pcSDt-004KOV-2P; Wed, 15 Mar 2023 15:35:25 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pcSDs-006LVn-DF; Wed, 15 Mar 2023 15:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Mar 2023 15:35:22 +0100
Message-Id: <20230315143522.1512531-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_073532_163906_5664863C 
X-CRM114-Status: UNSURE (   9.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] net: dsa: abort registration when master is unresolvable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ds->edev_master is used in a lot places and if we can't populate,
because the Ethernet device wasn't found, we should abort instead of
crashing later on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 793bbbb4f18f..6a3b829e15a4 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -400,8 +400,11 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
 		}
 
 		master = of_parse_phandle(port, "ethernet", 0);
-		if (master)
-			dsa_switch_register_master(ds, port, master, reg);
+		if (master) {
+			ret = dsa_switch_register_master(ds, port, master, reg);
+			if (ret)
+				return ret;
+		}
 	}
 
 	/* Now we can register regular switch ports  */
-- 
2.30.2



