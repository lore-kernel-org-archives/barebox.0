Delivery-date: Thu, 16 Mar 2023 14:43:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnsz-002jH5-NR
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 14:43:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnsz-0004u0-Ly
	for lore@pengutronix.de; Thu, 16 Mar 2023 14:43:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V4uSl58k0Uqbrz1qf/qy7NbN2WSptOioMjERyzlayac=; b=sFI/CJpzIMXsLKl3zMjkhOB8LK
	AobcnEfI62jnA2C+ifxLDSnWJkcc4u55XqzrA82pCIpye0fwKnVwZCbm7nXE7IimsSCzpzWJma5g6
	TC/Bj1shZFuxcZvf8B7bTOmsMeQMSo5ot+UqRhdka0oQHaT7SMMs8af65iTekzlhA4pxzaULT8ntv
	niOQRY0htL3aHxQEMH/8/ZYBfX0tVWYTvG7s1qNY1YrjyEdlRge5HqYurrp0nkABqaZhmzuiYERDJ
	oNU8w6kUgDHfPpZFwpJA7icZkJTW46Gccz6iZgvo3/QxzZ9Zp7qSa5D0OmLUBmxs3B/Pb3B4U12G/
	Y85z9m3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcns2-00GZGz-1o;
	Thu, 16 Mar 2023 13:42:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnrx-00GZFF-1I
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 13:42:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrw-0004cs-4u; Thu, 16 Mar 2023 14:42:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrv-004YsN-Gj; Thu, 16 Mar 2023 14:42:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnru-00H4Ue-Um; Thu, 16 Mar 2023 14:42:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Mar 2023 14:42:07 +0100
Message-Id: <20230316134209.4068801-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_064213_441686_56185C3F 
X-CRM114-Status: GOOD (  11.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/3] net: dsa: add adjust_link support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The required functionality is essential for cable hot plugging or
asynchronous link detection. In its current state, DSA will only operate
if the cable was connected prior to booting.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 4 ++--
 include/dsa.h     | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 793bbbb4f1..9c21564876 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -104,8 +104,8 @@ static int dsa_port_start(struct eth_device *edev)
 			return ret;
 	}
 
-	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index, NULL, 0,
-				 interface);
+	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index,
+				 ops->adjust_link, 0, interface);
 	if (ret)
 		return ret;
 
diff --git a/include/dsa.h b/include/dsa.h
index e823bac0a7..527941c269 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -55,6 +55,7 @@ struct dsa_switch_ops {
 
 	int (*phy_read)(struct dsa_switch *ds, int port, int regnum);
 	int (*phy_write)(struct dsa_switch *ds, int port, int regnum, u16 val);
+	void (*adjust_link)(struct eth_device *dev);
 };
 
 struct dsa_port {
-- 
2.30.2



