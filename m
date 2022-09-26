Delivery-date: Mon, 26 Sep 2022 10:19:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL1-00F9iy-1Q
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjKz-0001eF-KM
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XLtBzWSR1VQHGjz7vi7K3JiFm0c73ODUy6WVy2psnWw=; b=LQXB4xAGw7yIdCMfCpqEWgVs81
	oYQZTSZ0bC36H3XPk6dW6yJqZ/LAIUQEhmeHEkFpQZzl6Zq459UykaiMtGIA1ed8VOfsPlbXSqzIv
	DpEmGFlfA6C34P0D6l8X8HBWY+8vgPJexeH2yDW3GHakBE01/WixOJxJ/afXyl/cid79p4hXYsLAJ
	5Z0ZyLoHKxCbs/0p8TE685MxopOXxHe0qerdnRJW/M2gqqZ0n/R8QZ6oly+zHN/5s8L1DF/0b74Ev
	ZEQX+wY3MdQY/Q6pHzBRm/3oYieYQTh8ZE+yx+M87YftmNTEnBW0YqXJcvKBag4J4ILYnoskawC4f
	sf8IJopw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJL-0034DL-It; Mon, 26 Sep 2022 08:17:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347e-36
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001De-4M; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-002zk7-Qm; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2M-4Y; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:34 +0200
Message-Id: <20220926081740.76968-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_173779_F28950EB 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/8] driver: add dev_is_probed() helper function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add function to get device/driver probe state.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/driver.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 543287a276..f48e906fec 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -618,4 +618,9 @@ static inline void *dev_get_priv(struct device_d *dev)
 	return dev->priv;
 }
 
+static inline bool dev_is_probed(struct device_d *dev)
+{
+	return dev->driver ? true : false;
+}
+
 #endif /* DRIVER_H */
-- 
2.30.2



